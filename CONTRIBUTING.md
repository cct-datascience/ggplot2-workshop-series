## How to add new workshops

1.  Create a folder for your workshop inside the current year folder

2.  Inside that folder create `notes.qmd,` `slides.qmd`, etc. (whatever materials you need)

    -   for slides.qmd use `format: uaz-revealjs` to inherit defaults in `_quarto.yml`

3.  Create an index.qmd to be a landing page for your workshop.

    -   Include a link to the notes `[notes](notes.qmd)` and embed the slides with `{{< revealjs slides.html >}}`.
    -   Include workshop description, dates, etc.
    -   Use `format: html` and include the workshop title in the YAML header

4.  Edit `_quarto.yml` to add your workshop page.
    If you want the title in the sidebar to be different from the title in your index.qmd, you can supply it like so:

    ```{=yaml}
    website:
      sidebar:
        contents:
          section: "2023"
            - "a different, perhaps shorter title"
              href: "2023/my-workshop-with-a-long-title/index.qmd"
    ```

5.  Run `quarto render` locally before pushing to GitHub
