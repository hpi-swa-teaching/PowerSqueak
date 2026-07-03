toolbuilder
createWindowSpec: aBuilder

	^ aBuilder pluggableWindowSpec new
		model: self;
		label: 'Scripting API';
		minimumExtent: self class defaultWindowExtent;
		extent: self class defaultWindowExtent;
		children: OrderedCollection new;
		yourself