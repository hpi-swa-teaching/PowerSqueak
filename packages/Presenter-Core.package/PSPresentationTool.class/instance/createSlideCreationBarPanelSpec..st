toolbuilder
createSlideCreationBarPanelSpec: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		frame: self slideCreationBarLayoutFrame;
		name: #SlideCreationBar;
		children: OrderedCollection new;
		yourself