content creation
newTextField

	^ self tool currentSlide addContentUndoably: (PSTextMorph new
		color: self tool currentSlide color;
		rescale: self tool currentSlide extent;
		center: self tool currentSlide center;
		yourself)