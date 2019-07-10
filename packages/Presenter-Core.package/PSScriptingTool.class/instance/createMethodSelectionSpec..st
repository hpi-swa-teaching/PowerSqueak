as yet unclassified
createMethodSelectionSpec: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		frame: (0@0 corner: 0.3@1);
		setIndex: #selectIndex:;
		name: #MethodList;
		list: #scriptingAPIMethods;
		yourself