running
setUp

	super setUp.
	logoPreference := PSPresentationTool showLogoInPresentationMode.
	self fullScreenMode: DisplayScreen displayIsFullScreen.
	self window: (PSPresentationTool openIn: self world).
	self world doOneCycle
