styling
selectionAddAttribute: anAttribute onNoSelection: aBlock
	"This is an adapted copy of TextMorph#selectionColor:, as it is not supported on all Versions of Squeak and we needed similar methods for other attributes."
	
	| interval |
	interval := self textMorph editor selectionInterval.
	interval size <= 0 
		ifTrue: [interval := 1 to: self textMorph text size].
	self addAttribute: anAttribute toInterval: interval.
	interval size = self textMorph text string size 
		ifTrue: aBlock