initialization
initialize

	super initialize.
	self
		color: self class backgroundColor;
		borderColor: self class borderColor;
		borderWidth: 1;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		cellInset: self class contentSpacing;
		layoutInset: self class contentSpacing
