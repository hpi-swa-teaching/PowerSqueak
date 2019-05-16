toolbuilder
createButtonBarTopSpec: aBuilder 
	| panelSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec
		model: self;
		frame: (self barFrameFrom: self menuBarHeight  height: self buttonHeight);
		name: #ButtonBarTop;
		children: OrderedCollection new.
		
	self buttonBarTopData inject: 0@0 into: [:aPoint  :each| 
		| button |
		each at: #frame put: (aPoint corner: aPoint + (each at: #size)).
		button := self createButtonSpec: each with: aBuilder.
		panelSpec children add: button.
		aPoint + ((each at: #size) x @ 0)].
	panelSpec children add: (self createSlideNumberLabelSpec: aBuilder).
	
	^ panelSpec