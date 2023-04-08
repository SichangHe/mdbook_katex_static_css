cd mdbook
(
    start "download mdbook" cmd /C "curl -o mdbook.zip https://github.com/rust-lang/mdBook/releases/download/v0.4.28/mdbook-v0.4.28-x86_64-pc-windows-msvc.zip -O -J -L && tar -xf mdbook.zip"
    start "download katex" cmd /C "curl -o mdbook-katex.zip https://github.com/lzanini/mdbook-katex/releases/download/v0.3.13/mdbook-katex-v0.3.13-x86_64-pc-windows-msvc.zip -O -J -L && tar -xf mdbook-katex.zip"
) | pause