downloading
downloadAll
	"Download all tiles using the cache. Cached tiles return immediately; uncached tiles are downloaded one by one."

	tiles do: [ :tile |
			| form |
			form := cache formForTile: tile.
			pendingForms at: tile put: form.
			completedCount := completedCount + 1 ]