instance creation
withLatitude: latitude longitude: longitude zoomLevel: zoomLevel
	"Create an OSMTile for the given geographic coordinates. latitude - Number (degrees), longitude - Number (degrees), zoomLevel - Integer"

	| rawX rawY tileSize |
	tileSize := 256.
	rawX := OSMMercator
		        pixelsFromLongitude: longitude
		        zoomLevel: zoomLevel.
	rawY := OSMMercator pixelsFromLatitude: latitude zoomLevel: zoomLevel.
	^ self new
		  x: (rawX / tileSize) truncated;
		  y: (rawY / tileSize) truncated;
		  zoomLevel: zoomLevel