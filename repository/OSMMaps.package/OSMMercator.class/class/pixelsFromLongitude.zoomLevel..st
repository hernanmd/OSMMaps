projection
pixelsFromLongitude: longitude zoomLevel: zoomLevel
	"Convert longitude to pixel X coordinate using Mercator projection. longitude - Number (degrees), zoomLevel - Integer"

	^ longitude + 180.0 / 360.0
	  * (self maxPixelForZoomLevel: zoomLevel) asFloat