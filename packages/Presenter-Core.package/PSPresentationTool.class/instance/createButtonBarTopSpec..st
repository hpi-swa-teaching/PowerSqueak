toolbuilder
createButtonBarTopSpec: aBuilder 
	| panelSpec buttonAddSlideSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec
		model: self;
		frame: (0@0 corner: 1@0.1);
		name: #ButtonBarTop;
		children: OrderedCollection new.
	buttonAddSlideSpec := self createAddSlideButtonSpec: aBuilder.
	panelSpec children add: buttonAddSlideSpec.	
	^ panelSpec