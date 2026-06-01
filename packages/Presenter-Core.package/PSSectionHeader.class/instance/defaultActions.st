context menu
defaultActions

	| actions |
	actions := OrderedCollection new.
	actions
		add: self toggleCollapseData;
		add: self renameSectionData;
		add: self deleteSectionData.
	(self tool presentation canIndentSection: self section)
		ifTrue: [actions add: self indentSectionData].
	(self tool presentation canOutdentSection: self section)
		ifTrue: [actions add: self outdentSectionData].
	(self tool presentation canMoveSectionAnchorUp: self section)
		ifTrue: [actions add: self moveSectionUpData].
	(self tool presentation canMoveSectionAnchorDown: self section)
		ifTrue: [actions add: self moveSectionDownData].
	actions
		add: self collapseAllData;
		add: self expandAllData.
	^ actions
