toolbuilder
createButtonBarTopSpec: aBuilder 
	| panelSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec
		model: self;
		frame: (self barFrameFrom: self menuBarHeight  height: self buttonHeight);
		name: #ButtonBarTop;
		children: OrderedCollection new.
		
	self buttonBarTopData do: [:each | 
		| button |
		button := self createButtonSpec: each with: aBuilder.
		panelSpec children add: button].
	panelSpec children add: (self createSlideNumberLabelSpec: aBuilder).
	
	^ panelSpec