as yet unclassified
invokeContextMenu

	| menu |
	menu := self createContextMenu.
	self 
		addContentMenuItemsTo: menu;
		openMenu: menu.
	^ menu "just for testing reasons"