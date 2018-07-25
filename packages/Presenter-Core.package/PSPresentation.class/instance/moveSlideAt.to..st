slide management
moveSlideAt: anIndex to: newIndex

	| position |
	position :=  (self clampSlideNumber: newIndex).
	self slides
		add: (self slides removeAt: anIndex)  
		afterIndex: position - 1.   "position needs to be 0 indexed for add:afterIndex"