# mcmicro-flowSOM
An MCMICRO module for clustering cell types using the flowSOM algorithm

## usage
```
docker run --rm -v "$PWD":/data myflow python3 /app/cluster.py -i /data/unmicst-2.csv -o /data/ -c
```