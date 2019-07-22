toolbuilder
createAdvancedMenuBarSpec: aBuilder

	| panelSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec
		model: self;
		frame: (self barFrameFrom: self menuBarHeight height: self menuBarHeight);
		name: #AdvancedMenuBar;
		children: #advancedMenuBarButtons.
	^ panelSpec