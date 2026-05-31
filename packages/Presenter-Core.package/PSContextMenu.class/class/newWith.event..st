instance creation
newWith: anObject event: anEvent

	^ self new
		defaultTarget: anObject;
		addDictionaries: anObject defaultActions;
		addSubmorphContentMenuItemsOf: anObject;
		openContextMenu: anObject event: anEvent;
		yourself