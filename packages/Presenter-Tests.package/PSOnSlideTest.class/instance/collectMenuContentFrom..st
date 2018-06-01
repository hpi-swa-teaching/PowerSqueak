context menu tests
collectMenuContentFrom: aMenu

	^ aMenu submorphs collect: [:each | 
		(each isKindOf: MenuItemMorph ) 
			ifTrue: [{each contents . each arguments first}]
			ifFalse: [
				((each isKindOf: Morph) and:[each knownName = 'line']) 
					ifTrue: ['-']
					ifFalse: [nil]]]