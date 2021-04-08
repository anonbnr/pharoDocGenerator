generation
generateClassDocumentation: aClass
	"Documents aClass and uses the documentation exporter to export it"
	(self documentClass: aClass) acceptDocumentationExporter: docExporter.