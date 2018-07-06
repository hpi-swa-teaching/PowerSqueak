toolbuilder
createWindowSpec: aBuilder

	^ aBuilder pluggableWindowSpec new
		model: self;
		label: 'PowerSqueak';
		minimumExtent: 500@300;
		extent: 500 @ 300;
		children: OrderedCollection new;
		yourself