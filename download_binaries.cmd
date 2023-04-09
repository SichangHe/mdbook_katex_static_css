(
    start "download mdbook" cmd /C "curl --create-dirs -o bin/mdbook.zip https://github.com/rust-lang/mdBook/releases/download/v0.4.28/mdbook-v0.4.28-x86_64-pc-windows-msvc.zip -O -J -L && cd bin && tar -xf mdbook.zip && del mdbook.zip"
    start "download katex" cmd /C "curl --create-dirs -o bin/mdbook-katex.zip https://github.com/lzanini/mdbook-katex/releases/download/v0.3.13/mdbook-katex-v0.3.13-x86_64-pc-windows-gnu.zip -O -J -L && cd bin && tar -xf mdbook-katex.zip && del mdbook-katex.zip"
) | pause
exit