initialization
initialize
	"Initialize the receiver with default values."

	super initialize.
	memoryCache := LRUCache new maximumWeight: 256.
	hitCount := 0.
	missCount := 0