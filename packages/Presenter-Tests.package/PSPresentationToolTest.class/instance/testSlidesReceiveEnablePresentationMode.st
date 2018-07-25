presentation mode tests
testSlidesReceiveEnablePresentationMode

	self createSlide.
	self slides: (self slides collect: [:each | PSMockSlide new]).
	self enablePresentationMode.
	self slides do: [:each |
		self assert: each receivedPresentationModeEnable]