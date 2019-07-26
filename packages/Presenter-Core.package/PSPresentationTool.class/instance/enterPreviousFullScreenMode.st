presentation mode
enterPreviousFullScreenMode

	self isFullScreenMode
	ifFalse: [DisplayScreen fullScreenOff]
	