compatability
selectionColor: aColor
	"This is an adapted copy of TextMorph#selectionColor:, as it is not supported on all Versions of Squeak."

	| attribute int |
	attribute := TextColor color: aColor.
	int := self textMorph editor selectionInterval.
	int size <= 0 ifTrue: [int := 1 to: self textMorph text size].
	self textMorph text addAttribute: attribute from: int first to: int last.
	int size = self textMorph text string size ifTrue:
		[self textMorph textColor: aColor].
	self changed.
