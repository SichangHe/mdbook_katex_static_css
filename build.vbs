Dim fso : Set fso = CreateObject("Scripting.FileSystemObject")
Dim wsh : Set wsh = CreateObject("Wscript.Shell")

haveExe = False
haveCSS = False

' download mdbook and mdbook-katex if no executable
If fso.FileExists("bin/mdbook.exe") AND fso.FileExists("bin/mdbook-katex.exe") Then
   haveExe = True
End If

' download katex theme if not found
If fso.FileExists("katex.min.css") AND fso.FolderExists("theme/fonts") Then
   haveCSS = True
End If

If haveExe AND haveCSS Then
Else
   If haveExe Then
      wsh.Run "download_static_css.vbs" , 0 , 1
   Else
      If haveCSS Then
         wsh.Run "download_binaries.cmd" , 0 , 1
      Else
         wsh.Run "cmd /c ""(start /min .\download_binaries.cmd & start .\download_static_css.vbs)|pause""" , 0 , 1
      End If
   End If
End If

' run mdbook init if no book.toml
If fso.FileExists("book.toml") Then
Else
   If fso.FileExists(".gitignore") Then
      init = "bin\mdbook init --title='' --ignore=none"
      miss = False
   Else
      init = "bin\mdbook init --title='' --ignore=git"
      miss = True
   End If
   wsh.Run init , 1 , 1
   If miss Then
      Set cfg = fso.OpenTextFile( ".gitignore" , 8 , True )
      cfg.WriteLine("bin")
      cfg.WriteLine("katex.min.css")
      cfg.WriteLine("theme/fonts/KaTeX_*.*")
      cfg.Close
      Set cfg = Nothing
   End If
End If

' build and open book
wsh.Run "bin\mdbook build" & " --open"