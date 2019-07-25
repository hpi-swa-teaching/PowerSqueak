accessing
selectMethod: aSymbol
	
	self 
		selectedMethod: aSymbol;
		updateCode;
		changed: #methodSelectorAndArguments