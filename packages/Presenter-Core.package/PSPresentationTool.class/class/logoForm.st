logo
logoForm

	^ LogoForm ifNil: [
		LogoForm := (GitAssetLoader for: 'PowerSqueak' basePath: 'assets')
			loadForm: 'PowerSqueakLogo.png']
