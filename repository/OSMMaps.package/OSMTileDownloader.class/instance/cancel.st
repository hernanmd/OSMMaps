actions
cancel
	"Cancel the background download if running."

	workerProcess ifNotNil: [
			workerProcess terminate.
			workerProcess := nil ]