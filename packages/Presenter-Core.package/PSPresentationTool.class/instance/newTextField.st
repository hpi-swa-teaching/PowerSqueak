createSlideContent
newTextField

	^ self currentSlide addContentUndoably: (PSTextMorph new
		color: self currentSlide color;
		rescale: self currentSlide extent;
		center: self currentSlide center;
		yourself)