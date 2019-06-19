createSlideContent
insertSlideNumberOn: aSlide

	| slideNumberMorph |
	slideNumberMorph := PSSlideNumberMorph new 
		setText: (self currentSlideNumber asString);
		extent: aSlide extent / 8;
		bottomRight: aSlide bottomRight.
	aSlide addContent: slideNumberMorph
	