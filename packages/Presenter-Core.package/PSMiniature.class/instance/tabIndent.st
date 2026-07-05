shortcuts
tabIndent

	self model ifNil: [^ self].
	self isSectionAnchor
		ifTrue: [self model sectionController indentSectionStartingAt: self slide]
		ifFalse: [self model sectionController openSubSectionNameChooserFor: self slide]
