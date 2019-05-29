toolbuilder
createAdvancedMenuBarIn: aPluggablePanelMorph
	
	self advancedMenuBar model: self.
	aPluggablePanelMorph 
		addMorph: self advancedMenuBar
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1))