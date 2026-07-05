shortcuts
tabOutdent

	self model ifNil: [^ self].
	self isSectionAnchor
		ifTrue: [self model sectionController outdentSectionStartingAt: self slide]