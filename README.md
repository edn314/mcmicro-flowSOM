# mcmicro-flowSOM
An MCMICRO module for clustering cell types using the flowSOM algorithm.

## Example Usage
```
docker run --rm -v "$PWD":/data labsyspharm/mc-flowsom:1.0.1 python3 /app/cluster.py -i /data/unmicst-exemplar-001.csv -o /data/ -c
```

## Parameter Reference
```
usage: cluster.py [-h] -i INPUT [-o OUTPUT] [-m MARKERS] [-v] [-c] [-n NUM_METACLUSTERS] [--xdim XDIM] [--ydim YDIM] [-y CONFIG] [--force-transform] [--no-transform]

Cluster cell types using mcmicro marker expression data.

optional arguments:
  -h, --help            show this help message and exit
  -i INPUT, --input INPUT
                        Input CSV of mcmicro marker expression data for cells
  -o OUTPUT, --output OUTPUT
                        The directory to which output files will be saved
  -m MARKERS, --markers MARKERS
                        A text file with a marker on each line to specify which markers to use for clustering
  -v, --verbose         Flag to print out progress of script
  -c, --method          Include a column with the method name in the output files.
  -n NUM_METACLUSTERS, --num-metaclusters NUM_METACLUSTERS
                        The number of clusters for meta-clustering. Default is 25.
  --xdim XDIM           The number of neurons in the SOM in the x dimension. Default is 10.
  --ydim YDIM           The number of neurons in the SOM in the y dimension. Default is 10.
  -y CONFIG, --config CONFIG
                        A yaml config file that states whether the input data should be log/logicle transformed.
  --force-transform     Logicle transform the input data. If omitted, and --no-transform is omitted, logicle transform is only performed if the max value in the input data is >1000.
  --no-transform        Do not perform Logicle transformation on the input data. If omitted, and --force-transform is omitted, logicle transform is only performed if the max value in the input data is >1000.
```