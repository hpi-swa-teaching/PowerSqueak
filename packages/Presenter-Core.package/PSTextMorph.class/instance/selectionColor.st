compatability
selectionColor
	"This is an adapted copy of TextMorph#selectionColor, as it is not supported on all Versions of Squeak."
	| ind attrs c |
	ind := self textMorph editor startBlock stringIndex.
	(ind isNil or: [ind < 1 or: [ind > self textMorph text size]]) ifTrue: [ind := 1].
	attrs := self textMorph text attributesAt: ind.
	c := attrs detect: [:attr | attr class = TextColor] ifNone: [].
	^ c ifNil: [Color black] ifNotNil: [c color].

