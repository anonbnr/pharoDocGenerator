generation
generateClassVariableDocumentation: aClassVariable
	"Documents aClassVariable and uses the documentation exporter to export it"
	 (self documentClassVariable: aClassVariable) acceptDocumentationExporter: docExporter.