slide loading
loadLayoutFromDirectory: aDirectory

	| slide |
	slide := PSSlide new.
	self loadMorphsFromDirectory: aDirectory intoSlide: slide.
	self presentation addLayout: slide withName: (self layoutName: aDirectory localName).
	^ slide