accessing
defaultContextMenuContent

	^ #(('grab' grabChild)
		-
		('delete' abandon)
		-
		('bring to front' comeToFront)
		('send to back' goBehind)
		-
		('duplicate' copyChildToHand)
	)