generation
generateInstanceMethodDocumentation: anInstanceMethod
	"Documents anInstanceMethod and uses the documentation exporter to export it"
	 (self documentInstanceMethod: anInstanceMethod) acceptDocumentationExporter: docExporter