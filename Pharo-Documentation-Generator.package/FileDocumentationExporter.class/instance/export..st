export
export: aDocumentation
	"Exports the content of aDocumentation into a file"
	filePath asFileReference writeStreamDo: [ :stream | 
		stream nextPutAll: (aDocumentation content)
	]