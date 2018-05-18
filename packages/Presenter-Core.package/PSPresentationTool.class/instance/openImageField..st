createSlideContent
openImageField: aFileName

	| imageField |
	imageField := SketchMorph fromFile: aFileName.
	imageField openInHand.
	