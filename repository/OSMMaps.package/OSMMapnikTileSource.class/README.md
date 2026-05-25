Provides the OpenStreetMap Mapnik tile source. It rotates across a/b/c tile servers to enable parallel HTTP connections as recommended by OSM. Is sets a compliant User-Agent header. The tile size is 256 pixels. 

See `OSMTileCache` for caching and `OSMTileDownloader` for batch fetching.