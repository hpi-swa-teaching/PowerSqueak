as yet unclassified
createScriptingAPISpec: aBuilder

	^ aBuilder pluggableWindowSpec new
		model: self;
		label: 'Scripting API';
		minimumExtent: 300@200;
		extent: 300 @ 200;
		children: OrderedCollection new;
		yourself