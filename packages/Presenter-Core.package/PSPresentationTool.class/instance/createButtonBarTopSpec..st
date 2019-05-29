toolbuilder
createButtonBarTopSpec: aBuilder 
	| panelSpec buttonData|
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec
		model: self;
		frame: (self barFrameFrom: self menuBarHeight  height: self buttonHeight);
		name: #ButtonBarTop;
		children: OrderedCollection new.
		
	buttonData := self setFrames: self buttonBarTopData.
	buttonData do: [:each |
		| button |
		button := self createButtonSpec: each with: aBuilder.
		panelSpec children add: button].
	"panelSpec children add: (self createSlideNumberLabelSpec: aBuilder)."
	
	^ panelSpec