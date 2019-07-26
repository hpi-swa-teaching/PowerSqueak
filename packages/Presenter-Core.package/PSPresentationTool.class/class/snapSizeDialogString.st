constants
snapSizeDialogString
		
		^	'Choose your snap size between {1} and {2}' 
			format: {self minSnapSize . self maxSnapSize}