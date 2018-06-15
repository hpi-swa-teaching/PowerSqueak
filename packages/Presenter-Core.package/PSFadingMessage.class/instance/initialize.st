initialize-release
initialize

	super initialize.
	self 
		content: StringMorph new;
		addMorph: self content;
		color: Color gray;
		remaining: self fadingTime;
		startStepping