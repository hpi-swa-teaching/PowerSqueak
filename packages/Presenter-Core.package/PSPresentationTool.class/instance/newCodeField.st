createSlideContent
newCodeField

	^ self currentSlide addContent: (PSCodeMorph new
		color: self currentSlide color;
		rescale: self currentSlide extent;
		center: self currentSlide center;
		yourself)