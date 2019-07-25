createSlideContent
insertSlideNumberOn: aSlide

	| slideNumberMorph |
	slideNumberMorph := PSTextMorph new
		extent: aSlide extent / 12;
		bottomRight: aSlide bottomRight;
		changeFontSize: self class defaultSlideNumberSize;
		selectFrom: 0 to: 0;
		yourself.
	PSScriptingTool setStepIn: self class slideNumberStep for: slideNumberMorph.
	aSlide addContent: slideNumberMorph
	