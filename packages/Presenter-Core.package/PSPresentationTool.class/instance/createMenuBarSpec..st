toolbuilder
createMenuBarSpec: aBuilder 
	| panelSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec
		model: self;
		frame: (self barFrameFrom: 0  height: self menuBarHeight);
		name: #MenuBar;
		children: OrderedCollection new.
		
	self menuBarButtonData inject: 0@0 into: [:aPoint  :each| 
		| button |
		each at: #frame put: (aPoint corner: aPoint + (each at: #size)).
		button := self createButtonSpec: each with: aBuilder.
		panelSpec children add: button.
		aPoint + ((each at: #size) x @ 0)].
	
	^ panelSpec