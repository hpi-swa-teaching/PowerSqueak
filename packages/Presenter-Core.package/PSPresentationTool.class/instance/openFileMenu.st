menu bar
openFileMenu

	self openMenuWith: {
		{'Edit name' . #editName}.
		{'Save' . #savePresentation}.
		{'Load' . #loadPresentation}.
		{'Export as PNGs' . #exportAsPNGs}.
	}
		