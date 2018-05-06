toolbuilder
createDeleteSlideButtonSpec: aBuilder

	| buttonSpec |
	buttonSpec := aBuilder pluggableButtonSpec new.
	buttonSpec
		model: self;
		frame: (0.4@0.0 corner: 0.55@1.0);
		name: #AddSlideButton;
		label: 'Delete Slide';
		action: #deleteSlide.
	^ buttonSpec