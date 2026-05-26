shortcuts
tabIndent

	self model ifNil: [^ self].
	self isSectionAnchor
		ifTrue: [self model indentSectionStartingAt: self slide]
		ifFalse: [self model openSubSectionNameChooserFor: self slide]
