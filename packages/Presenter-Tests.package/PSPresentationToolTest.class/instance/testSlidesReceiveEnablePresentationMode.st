presentation mode tests
testSlidesReceiveEnablePresentationMode

	self tool createSlide.
	self tool slides: (self tool slides collect: [:each | PSMockSlide new]).
	self tool enablePresentationMode.
	self tool slides do: [:each |
		self assert: each receivedPresentationModeEnable]