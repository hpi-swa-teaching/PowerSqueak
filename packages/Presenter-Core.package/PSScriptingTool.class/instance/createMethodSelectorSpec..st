as yet unclassified
createMethodSelectorSpec: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		frame: (0@0 corner: 0.3@1);
		setSelected: #updateContent:;
		name: #MethodList;
		list: #scriptingAPIMethods;
		yourself