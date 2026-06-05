initialization
initialize
	
	super initialize.
	self installSyntaxHighlighting;
		useMonospaceFont;
		addRunButton;
		resultWasShowing: false.