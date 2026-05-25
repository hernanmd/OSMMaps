private
saveToDisk: aForm forTile: aOSMTile
	"Save the Form image to disk cache. aForm - Form, aOSMTile - OSMTile"

	| path |
	path := self diskPathFor: aOSMTile.
	path parent exists ifFalse: [ path parent ensureCreateDirectory ].
	path binaryWriteStreamDo: [ :stream |
		PNGReadWriter putForm: aForm onStream: stream ]