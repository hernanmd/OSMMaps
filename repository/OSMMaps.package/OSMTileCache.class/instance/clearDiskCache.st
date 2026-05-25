maintenance
clearDiskCache
	"Remove all cached tile images from disk."

	self diskDirectory exists ifTrue: [ self diskDirectory deleteAll ]