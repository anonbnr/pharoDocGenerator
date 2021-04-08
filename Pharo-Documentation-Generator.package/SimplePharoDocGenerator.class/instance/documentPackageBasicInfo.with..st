documentation
documentPackageBasicInfo: aPackage with: aStream
	"Generates documentation for the basic info of aPackage (i.e., its name and number of classes) using aStream"
	aStream << 'Package: '; << aPackage name; lf.
	aStream << 'Number of classes: '; << aPackage classes size asString; lf.