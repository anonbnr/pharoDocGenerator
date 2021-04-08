documentation
documentPackageClasses: aPackage having: aPackageDoc with: aStream
	"Generates documentation for aPackage's classes, as part of its documentation aPackageDoc, using aStream"
	aStream << 'Classes: '; lf.
	aPackage classes do: [ :cls | 
		| clsDoc |
		clsDoc := self documentClass: cls.
		aPackageDoc addDocumentation: clsDoc.
		aStream << clsDoc content; lf; lf
	].
	aStream lf