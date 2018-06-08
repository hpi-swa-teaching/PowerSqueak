initialize-release
initialize 

	super initialize.
	self
		initializeTextAttribute;
		setProperty: #acceptRescale toValue: true;
		setProperty: #wantsCustomContextMenu toValue: true.