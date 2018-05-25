initialize-release
initialize

	super initialize.
	self 
		layoutPolicy: ProportionalLayout new;
		beTransparent;
		borderColor: nil;
		color: self defaultColor