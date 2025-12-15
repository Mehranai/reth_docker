# reth_docker

## Go to the PowerShell ->

    **cd C:\Users\<user>\reth_docker\docker**

    dir --->    Dockerfile
                reth-data

## Make an Image in docker ->

    **docker build -t reth-archive .**

    // Start Downloading Archive Node

## Run ETH Node ->

```powershell
docker run -d `
  --name reth-archive `
  -p 8545:8545 `
  -p 8546:8546 `
  -p 30303:30303 `
  -p 30303:30303/udp `
  -v ${PWD}\reth-data:/data/reth `
  reth-archive