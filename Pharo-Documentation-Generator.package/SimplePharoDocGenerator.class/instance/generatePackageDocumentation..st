generation
generatePackageDocumentation: aPackage
	"Documents aPackage and uses the documentation exporter to export it"
	(self documentPackage: aPackage) acceptDocumentationExporter: docExporter