context menu
addSubmorphContentMenuItemsOf: anObject

	(anObject hasSubmorphWithProperty: #hasCustomActions)
		ifTrue: [self
					defaultTarget: anObject content;
					addDictionaries: anObject content customActions]