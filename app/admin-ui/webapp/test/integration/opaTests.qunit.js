sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/mycompany/adminui/test/integration/FirstJourney',
		'com/mycompany/adminui/test/integration/pages/BooksList',
		'com/mycompany/adminui/test/integration/pages/BooksObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/mycompany/adminui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBooksList: BooksList,
					onTheBooksObjectPage: BooksObjectPage
                }
            },
            opaJourney.run
        );
    }
);