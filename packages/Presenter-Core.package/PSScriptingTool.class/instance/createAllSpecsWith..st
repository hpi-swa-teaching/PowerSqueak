toolbuilder
createAllSpecsWith: aBuilder

	 ^ {self createCodePaneSpec: aBuilder. 
		self createMethodSelectionSpec: aBuilder.
		self createMethodSelectorAndArgumentsSpec: aBuilder}