accessing
menuBarItems

	| actions |
	actions := self defaultActions.
	(self hasSubmorphWithProperty: #hasCustomActions)
		ifTrue: [actions addAll: self content customActions].
	^ actions