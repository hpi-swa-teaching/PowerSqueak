styling
selectionAttribute: anAttributeClass
	"Adapted from TextMorph>>selectionColor, which is not available on all Squeak versions."
	
	| index attributes fontAttribute |
	index := self textMorph editor startBlock stringIndex ifNil: [1].
	(index between: 1  and: self textMorph text size) ifFalse: [index := 1].
	attributes := self textMorph text attributesAt: index.
	fontAttribute := attributes detect: [:attr | attr class = anAttributeClass] ifNone: [].
	^ fontAttribute