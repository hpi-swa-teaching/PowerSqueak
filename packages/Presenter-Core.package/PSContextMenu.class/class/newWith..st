instance creation
newWith: anObject

	^ self new
		defaultTarget: anObject;
		addDictionaries: anObject defaultActions;
		addSubmorphContentMenuItemsOf: anObject;
		openContextMenu: anObject;
		yourself
		