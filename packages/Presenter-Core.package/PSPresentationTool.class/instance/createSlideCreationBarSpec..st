toolbuilder
createSlideCreationBarSpec: aBuilder
	
	| panelSpec buttonData|
	panelSpec := self createSlideCreationBarPanelSpec: aBuilder.
	
	buttonData := self slideCreationButtonData.
	self setFrames: buttonData.
	panelSpec children addAll: (buttonData collect:
		[:each | self createButtonSpec: each with: aBuilder]).
	
	^ panelSpec