createSlideContent
insertSlideNumberOn: aSlide

	| slideNumberMorph |
	slideNumberMorph := PSSlideNumberMorph new
		setText: (self currentSlideNumber asString);
		extent: aSlide extent / 12;
		bottomRight: aSlide bottomRight - (aSlide extent / 50).
	aSlide addContent: slideNumberMorph
	