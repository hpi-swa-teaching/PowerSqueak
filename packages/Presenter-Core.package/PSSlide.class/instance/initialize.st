initialize-release
initialize 

	super initialize.
	self
		applyUserInterfaceTheme;
		borderColor: nil;
		isHidden: false;
		layoutPolicy: ProportionalLayout new;
		beSticky