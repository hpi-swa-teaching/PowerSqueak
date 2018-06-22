presentation mode tests
testLeavePresentationModeEnablesHandles

	self slide 
		addContent: self morph;
		enablePresentationMode;
		disablePresentationMode;
		submorphsDo: [:each |
			self assert: each hasHandles]