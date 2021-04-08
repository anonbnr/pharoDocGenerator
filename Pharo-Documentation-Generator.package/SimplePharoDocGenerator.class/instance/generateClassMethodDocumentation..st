generation
generateClassMethodDocumentation: aClassMethod
	"Documents aClassMethod and uses the documentation exporter to export it"
	 (self documentClassMethod: aClassMethod) acceptDocumentationExporter: docExporter.