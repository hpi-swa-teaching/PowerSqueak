toolbuilder
createSlideViewportSpec: aBuilder 
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		frame: self viewPortLayoutFrame;
		name: #SlideViewport;
		children: OrderedCollection new;
		yourself