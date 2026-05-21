context menu
defaultActions

	| actions |
	actions := OrderedCollection withAll: {
		self hideButtonData.
		self deleteSlideData.
		self duplicateSlideData.
		self moveSlideData.
		self saveAsLayoutData.
		self deleteLayoutData.
		self renameLayoutData}.
	self isSectionAnchor
		ifTrue: [ | section |
			section := self model presentation sectionStartingAt: self slide.
			actions
				add: self renameSectionData;
				add: self deleteSectionData.
			(self model presentation canIndentSection: section)
				ifTrue: [actions add: self indentSectionData].
			(self model presentation canOutdentSection: section)
				ifTrue: [actions add: self outdentSectionData]]
		ifFalse: [actions add: self addSectionData].
	^ actions
