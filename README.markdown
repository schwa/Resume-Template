# RESUME

This repo shows how to generate html & pdf files from a mark down resume.

It uses pandoc to process the markdown file, but because pandoc is often quite painful to install (and can have a lot of dependencies) I run pandoc from within docker. I run all this from within VSCode using the "Task explorer" extension to make running Makefile more convenient.

See RESUME.markdown for a sample resume and the corresponding generated files within the `Output` directory.

## Instructions

1. Install homebrew, homebrew/bundler, and run `brew bundle` (alternatively just installer docker)
4. Install VS Code & optionally the recommended extensions (any text editor will do but this repository is setup to use VS Code)
5. Edit `RESUME.markdown`
6. Run `make all`

## Notes

Sample resume copied from https://github.com/mszep/pandoc_resume
