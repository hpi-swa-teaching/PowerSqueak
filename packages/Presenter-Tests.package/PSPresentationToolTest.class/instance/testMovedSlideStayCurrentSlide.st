slide moving tests
testMovedSlideStayCurrentSlide

	| slide |
	4 timesRepeat: [self createSlide].	"=> 5 slides"
	slide := self slides first.
	
	self selectSlideNumber: 1.
	self moveCurrentSlideTo: 5.
	self assert: slide = self currentSlide 