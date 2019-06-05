createSlideContent
insertSlideNumber

	| slideNumberMorph |
	slideNumberMorph := PSSlideNumberMorph new 
		setText: (self currentSlideNumber asString);
		extent: self currentSlide extent / 8;
		bottomRight: self currentSlide bottomRight.
	self currentSlide addContent: slideNumberMorph
	