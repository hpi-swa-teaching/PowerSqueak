initialize-release
initialize

	super initialize.
	self 
		layoutPolicy: ProportionalLayout new;
		beTransparent;
		borderColor: nil
	"self color: Color transparent"