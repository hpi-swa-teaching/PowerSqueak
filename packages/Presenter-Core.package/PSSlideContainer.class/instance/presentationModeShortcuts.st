accessing
presentationModeShortcuts
	"{character that trggers event .  action block . discription}"
	^ {
		{$i . [self model toggleInteractivity] . 'Toggle iteractive/non interactive mode'}
	}, self sharedShortcuts