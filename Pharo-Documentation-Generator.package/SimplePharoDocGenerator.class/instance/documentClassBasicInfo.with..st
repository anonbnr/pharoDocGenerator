documentation
documentClassBasicInfo: aClass with: aStream
	"Generates documentation for the basic info of aClass (i.e., its name, superclass, and subclasses) using aStream"
	aStream << 'Class: '; << aClass name; lf.
	aStream << 'Superclass: '.
	aClass superclass ifNotNil: [ aStream << aClass superclass name ].
	aStream lf.
	
	aStream << 'Subclasses: '.
	aClass subclasses do: [ :subclass | aStream << subclass name; << ', ' ].
	aStream lf