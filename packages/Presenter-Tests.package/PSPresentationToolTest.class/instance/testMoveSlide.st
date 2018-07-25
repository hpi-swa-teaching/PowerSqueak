slide moving tests
testMoveSlide 

	| slide |
	4 timesRepeat: [self createSlide].	"=> 5 slides"
	slide := self slides first.
	
	self selectSlideNumber: 1.
	self moveCurrentSlideTo: 3.
	self assert: (self slides indexOf: slide startingAt: 0) equals: 3.
	
	self moveCurrentSlideTo: 1.
	self assert: (self slides indexOf: slide startingAt: 0) equals: 1.
	
	self moveCurrentSlideTo: 5.
	self assert: (self slides indexOf: slide startingAt: 0) equals: 5
	 