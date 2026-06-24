running
tearDown

	PSPresentationTool showLogoInPresentationMode: logoPreference.
	self window abandon.
	self fullScreenMode ~= DisplayScreen displayIsFullScreen
		ifTrue: [DisplayScreen toggleFullScreen].
	super tearDown
