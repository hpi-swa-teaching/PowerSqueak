accessing
defaultContextMenuContent

	^ #(('grab' grabChild)
		-
		('delete' abandon)
		-
		('recolor' recolor)
		-
		('bring to front' comeToFront)
		('send to back' goBehind)
		-
		('duplicate' copyChildToHand)
	)