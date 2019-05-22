toolbuilder
createAdvancedMenuBarSpec: aBuilder 
	| panelSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec
		model: self;
		frame: (self barFrameFrom: (self menuBarHeight + self buttonHeight)  height: self buttonHeight);
		name: #AdvancedMenuBar;
		children: OrderedCollection new.
			
	^ panelSpec