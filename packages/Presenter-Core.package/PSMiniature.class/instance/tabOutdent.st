shortcuts
tabOutdent

	self model ifNil: [^ self].
	self isSectionAnchor
		ifTrue: [self model outdentSectionStartingAt: self slide]
