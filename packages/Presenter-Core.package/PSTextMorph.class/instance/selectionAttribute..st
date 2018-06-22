styling
selectionAttribute: anAttributeClass
	"This is an adapted copy of TextMorph#selectionColor, as it is not supported on all Versions of Squeak, and we needed similar methods for different attributes"
	
	| index attributes fontAttribute |
	index := self textMorph editor startBlock stringIndex ifNil: [1].
	(index between: 1  and: self textMorph text size) ifFalse: [index := 1].
	attributes := self textMorph text attributesAt: index.
	fontAttribute := attributes detect: [:attr | attr class = anAttributeClass] ifNone: [].
	^ fontAttribute