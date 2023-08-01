accessing
handleColor

	"As most themes won't support the handleColor, fall back to the default text color. This should have sufficient contrast the the slides background color."
	^ (self userInterfaceTheme handleColor ifNil: [UserInterfaceTheme current get: #textColor for: PluggableTextMorphPlus]) ifNil: [Color black]