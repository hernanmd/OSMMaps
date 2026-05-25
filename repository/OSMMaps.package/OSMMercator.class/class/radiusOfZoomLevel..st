constants
radiusOfZoomLevel: zoomLevel
	"Answer the radius of the earth in pixel space at the given zoom level. zoomLevel - Integer"

	^ self tileSize / (2 * Float pi) * (2 ** zoomLevel)