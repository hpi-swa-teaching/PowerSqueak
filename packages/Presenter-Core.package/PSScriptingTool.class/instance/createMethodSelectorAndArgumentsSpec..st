toolbuilder
createMethodSelectorAndArgumentsSpec: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		indicateUnacceptedChanges: false;
		readOnly: true ;
		getText: #methodSelectorAndArguments;
		frame: (0.3@0 corner: 1@0.1);
		name: #MethodSelectorAndArguments;
		yourself