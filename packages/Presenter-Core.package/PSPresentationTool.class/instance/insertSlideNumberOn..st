createSlideContent
insertSlideNumberOn: aSlide

	| slideNumberMorph |
	slideNumberMorph := PSSlideNumberMorph new
		setText: (self currentSlideNumber asString);
		extent: aSlide extent / 12;
		bottomRight: aSlide bottomRight - (aSlide extent / 50).
	"slideNumberMorph := PSTextMorph new
		setText: (self currentSlideNumber asString);
		extent: aSlide extent / 12;
		bottomRight: aSlide bottomRight;
		selectFrom: 0 to: 0;
		yourself."
	aSlide addContent: slideNumberMorph
	