toolbuilder
buildWith: builder

	| windowSpec panelSpec window |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'PowerSqueak';
		extent: 500 @ 300;
		children: OrderedCollection new.
		
	panelSpec := builder pluggablePanelSpec new.
	panelSpec
		model: self;
		frame: (0@0.1 corner: 1@1);
		name: #viewportSlide;
		children: OrderedCollection new.
	windowSpec children add: panelSpec.
	
	window := builder build: windowSpec.
	self viewportSlide: (builder widgetAt: #viewportSlide).
	self slideContainer: PSSlideContainer new.
	self viewportSlide addMorph: self slideContainer fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1)).
	
	^ window