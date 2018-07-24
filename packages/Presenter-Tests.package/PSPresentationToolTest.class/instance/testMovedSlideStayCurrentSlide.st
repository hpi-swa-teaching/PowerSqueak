slide moving tests
testMovedSlideStayCurrentSlide

	| slide |
	4 timesRepeat: [self tool createSlide].	"=> 5 slides"
	slide := self slides first.
	
	self tool selectSlideNumber: 1.
	self tool moveCurrentSlideTo: 5.
	self assert: slide = self currentSlide 