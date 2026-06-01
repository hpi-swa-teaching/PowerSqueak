initialize-release
initialize

	super initialize.
	self
		color: Color transparent;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellInset: 0;
		layoutInset: 0
