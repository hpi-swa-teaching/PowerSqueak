presentation mode tests
testSlidesReceiveEnablePresentationMode

	self tool createSlide.
	self slides: (self slides collect: [:each | PSMockSlide new]).
	self tool enablePresentationMode.
	
	self slides do: [:each |
		self assert: each receivedPresentationModeEnable]