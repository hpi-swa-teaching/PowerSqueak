window resizing tests
testFullScreenOn

	DisplayScreen fullScreenOn.
	self tool enablePresentationMode.
	self assert: self tool presentationMode equals: DisplayScreen displayIsFullScreen.
	self tool disablePresentationMode.
	self assert: DisplayScreen displayIsFullScreen equals: true