# reth_docker

## Go to the PowerShell ->

`cd C:\Users\<user>\reth_docker\docker`

`dir`
--->    Dockerfile
        reth-data

## Make an Image in docker ->
Start Build an Docker Named (reth-archive)

`docker build -t reth-archive .`

## Run Docker for Download Archive Node ->

```powershell
docker run -d `
  --name reth-archive `
  -p 8545:8545 `
  -p 8546:8546 `
  -p 30303:30303 `
  -p 30303:30303/udp `
  -v ${PWD}\reth-data:/data/reth `
  reth-archive
```

## Check if Docker is running ->

`docker ps`

and see Log data of eth node

` docker logs -f reth-archive`
