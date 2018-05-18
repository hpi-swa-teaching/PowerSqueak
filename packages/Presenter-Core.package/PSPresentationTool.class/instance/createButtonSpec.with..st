toolbuilder
createButtonSpec: aDictionary with: aBuilder

	| buttonSpec |
	buttonSpec := aBuilder pluggableButtonSpec new.
	^ buttonSpec
		model: (aDictionary at: #model ifAbsent: self);
		frame: (aDictionary at: #frame);
		name: (aDictionary at: #name ifAbsent: 'a Button');
		label: (aDictionary at: #label ifAbsent: 'Unlabeled button');
		action: (aDictionary at: #action ifAbsent: nil);
		help: (aDictionary at: #help ifAbsent: nil);
		yourself