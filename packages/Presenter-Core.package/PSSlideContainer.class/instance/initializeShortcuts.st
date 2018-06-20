initialize-release
initializeShortcuts

	self presentationShortcuts: Dictionary new.
	self presentationCreationShortcuts: Dictionary new.
	
	self initializeShortcuts: self presentationModeShortcuts in: self presentationShortcuts. 
	self initializeShortcuts: self presentationCreationModeShortcuts in: self presentationCreationShortcuts
	