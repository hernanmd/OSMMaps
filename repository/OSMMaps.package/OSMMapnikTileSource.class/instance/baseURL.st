accessing
baseURL
	"Answer the base ZnUrl for the OSM Mapnik tile server using round-robin server selection. Answer a ZnUrl"

	^ ZnUrl fromString:
		  'https://' , self nextServer , '.tile.openstreetmap.org'