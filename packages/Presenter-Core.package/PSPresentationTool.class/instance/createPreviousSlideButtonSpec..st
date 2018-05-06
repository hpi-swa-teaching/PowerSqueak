toolbuilder
createPreviousSlideButtonSpec: aBuilder

	| buttonSpec |
	buttonSpec := aBuilder pluggableButtonSpec new.
	buttonSpec
		model: self;
		frame: (0.15@0.0 corner: 0.2@1.0);
		name: #AddSlideButton;
		label: '<';
		action: #previousSlide.
	^ buttonSpec