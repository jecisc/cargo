helpers
oneDependencyPackage
	
	^ CGOPackageVersion newFrom: 
		( Dictionary new
			add: #package -> #'OneDependency';
			add: #version -> '1.0';
			add: #dependencies ->  { #'NoDependencies' -> #('=17') };
			add: #provisions -> #();
			add: #description -> 'no dependencies';
			add: #repositories -> #();
			add: #file -> '';
			add: #platformRequirements -> #();
			add: #timestamp -> DateAndTime now;
			yourself )