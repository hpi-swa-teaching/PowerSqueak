shortcuts
shortcutsFor: anEvent

	^ anEvent commandKeyPressed
				ifTrue: [self presentationCommandShortcuts]
				ifFalse: [self presentationShortcuts]