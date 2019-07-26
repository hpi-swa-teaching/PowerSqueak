toolbuilder
createSlideCreationBarSpec: aBuilder
	
	| panelSpec|
	panelSpec := self createSlideCreationBarPanelSpec: aBuilder.
	panelSpec children addAll: 
		(self createButtonSpecs: self slideCreationButtonData with: aBuilder).
	^ panelSpec