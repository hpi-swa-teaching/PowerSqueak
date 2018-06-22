createSlideContent
openImageField: aFileName

	| imageField |
	imageField := SketchMorph fromFile: aFileName.
	self currentSlide resizeMorphToFit: imageField.
	imageField openInHand