initialize-release
initialize

	super initialize.
	self
		hResizing: #spaceFill;
		vResizing: #rigid;
		height: self class headerHeight;
		color: Color transparent
