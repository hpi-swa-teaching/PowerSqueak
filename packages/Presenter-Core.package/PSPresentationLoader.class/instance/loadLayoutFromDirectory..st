slide loading
loadLayoutFromDirectory: aDirectory

	| slide |
	slide := PSSlide new.
	self slideErrors at: aDirectory localName put: 0.
	self loadMorphsFromDirectory: aDirectory intoSlide: slide.
	self presentation addLayout: slide withName: (self layoutName: aDirectory localName).
	^ slide