initialize-release
initialize

	super initialize.
	self 
		layoutPolicy: ProportionalLayout new;
		beSticky;
		beTransparent;
		borderColor: nil;
		color: self defaultColor