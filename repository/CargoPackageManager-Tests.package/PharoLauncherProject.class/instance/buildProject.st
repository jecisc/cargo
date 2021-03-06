building
buildProject
	project := (CGOOngoingProject for: #PharoLauncher)
		description:
			'Pharo Launcher is a cross-platform application that

    lets you manage your Pharo images (launch, rename, copy and delete);
    lets you download image templates (i.e., zip archives) from many different sources (e.g., Jenkins, files.pharo.org, and your local cache);
    lets you create new images from any template,
    automatically find and download the appropriate VM to launch your images.
';
		repository: self buildRepository;
		registry: registry;
		yourself