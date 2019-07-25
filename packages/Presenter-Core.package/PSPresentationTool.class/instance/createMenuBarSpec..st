toolbuilder
createMenuBarSpec: aBuilder 
	
	| panelSpec buttonData|
	panelSpec := self createMenuBarPanelSpec: aBuilder.
	
	buttonData := self menuBarButtonData.
	self setFrames: buttonData.
	panelSpec children addAll: (buttonData collect:
		[:each | self createButtonSpec: each with: aBuilder]).
	
	^ panelSpec