constants
maxPixelForZoomLevel: zoomLevel
	"Answer the maximum pixel coordinate at the given zoom level. zoomLevel - Integer"

	^ self tileSize * (2 ** zoomLevel)