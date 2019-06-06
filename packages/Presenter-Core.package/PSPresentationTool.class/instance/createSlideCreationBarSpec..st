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
	buttonData do: [:each| 
		| button |
		button := self createButtonSpec: each with: aBuilder.
		panelSpec children add: button.].
	
	^ panelSpec