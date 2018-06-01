context menu
createContextMenu

	| menu |
	menu := MenuMorph new defaultTarget: self.
	menu 
		addList: self defaultContextMenuContent;
		defaultTarget: self child.
	(self child hasProperty: #wantsCustomContextMenu) ifTrue: [
		menu addList: self child customContextMenuContent].
	menu setInvokingView: self.
	menu popUpEvent: self activeHand lastEvent in: self world