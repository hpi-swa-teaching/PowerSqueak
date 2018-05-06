toolbuilder
createSelectSlideButtonSpec: aBuilder

	| buttonSpec |
	buttonSpec := aBuilder pluggableButtonSpec new.
	buttonSpec
		model: self;
		frame: (0.8@0.0 corner: 1.0@1.0);
		name: #AddSlideButton;
		label: 'Select slide';
		action: #openSlideSelectionDialog.
	^ buttonSpec