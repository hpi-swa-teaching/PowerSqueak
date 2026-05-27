initialize-release
initialize

	super initialize.
	self
		hResizing: #spaceFill;
		vResizing: #rigid;
		height: self class defaultThickness;
		color: Color transparent.
	indent := 0
