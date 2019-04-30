slide loading
loadLayoutFromDirectory: aDirectory

	| slide |
	slide := PSSlide new.
	self loadMorphsFromDirectory: aDirectory intoSlide: slide.
	self presentation addLayout: slide withName: aDirectory localName.
	^ slide