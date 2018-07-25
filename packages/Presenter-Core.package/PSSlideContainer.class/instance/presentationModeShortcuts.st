shortcuts
presentationModeShortcuts
	"{character that triggers event .  action block . discription}"
	^ {
		{Character escape . [self model disablePresentationMode] . 'Disable Presentation Mode'}.
		{$i . [self model toggleInteractivity] . 'Toggle iteractive/non interactive mode'}
	}, self sharedShortcuts