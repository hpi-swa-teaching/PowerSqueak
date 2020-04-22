running
tearDown

	self window abandon.
	self fullScreenMode ~= DisplayScreen displayIsFullScreen
		ifTrue: [DisplayScreen toggleFullScreen].
	super tearDown