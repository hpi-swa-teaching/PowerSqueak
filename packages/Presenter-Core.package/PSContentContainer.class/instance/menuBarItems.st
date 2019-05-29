accessing
menuBarItems

	| aCollection |
	aCollection := self defaultActions.
	(self hasSubmorphWithProperty: #hasCustomActions)
		ifTrue:[ aCollection addAll: self content customActions].
	
	 ^ aCollection
	