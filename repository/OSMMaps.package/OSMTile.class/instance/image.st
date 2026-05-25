accessing
image
	"Answer the Form image for this tile, using the two-tier cache. Answer a Form"

	^ image ifNil: [ image := OSMTileCache default formForTile: self ]