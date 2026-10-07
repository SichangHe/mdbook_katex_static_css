(
    start "download mdbook" cmd /C "curl --create-dirs -o bin/mdbook.zip https://github.com/rust-lang/mdBook/releases/download/v0.5.4/mdbook-v0.5.4-x86_64-pc-windows-msvc.zip -J -L && tar -xf bin/mdbook.zip -C bin && del bin\mdbook.zip"
    start "download katex" cmd /C "cargo install --git https://github.com/SichangHe/mdbook-katex.git --rev f623f031d705ec96e5f747b8c3a910ef1a32734b --locked --root . --force"
) | pause
exit
