running
tearDown

	self tool disablePresentationMode.
	self world doOneCycle.
	self window abandon.
	self world doOneCycle.
	self fullScreenMode ~= DisplayScreen displayIsFullScreen
		ifTrue: [DisplayScreen toggleFullScreen].
	super tearDown