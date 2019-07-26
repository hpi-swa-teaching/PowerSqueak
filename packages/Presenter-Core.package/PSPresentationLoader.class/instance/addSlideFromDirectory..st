slide loading
addSlideFromDirectory: aDirectory

	| slide |
	slide := self loadSlideFromDirectory: aDirectory.
	self presentation addSlideBack: slide