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
	buttonData do: [:each| 
		| button |
		button := self createButtonSpec: each with: aBuilder.
		panelSpec children add: button.].
	
	^ panelSpec