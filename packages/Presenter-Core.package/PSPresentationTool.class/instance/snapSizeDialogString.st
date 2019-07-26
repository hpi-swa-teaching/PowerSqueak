slide management
snapSizeDialogString
		
		^	'Choose your snap size between {1} and {2}' 
			format: {self class minSnapSize . self class maxSnapSize}