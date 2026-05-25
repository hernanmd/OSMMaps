private
formFromDisk: aOSMTile ifAbsent: aBlock
	"Answer the Form from disk cache or evaluate aBlock if not found. aOSMTile - OSMTile, aBlock - BlockClosure"

	| path |
	path := self diskPathFor: aOSMTile.
	path exists ifTrue: [
			hitCount := hitCount + 1.
			^ path binaryReadStreamDo: [ :stream |
				  PNGReadWriter formFromStream: stream ] ].
	^ aBlock value