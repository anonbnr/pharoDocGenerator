documentation
documentInstanceMethod: anInstanceMethod
	"Generates a documentation for anInstanceMethod"
	|doc signature nameCollection signatureCollection|
	doc := MethodDocumentation new.
	signature := anInstanceMethod name.
	anInstanceMethod argumentNames 
		ifNotEmpty: [
			((signature findTokens: ':') size > 1) 
				ifTrue: [
					nameCollection := $# split: signature.
					signatureCollection := ($: split: (nameCollection last)) removeLast; yourself.
					signatureCollection := signatureCollection with: anInstanceMethod argumentNames collect: [ :selector :arg | selector, ': ', arg. ].
					nameCollection at: 2 put: (Character space join: signatureCollection).
					signature := ($# join: nameCollection).
				]
				ifFalse: [ signature := signature, ' ', (anInstanceMethod argumentNames at: 1)].
		].
	doc content: signature.	
	^ doc.