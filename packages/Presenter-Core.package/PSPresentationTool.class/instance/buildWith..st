toolbuilder
buildWith: builder

	| windowSpec panelSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'PowerSqueak';
		extent: 500 @ 300.
		
	panelSpec := builder pluggablePanelSpec new.
	panelSpec
		model: self;
		frame: (0@0 corner: 1@1).
		
	^ builder build: windowSpec