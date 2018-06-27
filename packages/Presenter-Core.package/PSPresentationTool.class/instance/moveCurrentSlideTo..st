slide management
moveCurrentSlideTo: aNumber

	| position |
	position :=  (self clampSlideNumber: aNumber) .  
	self slides 
		add: (self slides removeAt: self currentSlideNumber)  
		afterIndex: position - 1.   "position needs to be 0 indexed for add:afterIndex"
    	"self updateSlideNumbers."
    	self selectSlide: position