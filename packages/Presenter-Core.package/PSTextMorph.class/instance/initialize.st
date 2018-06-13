initialize-release
initialize 

	super initialize.
	self 
		initializeTextAttribute;
		setProperty: #acceptRescale toValue: true;
		setProperty: #wantsCustomContextMenu toValue: true;
		borderWidth: 0;
		color: self defaultTextBackgroundColor;
		selectionColor: self defaultFontColor