initialize-release
initialize 

	super initialize.
	self 
		initializeTextAttribute;
		initializeProperties;
		initializeStyle.
	self textMorph releaseParagraph