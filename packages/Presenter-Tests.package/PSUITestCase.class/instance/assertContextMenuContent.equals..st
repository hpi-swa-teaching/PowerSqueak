helper functions
assertContextMenuContent: aMorph equals: aCollection
	"Tests whether the context menu is created correctly.
	Tests both the PowerSqueak method to create the correct context menu and describes our assumptions about how Morphic creates context-menus from Collections."
	| menu items |
	"container := aMorph owner."
	menu := PSContextMenu newWith: aMorph.
	items := self collectMenuContentFrom: menu.
	
	self assert: items equals: aCollection.
	menu abandon