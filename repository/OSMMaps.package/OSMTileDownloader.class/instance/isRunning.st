testing
isRunning
	"Answer whether a background download is in progress."

	^ workerProcess
		  ifNil: [ false ]
		  ifNotNil: [ workerProcess isRunning ]