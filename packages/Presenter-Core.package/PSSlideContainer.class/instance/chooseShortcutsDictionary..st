events-processing
chooseShortcutsDictionary: evt

	^ evt commandKeyPressed 
		ifTrue: [ {self presentationCommandShortcuts . self presentationCreationCommandShortcuts} ]
		ifFalse: [ {self presentationShortcuts . self presentationCreationShortcuts} ]