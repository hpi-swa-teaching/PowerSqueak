baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Presenter-Core';
				package: 'Presenter-Tests' with: [spec requires: #('Presenter-Core')];
				yourself.
			spec
				group: 'default' with: #('Presenter-Core');
				group: 'tests' with: #('Presenter-Tests')];
				yourself.
			spec
				preLoadDoIt: #preLoad;
				postLoadDoIt: #postLoad.
