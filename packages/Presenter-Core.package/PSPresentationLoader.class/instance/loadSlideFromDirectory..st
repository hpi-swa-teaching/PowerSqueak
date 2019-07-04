slide loading
loadSlideFromDirectory: aDirectory

	| slide|
	slide := self presentation createSlideBack.
	self slideErrors at: aDirectory localName put: 0.
	self loadMorphsFromDirectory: aDirectory intoSlide: slide.
	self loadMetadataFrom: aDirectory for: slide.
	^ slide