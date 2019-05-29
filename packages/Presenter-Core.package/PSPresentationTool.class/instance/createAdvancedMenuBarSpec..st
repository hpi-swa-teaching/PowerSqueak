toolbuilder
createAdvancedMenuBarSpec: aBuilder 
	| panelSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec
		model: self;
		frame: (self barFrameFrom: self menuBarHeight height: self buttonHeight);
		name: #AdvancedMenuBar;
		children: OrderedCollection new.
			
	^ panelSpec