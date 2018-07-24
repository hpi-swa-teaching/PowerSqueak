context menu
addContentMenuItemsTo: aMenu

	aMenu defaultTarget: self content.
	(self content hasProperty: #wantsCustomContextMenu) 
		ifTrue: [aMenu addList: self content customContextMenuContent]