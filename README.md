# Magmapool Website

Die Webseite basiert auf dem Middleman Framework

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

Dadurch wird ein Verzeichnis **/build/** angelegt, in dem die kompilierten Dateen zu finden sind.
