presentation mode tests
testPresentationModeRemovesHandle

	self slide 
		enablePresentationMode;
		submorphsDo: [:each |
			self assert: each hasHandles not]