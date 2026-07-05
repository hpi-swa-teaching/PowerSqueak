miniature view tests
testDeletingMiniatureRemovesCorrespondingSlide

	| slide |
	5 timesRepeat: [self createSlide].
	slide := self slideAt: 3.
	(self tool miniatureController miniatureOf: slide) deleteSlide.
	self deny: (self slides includes: slide)