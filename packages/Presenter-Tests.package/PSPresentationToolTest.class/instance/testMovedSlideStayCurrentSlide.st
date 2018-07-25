slide moving tests
testMovedSlideStayCurrentSlide

	| slide |
	4 timesRepeat: [self createSlide].	"=> 5 slides"
	slide := self slides first.
	
	self 
		selectSlideNumber: 1;
		moveCurrentSlideTo: 5;
		assert: slide = self currentSlide 