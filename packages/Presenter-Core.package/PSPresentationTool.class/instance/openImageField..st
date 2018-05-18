createSlideContent
openImageField: aFileName

	| imageField |
	imageField := SketchMorph fromFile: aFileName.
	self resizeToFitOnSlide: imageField.
	imageField openInHand