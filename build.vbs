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
   CDNROOT = "https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/"
   CSSPATH = "katex.min.css"
   CURLCMD = "curl " & CDNROOT & CSSPATH & " -O -J -L"
   result = CreateObject("Wscript.Shell").Run(CURLCMD,1,True)
   Set objFileToRead = fso.OpenTextFile("./" & CSSPATH,1)
   strFileText = objFileToRead.ReadAll()
   objFileToRead.Close
   Set objFileToRead = Nothing
   Set re = New RegExp
   With re
   .Pattern    = "url\((fonts\/[^()]+)\)"
   .Global = True
   .IgnoreCase = True
   End With
   Set colMatch = re.Execute(strFileText)
   For each objMatch  in colMatch
      namelen = Len(objMatch.Value)
      filename = Mid(objMatch.Value, 5,nameLen-5)
      CURLCMD = "curl -o theme/" & filename & " " & CDNROOT & filename & " -O -J -L"
      result = CreateObject("Wscript.Shell").Run(CURLCMD,0)
   Next 
End If

' run mdbook init if no book.toml
If fso.FileExists("book.toml") Then
Else
   result = CreateObject("Wscript.Shell").Run( folder & "/bin/mdbook init" & " --ignore=none --title=''")
End If

' build and open book
result = CreateObject("Wscript.Shell").Run( folder & "/bin/mdbook build" & " --open")