#!/bin/bash

dgraph bulk -f /backup/dgraph.rdf -s /backup/dgraph.schema --map_shards=4 --reduce_shards=1 --http server:8080 --zero=zero:5080 && dgraph alpha --my=server:7080 --lru_mb=2048 --zero=zero:5080
