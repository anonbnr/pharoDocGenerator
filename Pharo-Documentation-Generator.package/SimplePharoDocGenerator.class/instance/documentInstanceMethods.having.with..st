documentation
documentInstanceMethods: aClass having: aClassDoc with: aStream
	"Generates documentation for aClass's instance methods, as part of its documentation aClassDoc, using aStream"
	aStream << 'Instance methods: '; crtab.
	aClass methods do: [ :instMethod | 
		| instMethodDoc |
		instMethodDoc := self documentInstanceMethod: instMethod.
		aClassDoc addDocumentation: instMethodDoc.
		aStream << instMethodDoc content; crtab 
	].
	aStream lf