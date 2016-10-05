# Middleman Templates


## Directory structure

```
├── build             # compiled static version
├── doc_build         # compiled documentation 
├── docoloo           # theme for documentation
├── docs              # documentation source files
└── source            # project source files
    ├── fonts         # fonts
    ├── images        # images
    ├── javascripts   # javascript
    ├── layouts       # page layout
    └── stylesheets   # stylesheets
```


## Middleman

Source goes into the _/source_ directory.

- Start local web-server: `middleman s[erver]`
- compile to _/build_ directory: `middleman build`

## Documentation

Source code for documentation is placed inside the _/docs_ directory. 

### Instalk mkdocs

Python and pip must be instaled on your system.

`pip install mkdocs`

### mkdocs quickstart

```
Usage: mkdocs [OPTIONS] COMMAND [ARGS]...

  MkDocs - Project documentation with Markdown.

Options:
  -V, --version  Show the version and exit.
  -q, --quiet    Silence warnings
  -v, --verbose  Enable verbose output
  -h, --help     Show this message and exit.

Commands:
  build      Build the MkDocs documentation
  gh-deploy  Deploy your documentation to GitHub Pages
  json       Build the MkDocs documentation to JSON files...
  new        Create a new MkDocs project
  serve      Run the builtin development server
```
