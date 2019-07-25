toolbuilder
createMenuBarSpec: aBuilder 
	
	| panelSpec buttonData|
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec
		model: self;
		frame: (self barFrameFrom: 0  height: self menuBarHeight);
		name: #MenuBar;
		children: OrderedCollection new.
	
	buttonData := self menuBarButtonData.
	self setFrames: buttonData.
	panelSpec children addAll: (buttonData collect:
		[:each | self createButtonSpec: each with: aBuilder]).
	
	^ panelSpec