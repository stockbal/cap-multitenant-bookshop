sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/mycompany/viewbooks/test/integration/FirstJourney',
		'com/mycompany/viewbooks/test/integration/pages/BooksList',
		'com/mycompany/viewbooks/test/integration/pages/BooksObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/mycompany/viewbooks') + '/index.html'
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