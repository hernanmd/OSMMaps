projection
pixelsFromLatitude: latitude zoomLevel: zoomLevel
	"Convert latitude to pixel Y coordinate using Web Mercator projection. latitude - Number (degrees), zoomLevel - Integer"

	| latRad limit |
	limit := latitude min: self maxLatitude max: self minLatitude.
	latRad := limit degreesToRadians.
	^ 1.0 - ((latRad tan + (1.0 / latRad cos)) ln / Float pi) / 2.0
	  * (self maxPixelForZoomLevel: zoomLevel) asFloat