toolbuilder
createMenuBarPanelSpec: aBuilder 
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		frame: (self barFrameFrom: 0  height: self menuBarHeight);
		name: #MenuBar;
		children: OrderedCollection new;
		yourself