initialize-release
initialize 

	super initialize.
	self basicTextSize: self defaultBasicTextSize.
	self extension
		setProperty: #acceptRescale toValue: true;
		setProperty: #wantsCustomContextMenu toValue: true.
	self 
		borderWidth: 0;
		color: self defaultTextBackgroundColor;
		selectionColor: self defaultFontColor