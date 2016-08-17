# Opoloo Middleman template

## Configuration

1. Clone: git clone git@github.com:opoloo/middleman-template.git `<projectname>`
2. Adjust the following files for a new project:
  - _/config/deploy.rb_ 
  - _/config/deploy/*.rb_
  - _mkdocs.yml_

## Middleman Installation

Siehe https://github.com/middleman/middleman/blob/master/README.md

## Deployment

**Notice:** Add your publickey to the ~/.ssh/authorized_keys file on the magmapool server if you want to be able to connect via pubkey authentication.


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


## Lokalen Server starten

```
middleman server
```

## Statische Version kompilieren

```
middleman build
```

Dadurch wird ein Verzeichnis **/build/** angelegt, in dem die kompilierten Dateien zu finden sind.
