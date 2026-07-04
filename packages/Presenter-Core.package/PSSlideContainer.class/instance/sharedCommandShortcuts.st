shortcuts
sharedCommandShortcuts

	^ {
		{$z . [self model undo] . 'Undo last change'}.
		{$y . [self model redo] . 'Redo last undone change'}.
		{$t . [self model contentCreationController newTextField] . 'Create new textField in hand'}
	}