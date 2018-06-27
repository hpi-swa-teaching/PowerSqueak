slide management
createSlide

	| newSlide |
	newSlide := PSSlide new.
	newSlide setModel: self.
	self slides add: newSlide afterIndex: self currentSlideNumber.
	self selectSlide: self currentSlideNumber + 1.
	"self updateSlideNumbers."
	^ newSlide
	