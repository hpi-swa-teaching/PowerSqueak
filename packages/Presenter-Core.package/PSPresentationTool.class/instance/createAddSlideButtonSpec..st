toolbuilder
createAddSlideButtonSpec: aBuilder

	| buttonSpec |
	buttonSpec := aBuilder pluggableButtonSpec new.
	buttonSpec
		model: self;
		frame: (0.1@0.1 corner: 0.2@0.9);
		name: #AddSlideButton;
		label: 'Create Slide';
		action: #createSlide.
	^ buttonSpec