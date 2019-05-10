instance creation
newWith: anObject

	^ self new
		defaultTarget: anObject;
		addList: anObject defaultContextMenuContent;
		addSubmorphContentMenuItemsOf: anObject;
		openContextMenu: anObject;
		yourself
		