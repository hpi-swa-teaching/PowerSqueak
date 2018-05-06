toolbuilder
createButtonBarTopSpec: aBuilder 
	| panelSpec buttonAddSlideSpec buttonDeleteSlideSpec buttonNextSlideSpec buttonPreviousSlideSpec buttonSelectSlideSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec
		model: self;
		frame: (0@0 corner: 1@0.1);
		name: #ButtonBarTop;
		children: OrderedCollection new.
	buttonAddSlideSpec := self createAddSlideButtonSpec: aBuilder.
	buttonDeleteSlideSpec := self createDeleteSlideButtonSpec: aBuilder.
	buttonPreviousSlideSpec := self createPreviousSlideButtonSpec: aBuilder.
	buttonNextSlideSpec := self createNextSlideButtonSpec: aBuilder.
	buttonSelectSlideSpec := self createSelectSlideButtonSpec: aBuilder.
	panelSpec children 
		add: buttonAddSlideSpec;
		add: buttonDeleteSlideSpec;
		add: buttonNextSlideSpec;
		add: buttonPreviousSlideSpec;
		add: buttonSelectSlideSpec.
	^ panelSpec