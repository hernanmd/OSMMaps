projection
longitudeFromPixels: pixels zoomLevel: zoomLevel
	"Convert pixel X coordinate to longitude using Web Mercator inverse projection. pixels - Number, zoomLevel - Integer"

	^ 360 * pixels / (self maxPixelForZoomLevel: zoomLevel) - 180.0