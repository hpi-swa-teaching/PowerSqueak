context menu tests
collectMenuContentFrom: aMenu

	^ aMenu submorphs collect: [:each | 
		(each isKindOf: MenuItemMorph ) 
			ifTrue: [self collectMenuItemContentsFrom: each]
			ifFalse: [
				((each isKindOf: Morph) and:[each knownName = 'line']) 
					ifTrue: ['-']
					ifFalse: [nil]]]