projection
falseNorthingForZoomLevel: zoomLevel
	"Answer the false northing offset for the Web Mercator projection. zoomLevel - Integer"

	^ -1 / 2 * (self maxPixelForZoomLevel: zoomLevel)