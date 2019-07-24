as yet unclassified
createCodePaneSpec: aBuilder

	^ aBuilder pluggableCodePaneSpec new
		model: self;
		getText: #code;
		setText: #code:;
		frame: (0.3@0.1 corner: 1@1);
		name: #CodePane;
		yourself
		