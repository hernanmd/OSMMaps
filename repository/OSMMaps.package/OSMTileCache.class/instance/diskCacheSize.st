statistics
diskCacheSize
	"Answer the total disk cache size in bytes. Answer an Integer"

	self diskDirectory exists ifFalse: [ ^ 0 ].
	^ self diskDirectory allFiles
		  inject: 0
		  into: [ :sum :f | sum + f size ]