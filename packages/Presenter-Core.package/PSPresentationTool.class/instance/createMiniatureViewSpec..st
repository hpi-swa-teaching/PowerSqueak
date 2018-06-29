toolbuilder
createMiniatureViewSpec: aBuilder 
	| panelSpec |
	panelSpec := aBuilder pluggableScrollPaneSpec new.
	panelSpec
		model: self;
		frame: self miniatureViewLayoutFrame;
		name: #MiniatureView;
		vScrollBarPolicy: #always;
		horizontalResizing: #spaceFill;
		layout: #vertical;
		wantsResizeHandles: false;
		children: #slideMiniatures.
	^ panelSpec