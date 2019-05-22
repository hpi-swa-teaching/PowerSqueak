toolbuilder
createAllSpecsWith: aBuilder

	 ^ {self createMiniatureViewSpec: aBuilder. 
	self createSlideViewportSpec: aBuilder. 
	self createButtonBarTopSpec: aBuilder.
	self createMenuBarSpec: aBuilder.
	self createAdvancedMenuBarSpec: aBuilder.}