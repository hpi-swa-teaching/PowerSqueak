initialize-release
initialize 

	super initialize.
	self 
		color: Color transparent;
		resizeHandles: OrderedCollection new;
		hasHandles: false;
		addResizeHandles