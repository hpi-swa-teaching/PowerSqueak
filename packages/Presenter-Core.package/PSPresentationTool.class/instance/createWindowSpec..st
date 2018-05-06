toolbuilder
createWindowSpec: aBuilder

	| windowSpec |
	windowSpec := aBuilder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'PowerSqueak';
		extent: 500 @ 300;
		children: OrderedCollection new.
	^ windowSpec