presentation mode tests
testSlidesReceiveEnablePresentationMode

	self tool createSlide.
	self tool slides: (self tool slides collect: [:each | PSSlideForTests new]).
	self tool enablePresentationMode.
	self tool slides do: [:each |
		self assert: each receivedPresentationModeEnable]