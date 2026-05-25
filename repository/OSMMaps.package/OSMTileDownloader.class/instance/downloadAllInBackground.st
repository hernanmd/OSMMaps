downloading
downloadAllInBackground
	"Download all tiles in a background process. Returns immediately; call waitForCompletion to block until done."

	workerProcess := [ self downloadAll ] forkAt:
		                 Processor userBackgroundPriority