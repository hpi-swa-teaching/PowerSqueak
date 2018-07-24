context menu tests
testContextMenuContent: aMorph equals: aCollection

	| container menu items |
	container := aMorph owner.
	menu := container invokeContextMenu.
	items := self collectMenuContentFrom: menu.
	self assert: (items = aCollection).
	menu abandon