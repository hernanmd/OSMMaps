accessing
nextServer
	"Answer the next server subdomain String by round-robin rotation."

	serverIndex := serverIndex + 1 rem: self servers size.
	serverIndex = 0 ifTrue: [ serverIndex := self servers size ].
	^ self servers at: serverIndex