initialize-release
initializeShortcuts

	self presentationShortcuts: Dictionary new.
	self presentationCommandShortcuts: Dictionary new.
	self presentationCreationShortcuts: Dictionary new.
	self presentationCreationCommandShortcuts: Dictionary new.
	
	self initializeShortcuts: self presentationModeShortcuts in: self presentationShortcuts.
	self initializeShortcuts: self presentationModeCommandShortcuts in: self presentationCommandShortcuts.
	self initializeShortcuts: self presentationCreationModeCommandShortcuts in: self presentationCreationCommandShortcuts. 
	self initializeShortcuts: self presentationCreationModeShortcuts in: self presentationCreationShortcuts
	