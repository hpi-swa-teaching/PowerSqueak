window resizing tests
testFullScreenOff

	DisplayScreen fullScreenOff.
	self tool enablePresentationMode.
	self assert: self tool presentationMode equals: DisplayScreen displayIsFullScreen.
	self tool disablePresentationMode.
	self assert: DisplayScreen displayIsFullScreen equals: false