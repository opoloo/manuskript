# Opoloo Middleman template

## Features

- Automated deployment
- Multiple languages (i18n)
- Integrated documentation (mkdocs)
- Automated image optimization
- SASS/SCSS, Coffee and Sprockets support

## Configuration

1. Clone: `git clone git@github.com:opoloo/middleman-template.git <projectname>`
2. Adjust the following files for a new project:
  - _/config/deploy.rb_ 
  - _/config/deploy/*.rb_
  - _mkdocs.yml_

## Middleman Installation

See https://github.com/middleman/middleman/blob/master/README.md


## Start local server

```
middleman server
```

## Compile static website

```
middleman build
```

The compiled result resides inside the _/build/_ directory.

## Documentation

- Documentation sources reside inside the _/docs_ directory
- Supported format: Markdown

### Build documentation

The following command builds a static version inside the */doc_build* directory:

`mkdocs build`

### Live preview

Start a local development server to live-preview the generated documentation files:

`mkdocs serve`

### Deploy documentation

Deploy the documentation to github pages:

`mkdocs gh-deploy -c`

## Deployment

**Notice:** Add your publickey to the *~/.ssh/authorized_keys* file on the server if you want to be able to connect via pubkey authentication.


```
# staging
cap staging deploy

# production
cap production deploy
```


### Rollback to previous release

```
cap [production|staging] deploy:rollback
```
