presentation loading
loadPresentationFromDirectory: aDirectory

	| presentation |
	self reset.
	presentation := self readFrom: aDirectory / '.presentation'.
	^ presentation
	
	"^ (self isValidPresentationDirectory: aDirectory)
		ifTrue: [self loadPresentationUnchecked: aDirectory]
		ifFalse: [nil]"