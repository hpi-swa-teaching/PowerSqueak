presentation mode tests
testLeavePresentationModeEnablesHandles

	self slide 
		enablePresentationMode;
		disablePresentationMode;
		submorphsDo: [:each |
			self assert: each hasHandles]