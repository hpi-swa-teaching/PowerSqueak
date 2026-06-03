createSlideContent
newTextField

	^ self currentSlide addContent: (PSTextMorph new
		color: self currentSlide color;
		rescale: self currentSlide extent;
		center: self currentSlide center;
		yourself)