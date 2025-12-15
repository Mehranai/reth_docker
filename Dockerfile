FROM ghcr.io/paradigmxyz/reth:latest

VOLUME ["/data/reth"]

EXPOSE 8545 8546 30303 30303/udp

CMD ["node","--datadir","/data/reth","--full","--archive","--http","--ws","--http.api","all","--ws.api","all"]