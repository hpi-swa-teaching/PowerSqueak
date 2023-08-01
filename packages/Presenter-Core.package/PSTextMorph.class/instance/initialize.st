initialize-release
initialize 

	super initialize.
	self 
		initializeTextAttribute;
		initializeProperties;
		applyUserInterfaceTheme.
	self textMorph releaseParagraph.
	self selectAll.