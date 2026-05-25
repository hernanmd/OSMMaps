accessing
urlForTile: aOSMTile
	"Answer the ZnUrl for downloading the given tile image. aOSMTile - OSMTile"

	^ self baseURL
		  addPathSegment: aOSMTile zoomLevel asString;
		  addPathSegment: aOSMTile x asString;
		  addPathSegment: aOSMTile y asString , '.png'