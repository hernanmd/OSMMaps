initialization
initialize
	"Initialize the receiver."

	super initialize.
	tiles := OrderedCollection new.
	cache := OSMTileCache default.
	pendingForms := Dictionary new.
	completedCount := 0