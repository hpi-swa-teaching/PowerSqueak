content creation
newCodeField

	^ self tool currentSlide addContentUndoably: (PSCodeMorph new
		color: self tool currentSlide color;
		rescale: self tool currentSlide extent;
		center: self tool currentSlide center;
		yourself)