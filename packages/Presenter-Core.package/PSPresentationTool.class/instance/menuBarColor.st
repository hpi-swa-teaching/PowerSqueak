toolbuilder
menuBarColor

	^ (UserInterfaceTheme current get: #color for: #PluggableButtonMorphPlus)
		ifNotNil: [:color | color darker]