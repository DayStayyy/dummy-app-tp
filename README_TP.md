# Résolution Tp

## Build de l'image

```bash
docker build -t tp .
```

## Run de l'image

```bash
docker run -p 1337:1337 --hostname mydocker tp
```

## Test de l'application

```bash
curl http://localhost:1337
```
