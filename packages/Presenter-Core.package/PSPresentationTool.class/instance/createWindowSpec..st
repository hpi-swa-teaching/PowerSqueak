toolbuilder
createWindowSpec: aBuilder

	| windowSpec |
	windowSpec := aBuilder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'PowerSqueak';
		minimumExtent: 500@300;
		extent: 500 @ 300;
		children: OrderedCollection new.
	^ windowSpec