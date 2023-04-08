Set fso = CreateObject("Scripting.FileSystemObject")
folder = fso.GetParentFolderName(Wscript.ScriptFullName)

' download mdbook and mdbook-katex if no executable
If fso.FileExists("bin\mdbook.exe") AND fso.FileExists("bin\mdbook-katex.exe") Then
Else
   result = CreateObject("Wscript.Shell").Run(".\bin\download",1,1)
End If

' download katex theme if not found
If fso.FileExists("katex.min.css") Then
Else
   result = CreateObject("Wscript.Shell").Run("download_static_css.vbs",1,1)
End If

' run mdbook init if no book.toml
If fso.FileExists("book.toml") Then
Else
   result = CreateObject("Wscript.Shell").Run( folder & "/bin/mdbook init" & " --ignore=none --title=''")
End If

' build and open book
result = CreateObject("Wscript.Shell").Run( folder & "/bin/mdbook build" & " --open")