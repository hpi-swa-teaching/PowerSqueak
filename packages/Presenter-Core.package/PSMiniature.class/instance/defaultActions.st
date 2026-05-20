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
		ifTrue: [actions
			add: self renameSectionData;
			add: self deleteSectionData]
		ifFalse: [actions add: self addSectionData].
	^ actions
