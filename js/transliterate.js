      // Load the Google Transliterate API
      google.load("elements", "1", {
            packages: "transliteration"
          });

      function onLoad() {
        var options = {
          sourceLanguage: 'en', // or google.elements.transliteration.LanguageCode.ENGLISH,
          destinationLanguage: ['ne'], // or [google.elements.transliteration.LanguageCode.NEPALI],
          shortcutKey: 'ctrl+g',
          transliterationEnabled: true
        };
        // Create an instance on TransliterationControl with the required
        // options.
        var control =
            new google.elements.transliteration.TransliterationControl(options);

        // Enable transliteration in the textfields with the given ids.
        var ids = [ "transl1", "transl2", "transl3", "transl4", "nameInputSubmit", "nameInputSubmit1" ];
        control.makeTransliteratable(ids);

        // Show the transliteration control which can be used to toggle between
        // control.showControl('translControl');
      }
      google.setOnLoadCallback(onLoad);