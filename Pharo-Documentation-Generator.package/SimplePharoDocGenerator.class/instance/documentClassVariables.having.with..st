documentation
documentClassVariables: aClass having: aClassDoc with: aStream
	"Generates documentation for aClass's class variables, as part of its documentation aClassDoc, using aStream"
	aStream << 'Class variables: '; crtab.
	aClass classVariables do: [ :classVar | 
		| classVarDoc |
		classVarDoc := self documentClassVariable: classVar.
		aClassDoc addDocumentation: classVarDoc.
		aStream << classVarDoc content; crtab 
	].
	aStream lf