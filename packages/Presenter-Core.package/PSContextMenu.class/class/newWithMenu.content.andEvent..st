instance creation
newWithMenu: anArray content: aMorph andEvent: anEvent

	^ self new
		menu: anArray;
		content: aMorph;
		event: anEvent;
		invokeContextMenu