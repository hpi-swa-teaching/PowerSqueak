styling
selectionAddAttribute: anAttribute onNoSelection: aBlock
	"Adapted from TextMorph>>selectionColor:, which is not available on all Squeak versions."
	
	| interval |
	interval := self textMorph editor selectionInterval.
	interval size <= 0 
		ifTrue: [interval := 1 to: self textMorph text size].
	self addAttribute: anAttribute toInterval: interval.
	interval size = self textMorph text size 
		ifTrue: aBlock