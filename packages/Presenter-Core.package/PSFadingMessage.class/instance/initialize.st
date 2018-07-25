initialize-release
initialize

	super initialize.
	self 
		content: StringMorph new;
		addMorph: self content;
		color: Color gray;
		remainingTime: self totalVisibleTime;
		startStepping