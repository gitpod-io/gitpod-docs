# Gitpod Documentation

## Development
```
npm install
npm run serve
```

## Build 
```
npm install
npm run build 
npm run do-serve &
npm run check 
```
Cleanup: 
```
kill -9 `jobs -p "%npm run do-serve"`
```
## Publish

1. push contents to branch "published"
2. this will trigger an internal job that runs the build commands and makes the generated documentation available on https://docs.gitpod.io/
