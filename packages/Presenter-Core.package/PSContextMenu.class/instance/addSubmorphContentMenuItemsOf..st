as yet unclassified
addSubmorphContentMenuItemsOf: anObject

	(anObject hasSubmorphWithProperty: #wantsCustomContextMenu)
		ifTrue: [self
					defaultTarget: anObject content;
					addList: (self addDictionaries: anObject content customActions)]