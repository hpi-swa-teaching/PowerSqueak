toolbuilder
createAdvancedMenuBarIn: aPluggablePanelMorph
	
	
	self advancedMenuBar: PSAdvancedMenuBar new.
	self advancedMenuBar model: self.
	aPluggablePanelMorph 
		addMorph: self advancedMenuBar
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1))