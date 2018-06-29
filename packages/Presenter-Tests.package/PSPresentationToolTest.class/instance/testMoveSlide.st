slide moving tests
testMoveSlide 

	| slide |
	4 timesRepeat: [self tool createSlide].	"=> 5 slides"
	slide := self slides first.
	
	self tool selectSlideNumber: 1.
	self tool moveCurrentSlideTo: 3.
	self assert: (self slides indexOf: slide startingAt: 0) equals: 3.
	
	self tool moveCurrentSlideTo: 1.
	self assert: (self slides indexOf: slide startingAt: 0) equals: 1.
	
	self tool moveCurrentSlideTo: 5.
	self assert: (self slides indexOf: slide startingAt: 0) equals: 5
	 