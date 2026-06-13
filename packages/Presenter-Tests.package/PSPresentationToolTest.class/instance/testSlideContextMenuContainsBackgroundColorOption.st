slide styling tests
testSlideContextMenuContainsBackgroundColorOption

	| entries |
	entries := PSContextMenu generateListFrom: self currentSlide defaultActions.
	self assert: (entries anySatisfy:
		[:each | each first = 'Change slide background color'])