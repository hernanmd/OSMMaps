statistics
cachedTileCount
	"Answer the number of tiles cached on disk. Answer an Integer"

	self diskDirectory exists ifFalse: [ ^ 0 ].
	^ (self diskDirectory allFiles select: [ :f | f extension = 'png' ])
		  size