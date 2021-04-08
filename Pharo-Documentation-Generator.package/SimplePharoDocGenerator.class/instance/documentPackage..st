documentation
documentPackage: aPackage
	"Generates a documentation for aPackage"
	| doc |
	doc := PackageDocumentation new.
	String streamContents: [ :stream |
		"Basic package info"
		self documentPackageBasicInfo: aPackage with: stream.
		
		"Classes"
		self documentPackageClasses: aPackage having: doc with: stream.
		
		doc content: stream contents trim
	].

	^ doc