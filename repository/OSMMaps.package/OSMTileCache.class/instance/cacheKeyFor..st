private
cacheKeyFor: aOSMTile
	"Answer a unique cache key String for the given tile. aOSMTile - OSMTile"

	^ aOSMTile zoomLevel asString , '/' , aOSMTile x asString , '/'
	  , aOSMTile y asString