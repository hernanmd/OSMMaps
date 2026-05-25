statistics
hitRate
	"Answer the cache hit rate as a Float between 0 and 1. Answer a Float"

	^ hitCount + missCount = 0
		  ifTrue: [ 0.0 ]
		  ifFalse: [ hitCount / (hitCount + missCount) asFloat ]