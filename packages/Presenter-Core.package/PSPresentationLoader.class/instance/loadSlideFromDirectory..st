slide loading
loadSlideFromDirectory: aDirectory

	| slide |
	slide := self presentation createSlideBack.
	self loadMorphsFromDirectory: aDirectory intoSlide: slide.
	self loadMetadataFrom: aDirectory for: slide.
	^ slide