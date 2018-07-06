toolbuilder
createButtonSpec: aDictionary with: aBuilder

	^ aBuilder pluggableButtonSpec new
		style: #none;
		model: (aDictionary at: #model ifAbsent: self);
		frame: (aDictionary at: #frame);
		name: (aDictionary at: #name ifAbsent: 'a Button');
		label: (aDictionary at: #label ifAbsent: 'Unlabeled button');
		action: (aDictionary at: #action ifAbsent: nil);
		help: (aDictionary at: #help ifAbsent: nil);
		color: (aDictionary at: #color ifAbsent: nil);
		yourself