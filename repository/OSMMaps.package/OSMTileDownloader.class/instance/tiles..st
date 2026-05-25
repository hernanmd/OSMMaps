accessing
tiles: aCollection
	"Set the collection of OSMTile instances to download. aCollection - OrderedCollection of OSMTile"

	tiles := aCollection.
	pendingForms := Dictionary new