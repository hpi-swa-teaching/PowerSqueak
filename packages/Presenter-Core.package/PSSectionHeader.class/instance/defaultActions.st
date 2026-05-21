context menu
defaultActions

	| actions |
	actions := OrderedCollection new.
	actions add: self toggleCollapseData.
	actions add: self renameSectionData.
	actions add: self deleteSectionData.
	(self tool presentation canIndentSection: self section)
		ifTrue: [actions add: self indentSectionData].
	(self tool presentation canOutdentSection: self section)
		ifTrue: [actions add: self outdentSectionData].
	^ actions
