Cache for the OpenStreetMap tile images in a two-tier cache: 

- An in-memory LRU cache for fast repeated access and 
- An on-disk cache for persistence across sessions. 

It eliminates redundant downloads: a tile already in memory or on disk is never re-downloaded. 

It tracks hit/miss statistics and support cache clearing. 

Access it via the singleton: `OSMTileCache default`. 

The disk cache lives in the temp directory under `osm-tiles/`, organized as zoom/x/y.png matching the OSM URL structure.