toolbuilder
createNextSlideButtonSpec: aBuilder

	| buttonSpec |
	buttonSpec := aBuilder pluggableButtonSpec new.
	buttonSpec
		model: self;
		frame: (0.2@0.0 corner: 0.25@1.0);
		name: #AddSlideButton;
		label: '>';
		action: #nextSlide.
	^ buttonSpec