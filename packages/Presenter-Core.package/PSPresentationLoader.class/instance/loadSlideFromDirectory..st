slide loading
loadSlideFromDirectory: aDirectory

	| slide|
	slide := PSSlide new.
	self slideErrors at: aDirectory localName put: 0.
	self loadMorphsFromDirectory: aDirectory intoSlide: slide.
	self loadMetadataFrom: aDirectory for: slide.
	^ slide