preferences
showLogoInPresentationMode


	<preference: 'Show PowerSqueak logo in presentation mode' 
		category: 'PowerSqueak'
		description: 'Show the PowerSqueak logo in the bottom right corner while in presentation mode'
		type: #Boolean>
	^ ShowLogoInPresentationMode ifNil: [false]
