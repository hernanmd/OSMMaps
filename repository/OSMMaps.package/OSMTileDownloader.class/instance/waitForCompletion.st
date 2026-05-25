downloading
waitForCompletion
	"Wait for the background download process to finish."

	workerProcess ifNotNil: [ workerProcess waitForCompletion ]