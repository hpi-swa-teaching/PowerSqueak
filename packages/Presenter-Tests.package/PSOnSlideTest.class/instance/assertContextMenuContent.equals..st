context menu tests
assertContextMenuContent: aMorph equals: aCollection
	"Tests whether the context menu is created correctly.
	Tests both the PowerSqueak method to create the correct context menu and describes our assumptions about how Morphic creates context-menus from Collections."
	| container menu items |
	container := aMorph owner.
	menu := container invokeContextMenu.
	items := self collectMenuContentFrom: menu.
	
	self assert: items equals: aCollection.
	menu abandon