initialize-release
initialize

	super initialize.
	self
		extent: self class defaultWidth @ self class headerHeight;
		hResizing: #rigid; 
		vResizing: #rigid;
		color: Color transparent
