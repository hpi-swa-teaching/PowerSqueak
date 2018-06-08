presentation mode tests
testPresentationModeRemovesHandle

	self tool enablePresentationMode.
	self tool slides do:[:slide |
		slide submorphsDo: [:each |
			self assert: each hasHandles not]]