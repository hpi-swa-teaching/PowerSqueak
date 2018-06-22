toolbuilder
createSlideViewportSpec: aBuilder 
	| panelSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec
		model: self;
		frame: self viewPortLayoutFrame;
		name: #SlideViewport;
		children: OrderedCollection new.
	^ panelSpec