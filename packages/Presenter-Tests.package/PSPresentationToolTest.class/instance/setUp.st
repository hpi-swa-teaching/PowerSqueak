running
setUp

	super setUp.
	self fullScreenMode: DisplayScreen displayIsFullScreen.
	self window: (PSPresentationTool openIn: self world).
	self world doOneCycle