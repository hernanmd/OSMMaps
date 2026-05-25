querying
tilesAround: radius
	"Answer all OSMTile instances surrounding the receiver within the given radius. radius - Integer (number of tiles in each direction)"

	| neighbourhood startingX startingY |
	startingX := x - radius max: 0.
	startingY := y - radius max: 0.
	self flag: #todo.
	neighbourhood := OrderedCollection new.
	(startingY to: y + radius) do: [ :yIndex |
			(startingX to: x + radius) do: [ :xIndex |
					neighbourhood add: (OSMTile new
							 x: xIndex;
							 y: yIndex;
							 zoomLevel: zoomLevel) ] ].
	^ neighbourhood