examples
smallExample
	"Open a Roassal3 canvas showing a small OSM map (radius 3 = 7x7 tiles). self smallExample"
	<example>

	| cityOfMons radius tiles canvas shapes pending |
	cityOfMons := OSMTile
		              withLatitude: 50.45
		              longitude: 3.95
		              zoomLevel: 14.
	radius := 3.
	tiles := cityOfMons tilesAround: radius.
	canvas := RSCanvas new.
	canvas @ RSDraggableCanvasInteraction.
	canvas @ RSCanvasController new.
	pending := ColorForm extent: 256 @ 256 depth: 32.
	pending fillColor: Color veryLightGray.
	shapes := (1 to: tiles size)
		          collect: [ :index |
				          RSBitmap new
					          form: pending;
					          model: index;
					          yourself ]
		          as: RSGroup.
	canvas addAll: shapes.
	RSGridLayout new
		lineItemsCount: radius * 2 + 1;
		gapSize: 0;
		on: shapes.
	canvas camera zoomToFit.
	canvas openWithTitle: 'Mons (small) - OpenStreetMap'.
	[
		tiles withIndexDo: [ :tile :index |
				| form |
				form := OSMTileCache default formForTile: tile.
				(shapes at: index) form: form.
				canvas signalUpdate ] ] forkAt: Processor userBackgroundPriority