CDNROOT = "https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/"
CSSPATH = "katex.min.css"
CFGPATH = "bin/config.txt"

Dim fso : Set fso = CreateObject("Scripting.FileSystemObject")
Dim wsh : Set wsh = CreateObject("Wscript.Shell")

    ' Step 1: download katex.min.css
    wsh.Run "curl " & CDNROOT & CSSPATH & " -O -J -L" , 0 , 1

    ' Step 2: list the assets in config.txt
    Dim ColMatch

        ' build list of urls to download
        Dim str
            ' read content of katex.min.css
            Set css = fso.OpenTextFile("./" & CSSPATH, 1)
                str = css.ReadAll()
                css.Close
            Set css = Nothing

            ' build a regex object to match "url(*)"
            Set rgx = New RegExp
                With rgx
                    .Pattern    = "url\((fonts\/[^()]+)\)"
                    .Global = True
                    .IgnoreCase = True
                End With
                Set colMatch = rgx.Execute(str)
            Set rgx = Nothing
        Set str = Nothing

        ' write list to file
        Set cfg = fso.OpenTextFile( CFGPATH , 8 , True )
            For each o in colMatch
                n = Len(o.Value)
                f = Mid(o.Value, 5,n-5)
                cfg.WriteLine("url=" & CDNROOT & f)
                cfg.WriteLine("output=""theme/" & f & """" )
            Next 
            cfg.Close
        Set cfg = Nothing 

    Set ColMatch = Nothing

    ' Step 3: download the assets
    wsh.Run "curl --create-dirs --parallel --config " & CFGPATH , 1 , 1

Set wsh = Nothing
Set fso = Nothing