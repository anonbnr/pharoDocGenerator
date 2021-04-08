documentation
documentInstanceVariables: aClass having: aClassDoc with: aStream
	"Generates documentation for aClass's instance variables, as part of its documentation aClassDoc, using aStream"
	aStream << 'Instance variables: '; crtab.
	aClass slots do: [ :instVar | 
		| instVarDoc |
		instVarDoc := self documentInstanceVariable: instVar.
		aClassDoc addDocumentation: instVarDoc.
		aStream << instVarDoc content; crtab
	].
	aStream lf