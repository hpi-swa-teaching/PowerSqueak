initialize-release
initialize

	super initialize.
	self 
		layoutPolicy: PSSlideLayout new;
		beSticky;
		beTransparent;
		borderColor: nil;
		color: self defaultColor