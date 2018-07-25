shortcuts
presentationCreationModeCommandShortcuts
	"{character that triggers event .  action block . description}"
	^ {
		{$i . [self model newImageField] . 'Open file chooser for selecting an image'}
	}, self sharedCommandShortcuts