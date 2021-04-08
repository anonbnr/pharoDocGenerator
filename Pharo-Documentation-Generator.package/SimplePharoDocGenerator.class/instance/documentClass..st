documentation
documentClass: aClass
	"Generates a documentation for aClass"
	| doc |
	doc := ClassDocumentation new.
	String streamContents: [ :stream |
		"Basic class info"
		self documentClassBasicInfo: aClass with: stream.
		
		"Instance variables"
		self documentInstanceVariables: aClass having: doc with: stream.
		
		"Instance methods"
		self documentInstanceMethods: aClass having: doc with: stream.
		
		"Class variables"
		self documentClassVariables: aClass having: doc with: stream.
		
		"Class methods"
		self documentClassMethods: aClass having: doc with: stream.
		
		doc content: stream contents trim
	].
	^ doc