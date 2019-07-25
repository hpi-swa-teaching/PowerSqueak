toolbuilder
createSlideCreationBarSpec: aBuilder
	
	| panelSpec buttonData|
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec
		model: self;
		frame: self slideCreationBarLayoutFrame;
		name: #SlideCreationBar;
		children: OrderedCollection new.
	
	buttonData := self slideCreationButtonData.
	self setFrames: buttonData.
	panelSpec children addAll: (buttonData collect:
		[:each | self createButtonSpec: each with: aBuilder]).
	
	^ panelSpec