private
diskPathFor: aOSMTile
	"Answer the FileReference for a tile on disk. aOSMTile - OSMTile"

	^ self diskDirectory / aOSMTile zoomLevel asString
	  / aOSMTile x asString / (aOSMTile y asString , '.png')