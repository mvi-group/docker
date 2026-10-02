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
REGISTRY=dcr.mvi-group.com/
NAMESPACE=mvi/
MAYOR=19
MINOR=0
BUILD=$(date '+%Y%m%d')
```

## execute build
```
./build.sh
```

## push to registry
```
docker login dcr.mvi-group.com
docker push dcr.mvi-group.com/mvi/odoo-ee --all-tags
docker logout
```
