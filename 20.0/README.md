# How to build Odoo Enterprise Image

## update repositories
```
# update this repository
git pull --rebase
# update git enterprise repository
cd enterprise
git pull --rebase
cd ..
```

## edit tags in tags.env to update image tags and target
example:
```
# empty registry and namespace will create tags for local use
REGISTRY=ghcr.io/
NAMESPACE=mvi-group/
MAYOR=20
MINOR=0
BUILD=$(date '+%Y%m%d')
```

## execute build
```
./build.sh
```

## push to registry
```
docker login ghcr.io
docker push ghcr.io/mvi-group/odoo-ee --all-tags
docker logout
```
