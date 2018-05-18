createSlideContent
resizeHeightToFitOnSlide: aMorph

	| aspectRatio newHeight |
	newHeight := self currentSlide extent y.
	aMorph extent y <= newHeight
		ifTrue: [ ^ self ].
	
	aspectRatio := aMorph extent x / aMorph extent y.
	aMorph extent: newHeight * aspectRatio @ newHeight