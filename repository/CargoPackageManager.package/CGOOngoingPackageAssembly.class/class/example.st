example
example
	^ (self for: #TestAssembly)
		description: 'A simple ongoing package assembly.';
		parts: #('Unit1' 'Unit2');
		project: (CGOOngoingProject named: #MyProject);
		yourself