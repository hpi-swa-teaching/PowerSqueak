menu bar
openFileMenu

	self openMenuWith: {
		{'Save' . #savePresentation}.
		{'Load' . #loadPresentation}.
		{'Export as PNGs' . #exportAsPNGs}
	}
		