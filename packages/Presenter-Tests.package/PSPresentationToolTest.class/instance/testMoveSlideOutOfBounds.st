slide moving tests
testMoveSlideOutOfBounds

	| slide |
	4 timesRepeat: [self tool createSlide].	"=> 5 slides"
	slide := self slides first.
	
	self tool selectSlideNumber: 1.
	self tool moveCurrentSlideTo: 100.  	"no slide with number 100 exists"
	self assert: (self slides indexOf: slide startingAt: 0) equals: 5.
	
	self tool moveCurrentSlideTo: -100.  	"no slide with number -100 exists"
	self assert: (self slides indexOf: slide startingAt: 0) equals: 1.