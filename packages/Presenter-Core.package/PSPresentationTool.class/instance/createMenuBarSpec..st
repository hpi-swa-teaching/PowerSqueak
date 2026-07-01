toolbuilder
createMenuBarSpec: aBuilder 
	
	| panelSpec |
	panelSpec := self createMenuBarPanelSpec: aBuilder.
	panelSpec children addAll:
		(self createButtonSpecs: self buttonData menuBarButtonData with: aBuilder).
	^ panelSpec