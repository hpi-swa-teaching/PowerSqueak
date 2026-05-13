context menu tests
testAlignmentOptionsInContextMenu

	| contextMenuEntries |
	contextMenuEntries := (PSContextMenu generateListFrom: self textField owner defaultActions, self textField customActions)
		collect: [:each | each first].
		
	self
		assert: (contextMenuEntries includes: 'Align left');
		assert: (contextMenuEntries includes: 'Align center');
		assert: (contextMenuEntries includes: 'Align right')