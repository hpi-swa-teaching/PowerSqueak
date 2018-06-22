slide management
moveCurrentSlideTo: aNumber

	| position |
	position :=  (self clampSlideNumber: aNumber) - 1.  "position needs to be 0 indexed for add:afterIndex"
	self slides 
		add: (self slides removeAt: self currentSlideNumber)  
		afterIndex: position.
    	self updateSlideNumbers.
    	self selectSlide: self currentSlideNumber