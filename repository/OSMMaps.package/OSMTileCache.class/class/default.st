accessing
default
	"Answer the singleton OSMTileCache instance. Answer an OSMTileCache"

	^ defaultInstance ifNil: [ defaultInstance := self new ]