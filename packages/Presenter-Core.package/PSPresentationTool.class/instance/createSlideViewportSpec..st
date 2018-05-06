toolbuilder
createSlideViewportSpec: aBuilder 
	| panelSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec
		model: self;
		frame: (0@0.1 corner: 1@1);
		name: #SlideViewport;
		children: OrderedCollection new.
	^ panelSpec