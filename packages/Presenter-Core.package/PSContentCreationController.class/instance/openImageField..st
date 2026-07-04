content creation
openImageField: aFileName

	| imageField |
	imageField := SketchMorph fromFile: aFileName.
	self tool currentSlide resizeMorphToFit: imageField.
	imageField openInHand