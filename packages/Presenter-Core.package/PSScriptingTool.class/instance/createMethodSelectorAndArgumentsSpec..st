as yet unclassified
createMethodSelectorAndArgumentsSpec: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		readOnly: true;
		getText: #methodSelectorAndArguments;
		frame: (0.3@0 corner: 1@0.1);
		name: #MethodSelectorAndArguments;
		yourself