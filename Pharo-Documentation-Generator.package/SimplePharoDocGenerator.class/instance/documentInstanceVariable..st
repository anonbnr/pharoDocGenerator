documentation
documentInstanceVariable: anInstanceVariable
	"Generates a documentation for anInstanceVariable"
	|doc|
	doc := AttributeDocumentation new.
	doc content: anInstanceVariable name asString.
	^ doc.