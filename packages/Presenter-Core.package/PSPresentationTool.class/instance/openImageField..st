createSlideContent
openImageField: aFileName

	| imageField |
	imageField := SketchMorph fromFile: aFileName.
	self currentSlide resizeToFitOnSlide: imageField.
	imageField openInHand