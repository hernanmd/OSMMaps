tests
testPixelsFromLatitudeZoomLevel
	"we cannot go out of bounds"

	self
		assert: (OSMMercator pixelsFromLatitude: 100 zoomLevel: 1)
		closeTo:
		(OSMMercator
			 pixelsFromLatitude: OSMMercator maxLatitude
			 zoomLevel: 1). "City of Mons -> lat: 50.45, lng: 3.95"
	self
		assert: (OSMMercator pixelsFromLatitude: 50.45 zoomLevel: 14)
		closeTo: 1.4142813143675001e6