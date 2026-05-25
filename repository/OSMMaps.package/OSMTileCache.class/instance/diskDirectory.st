accessing
diskDirectory
	"Answer the FileReference for the on-disk tile cache directory. Answer a FileReference"

	^ diskDirectory ifNil: [
		  diskDirectory := FileLocator temp / 'osm-tiles' ]