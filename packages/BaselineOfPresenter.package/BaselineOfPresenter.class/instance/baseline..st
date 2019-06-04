baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Presenter-Core';
				package: 'Presenter-Tests' with: [spec requires: #('Presenter-Core')].
			spec
				group: 'default' with: #('Presenter-Core');
				group: 'tests' with: #('Presenter-Tests').
			spec
				preLoadDoIt: #preLoad;
				postLoadDoIt: #postLoad].
	spec 
		for: #(#'squeak5.1.x' #'squeak5.2.x')
		do: [
			spec
				package: 'Presenter-Compatibility-Tests';
				package: 'Presenter-Tests' with: [spec requires: #('Presenter-Compatibility-Tests')]]
				
