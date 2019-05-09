as yet unclassified
createContextMenu

	| menu |
	menu := MenuMorph new 
		defaultTarget: self;
		yourself.
	menu addList: self menu.
	^ menu