accessing
initialize

	super initialize.
	self delete.
	self setProperty: #wantsCustomContextMenu toValue: true.