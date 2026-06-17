createSlideContent
newCodeField

	^ self currentSlide addContentUndoably: (PSCodeMorph new
		color: self currentSlide color;
		rescale: self currentSlide extent;
		center: self currentSlide center;
		yourself)