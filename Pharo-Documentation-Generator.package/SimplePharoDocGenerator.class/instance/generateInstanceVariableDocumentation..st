generation
generateInstanceVariableDocumentation: anInstanceVariable
	"Documents anInstanceVariable and uses the documentation exporter to export it"
	 (self documentInstanceVariable: anInstanceVariable) acceptDocumentationExporter: docExporter