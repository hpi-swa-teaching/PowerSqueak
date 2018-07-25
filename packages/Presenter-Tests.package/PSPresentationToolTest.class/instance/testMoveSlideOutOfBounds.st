slide moving tests
testMoveSlideOutOfBounds

	| slide |
	4 timesRepeat: [self createSlide].	"=> 5 slides"
	slide := self slides first.
	
	self 
		selectSlideNumber: 1;
		moveCurrentSlideTo: 100;  	"no slide with number 100 exists"
		assert: (self slides indexOf: slide startingAt: 0) equals: 5.
	
	self 
		moveCurrentSlideTo: -100;  	"no slide with number -100 exists"
		assert: (self slides indexOf: slide startingAt: 0) equals: 1