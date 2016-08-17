# Oldtimer Markt Templates


## Verzeichnisstruktur

```
├── build             # Generierte statische Version
├── doc_build         # Generierte Dokumentation
├── docoloo           # Theme für Dokumentation
├── docs              # Quelldatein der Dokumentation
└── source            # Quelldateien 
    ├── fonts         # Schriftarten
    ├── images        # Bilder
    ├── javascripts   # Javascripts
    ├── layouts       # Grundgerüst von Seiten
    └── stylesheets   # Stylesheets
```


## Middleman

Die Quelldateien befinden sich im _/source_ Verzeichnis

- Server starten: `middleman s[erver]`
- Statische Version in _/build_ kompilieren: `middleman build`

## Dokumentation

Die Quelldateien der Dokumentation befinden sich im _/docs_ Verzeichnis. Zum Erstellen einer statischen Version
wird __mkdocs__ verwendet

### mkdocs installieren

Python und pip müssen installiert sein.

`pip install mkdocs`

### mkdocs Kurzanleitung

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
