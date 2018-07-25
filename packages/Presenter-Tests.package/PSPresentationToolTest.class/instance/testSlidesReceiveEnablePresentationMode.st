presentation mode tests
testSlidesReceiveEnablePresentationMode

	self 
		createSlide;
		slides: (self slides collect: [:each | PSMockSlide new]);
		enablePresentationMode.
	self slides do: [:each |
		self assert: each receivedPresentationModeEnable]