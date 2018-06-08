presentation mode tests
testPresentationModeRemovesHandle

	self slide 
		addContent: self morph;
		enablePresentationMode;
		submorphsDo: [:each |
			self assert: each hasHandles not]