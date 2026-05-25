Implements the Web Mercator projection (EPSG:3857) used by OpenStreetMap and most web mapping applications. 

It converts between geographic coordinates (latitude/longitude in degrees) and pixel coordinates at a given zoom level. My projection range is limited to +-85.05112877980659 degrees latitude. 

Provides class-side methods for: forward projection (lat/lng to pixels), inverse projection (pixels to lat/lng), and constants (max/min latitude, tile size, max pixels per zoom level).