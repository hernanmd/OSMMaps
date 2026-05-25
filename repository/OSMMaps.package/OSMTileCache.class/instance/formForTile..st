caching
formForTile: aOSMTile
	"Answer the Form image for the tile, checking memory cache then disk cache then downloading. aOSMTile - OSMTile"

	| key |
	key := self cacheKeyFor: aOSMTile.
	(memoryCache includesKey: key) ifTrue: [
			hitCount := hitCount + 1.
			^ memoryCache at: key ].
	^ memoryCache at: key ifAbsentPut: [
			  self formFromDisk: aOSMTile ifAbsent: [
					  missCount := missCount + 1.
					  self downloadTile: aOSMTile ] ]