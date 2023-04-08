Dim fso : Set fso = CreateObject("Scripting.FileSystemObject")
Dim wsh : Set wsh = CreateObject("Wscript.Shell")

' download mdbook and mdbook-katex if no executable
If fso.FileExists("bin/mdbook.exe") AND fso.FileExists("bin/mdbook-katex.exe") Then
Else
   wsh.Run "download_binaries.cmd" , 0 , 1
End If

' download katex theme if not found
If fso.FileExists("katex.min.css") Then
Else
   wsh.Run "download_static_css.vbs" , 0 , 1
End If

' run mdbook init if no book.toml
If fso.FileExists("book.toml") Then
Else
   wsh.Run "bin\mdbook init" & " --ignore=none --title=''" , 1 , 1
End If

' build and open book
wsh.Run "bin\mdbook build" & " --open"