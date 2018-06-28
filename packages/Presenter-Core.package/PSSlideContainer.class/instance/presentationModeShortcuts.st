accessing
presentationModeShortcuts
	"{character that trggers event .  action block . discription}"
	^ {
		{$i . [self toggleInteractivity] . 'Toggle iteractive/non interactive mode'}
	}, self sharedShortcuts