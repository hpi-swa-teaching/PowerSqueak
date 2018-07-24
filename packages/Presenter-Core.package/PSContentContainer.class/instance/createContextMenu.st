context menu
createContextMenu

	| menu |
	menu := MenuMorph new defaultTarget: self.
	menu 
		addList: self defaultContextMenuContent;
		defaultTarget: self content.
	(self content hasProperty: #wantsCustomContextMenu) ifTrue: [
		menu addList: self content customContextMenuContent].
	menu setInvokingView: self.
	menu popUpEvent: self activeHand lastEvent in: self world.
	^ menu "just for testing reasons"