slide loading
addLayoutFromDirectory: aDirectory

	| slide |
	slide := self loadSlideFromDirectory: aDirectory.
	self presentation addLayout: slide withName: (self layoutName: aDirectory localName).
	^ slide