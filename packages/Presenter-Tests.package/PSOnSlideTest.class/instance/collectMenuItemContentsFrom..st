context menu tests
collectMenuItemContentsFrom: aMenuItem

	^ aMenuItem balloonText 
		ifNil: [{aMenuItem contents . aMenuItem arguments first}]
		ifNotNil: [{aMenuItem contents . aMenuItem arguments first . aMenuItem balloonText}]