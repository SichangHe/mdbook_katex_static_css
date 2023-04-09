(
    start "download mdbook" cmd /C "curl --create-dirs -o bin/mdbook.zip https://github.com/rust-lang/mdBook/releases/download/v0.4.28/mdbook-v0.4.28-x86_64-pc-windows-msvc.zip -J -L && tar -xf bin/mdbook.zip -C bin && del bin\mdbook.zip"
    start "download katex" cmd /C "curl --create-dirs -o bin/mdbook-katex.zip https://github.com/lzanini/mdbook-katex/releases/download/v0.3.13/mdbook-katex-v0.3.13-x86_64-pc-windows-gnu.zip -J -L && tar -xf bin/mdbook-katex.zip -C bin && del bin\mdbook-katex.zip"
) | pause
exit