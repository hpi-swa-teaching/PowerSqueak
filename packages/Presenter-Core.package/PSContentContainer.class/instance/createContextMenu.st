context menu
createContextMenu

	| menu |
	menu := MenuMorph new 
		defaultTarget: self;
		yourself.
	menu addList: self defaultContextMenuContent.
	^ menu