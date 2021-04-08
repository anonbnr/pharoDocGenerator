initialization
initialize
	"Initializes this documentation generator's exporter as a TranscriptDocumentationExporter (by default)"
	super initialize.
	docExporter := TranscriptDocumentationExporter new.