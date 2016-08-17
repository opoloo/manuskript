# Opoloo Middleman template

## Middleman Installation

Siehe https://github.com/middleman/middleman/blob/master/README.md

## Deployment

**Notice:** Add your publickey to the ~/.ssh/authorized_keys file on the magmapool server if you want to be able to connect via pubkey authentication.

**IMPORTANT**: _/config/deploy.rb_ und _/config/deploy/*.rb_ anpassen!

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
