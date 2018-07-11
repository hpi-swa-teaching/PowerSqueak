toolbuilder
createSlideNumberLabelSpec: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		name: #SlideNumberLabel;
		frame: (0.2@0.0 corner: 0.3@1.0);
		getText: #slideNumberString;
		setText: #slideNumberString:;
		yourself