toolbuilder
createMiniatureViewSpec: aBuilder 
	
	^ aBuilder pluggableScrollPaneSpec new
		model: self;
		frame: self miniatureViewLayoutFrame;
		name: #MiniatureView;
		vScrollBarPolicy: #always;
		horizontalResizing: #spaceFill;
		layout: #vertical;
		wantsResizeHandles: false;
		children: #slideMiniatures;
		yourself