toolbuilder
createWindowSpec: aBuilder

	^ aBuilder pluggableWindowSpec new
		model: self;
		label: #windowTitle;
		minimumExtent: self class defaultWindowExtent;
		extent: self class defaultWindowExtent;
		children: OrderedCollection new;
		yourself