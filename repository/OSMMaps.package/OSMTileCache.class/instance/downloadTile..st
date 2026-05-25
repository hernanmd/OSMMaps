downloading
downloadTile: aOSMTile
	"Download a tile from OSM and save to disk cache. aOSMTile - OSMTile"

	| form path url |
	url := aOSMTile source urlForTile: aOSMTile.
	form := ZnEasy getPng: url.
	self saveToDisk: form forTile: aOSMTile.
	^ form