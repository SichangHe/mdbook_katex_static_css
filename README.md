# `mdbook-katex` Static CSS Example

## Steps in this repository using Python3

<details>
<summary>
Download CSS and fonts by running the Python script download_static_css.py
at the root of this repository.
</summary>

Python 3.5 or higher version is required.

Depending on your system, you may need to use `python` or `python3` for the command.

```shell
$ python3 download_static_css.py
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/katex.min.css to katex.min.css
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_AMS-Regular.woff2 to theme/fonts/KaTeX_AMS-Regular.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_AMS-Regular.woff to theme/fonts/KaTeX_AMS-Regular.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_AMS-Regular.ttf to theme/fonts/KaTeX_AMS-Regular.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Caligraphic-Bold.woff2 to theme/fonts/KaTeX_Caligraphic-Bold.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Caligraphic-Bold.woff to theme/fonts/KaTeX_Caligraphic-Bold.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Caligraphic-Bold.ttf to theme/fonts/KaTeX_Caligraphic-Bold.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Caligraphic-Regular.woff2 to theme/fonts/KaTeX_Caligraphic-Regular.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Caligraphic-Regular.woff to theme/fonts/KaTeX_Caligraphic-Regular.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Caligraphic-Regular.ttf to theme/fonts/KaTeX_Caligraphic-Regular.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Fraktur-Bold.woff2 to theme/fonts/KaTeX_Fraktur-Bold.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Fraktur-Bold.woff to theme/fonts/KaTeX_Fraktur-Bold.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Fraktur-Bold.ttf to theme/fonts/KaTeX_Fraktur-Bold.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Fraktur-Regular.woff2 to theme/fonts/KaTeX_Fraktur-Regular.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Fraktur-Regular.woff to theme/fonts/KaTeX_Fraktur-Regular.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Fraktur-Regular.ttf to theme/fonts/KaTeX_Fraktur-Regular.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Main-Bold.woff2 to theme/fonts/KaTeX_Main-Bold.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Main-Bold.woff to theme/fonts/KaTeX_Main-Bold.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Main-Bold.ttf to theme/fonts/KaTeX_Main-Bold.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Main-BoldItalic.woff2 to theme/fonts/KaTeX_Main-BoldItalic.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Main-BoldItalic.woff to theme/fonts/KaTeX_Main-BoldItalic.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Main-BoldItalic.ttf to theme/fonts/KaTeX_Main-BoldItalic.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Main-Italic.woff2 to theme/fonts/KaTeX_Main-Italic.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Main-Italic.woff to theme/fonts/KaTeX_Main-Italic.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Main-Italic.ttf to theme/fonts/KaTeX_Main-Italic.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Main-Regular.woff2 to theme/fonts/KaTeX_Main-Regular.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Main-Regular.woff to theme/fonts/KaTeX_Main-Regular.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Main-Regular.ttf to theme/fonts/KaTeX_Main-Regular.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Math-BoldItalic.woff2 to theme/fonts/KaTeX_Math-BoldItalic.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Math-BoldItalic.woff to theme/fonts/KaTeX_Math-BoldItalic.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Math-BoldItalic.ttf to theme/fonts/KaTeX_Math-BoldItalic.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Math-Italic.woff2 to theme/fonts/KaTeX_Math-Italic.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Math-Italic.woff to theme/fonts/KaTeX_Math-Italic.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Math-Italic.ttf to theme/fonts/KaTeX_Math-Italic.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_SansSerif-Bold.woff2 to theme/fonts/KaTeX_SansSerif-Bold.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_SansSerif-Bold.woff to theme/fonts/KaTeX_SansSerif-Bold.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_SansSerif-Bold.ttf to theme/fonts/KaTeX_SansSerif-Bold.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_SansSerif-Italic.woff2 to theme/fonts/KaTeX_SansSerif-Italic.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_SansSerif-Italic.woff to theme/fonts/KaTeX_SansSerif-Italic.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_SansSerif-Italic.ttf to theme/fonts/KaTeX_SansSerif-Italic.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_SansSerif-Regular.woff2 to theme/fonts/KaTeX_SansSerif-Regular.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_SansSerif-Regular.woff to theme/fonts/KaTeX_SansSerif-Regular.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_SansSerif-Regular.ttf to theme/fonts/KaTeX_SansSerif-Regular.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Script-Regular.woff2 to theme/fonts/KaTeX_Script-Regular.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Script-Regular.woff to theme/fonts/KaTeX_Script-Regular.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Script-Regular.ttf to theme/fonts/KaTeX_Script-Regular.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Size1-Regular.woff2 to theme/fonts/KaTeX_Size1-Regular.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Size1-Regular.woff to theme/fonts/KaTeX_Size1-Regular.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Size1-Regular.ttf to theme/fonts/KaTeX_Size1-Regular.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Size2-Regular.woff2 to theme/fonts/KaTeX_Size2-Regular.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Size2-Regular.woff to theme/fonts/KaTeX_Size2-Regular.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Size2-Regular.ttf to theme/fonts/KaTeX_Size2-Regular.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Size3-Regular.woff2 to theme/fonts/KaTeX_Size3-Regular.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Size3-Regular.woff to theme/fonts/KaTeX_Size3-Regular.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Size3-Regular.ttf to theme/fonts/KaTeX_Size3-Regular.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Size4-Regular.woff2 to theme/fonts/KaTeX_Size4-Regular.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Size4-Regular.woff to theme/fonts/KaTeX_Size4-Regular.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Size4-Regular.ttf to theme/fonts/KaTeX_Size4-Regular.ttf
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Typewriter-Regular.woff2 to theme/fonts/KaTeX_Typewriter-Regular.woff2
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Typewriter-Regular.woff to theme/fonts/KaTeX_Typewriter-Regular.woff
Downloading from https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/fonts/KaTeX_Typewriter-Regular.ttf to theme/fonts/KaTeX_Typewriter-Regular.ttf
```

</details>

Build the book using `mdbook build`.

## Steps for your repository using Python3

1. Copy `download_static_css.py` in this repository to the root of your mdBook project.
1. Run the above script using Python 3.5 or a higher version to download the
    CSS and fonts.
1. Include `katex.min.css` as additional CSS in `book.toml`:

    ```toml
    [output.html]
    # …
    additional-css = ["katex.min.css"]
    ```

1. (Optional) ignore the KaTeX CSS and fonts in `.gitignore`:

    ```gitignore
    katex.min.css
    theme/fonts/KaTeX_*.*
    ```

1. (Optional) Set up GitHub CI and GitHub Pages.
    - Check out `.github/workflows/deploy.yml` for a working example.
    - To enable Git pushes in CI,
        go to Settings > Code and automation > Actions > General > Workflow permissions,
        choose `Read and write permissions`, and save.
    - To enable GitHub Pages, go to Settings > Code and automation > Pages.

## Solution using a Rust executable

Replace the first two steps in [Steps for your repository using Python3](#steps-for-your-repository-using-python3) with:

1. Install [`mdbook_katex_css_download`](https://github.com/SichangHe/mdbook_katex_css_download).
1. Run the above executable at the root of your mdBook project.

## Windows setup using VBScript

1. Clone the repository on Windows
1. Run `build.vbs` to build the book.
    It downloads these automatically if they are not present:
    - The mdbook and `mdbook-katex` binary executables.
    - KaTeX CSS and fonts.
