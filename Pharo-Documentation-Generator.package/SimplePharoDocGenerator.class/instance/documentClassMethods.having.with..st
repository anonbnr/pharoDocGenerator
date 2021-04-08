documentation
documentClassMethods: aClass having: aClassDoc with: aStream
	"Generates documentation for aClass's class methods, as part of its documentation aClassDoc, using aStream"
	aStream << 'Class methods: '; crtab.
	aClass class methods do: [ :classMethod | 
		| classMethodDoc |
		classMethodDoc := self documentClassMethod: classMethod.
		aClassDoc addDocumentation: classMethodDoc.
		aStream << classMethodDoc content; crtab
	].
	aStream lf