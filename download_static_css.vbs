Option Explicit
Dim CDNROOT : CDNROOT = "https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/"
Dim CSSPATH : CSSPATH = "katex.min.css"
Dim CFGPATH : CFGPATH = "temp.txt"

Dim fso : Set fso = CreateObject("Scripting.FileSystemObject")
Dim wsh : Set wsh = CreateObject("Wscript.Shell")

' Step 1: download katex.min.css
wsh.Run "curl " & CDNROOT & CSSPATH & " -O -J -L" , 0 , 1

' Step 2: list the assets in temp.txt
WriteCfg CFGPATH , MakeCfg("./" & CSSPATH)

' Step 3: download the assets
wsh.Run "curl --create-dirs --parallel --config " & CFGPATH , 1 , 1

' Step 4: delete temp.txt
fso.DeleteFile(CFGPATH)

Set wsh = Nothing
Set fso = Nothing

Function MakeCfg(path)
    Dim css : Set css = fso.OpenTextFile(path, 1)
    Dim str : str = css.ReadAll()
    css.Close
    Set css = Nothing

    Dim rgx : Set rgx = New RegExp
    With rgx
        .Pattern = "url\((fonts\/[^()]+)\)"
        .Global = True
        .IgnoreCase = True
    End With
    Dim o , txt : txt = ""
    For each o in rgx.Execute(str)
        Dim n : n = Len(o.Value)
        Dim f : f = Mid(o.Value, 5,n-5)
        txt = txt & "url=" & CDNROOT & f 
        txt = txt & vbCrLf
        txt = txt & "output=""theme/" & f & """" 
        txt = txt & vbCrLf
    Next 
    Set rgx = Nothing

  MakeCfg = txt
End Function

Sub WriteCfg(path,txt)
    Dim cfg : Set cfg = fso.OpenTextFile( path , 8 , True )
        cfg.Write(txt)
        cfg.Close
    Set cfg = Nothing 
End Sub