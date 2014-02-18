# activeadmin-settings-examples

An example application to test new localization feature of [activeadmin-settings](https://github.com/maximgladkov/activeadmin-settings) gem.

### Installation

    git clone git@github.com:maximgladkov/activeadmin-settings-example.git

### Configuration

After clone you should find a basic rails 4 application. To try different configuration options, you can edit `config/application.rb` file.

By changing `available_locales` you can add/remove locales available for settings.

    config.i18n.default_locale = :en
    config.i18n.available_locales = [:en, :ru]
    
To test settings go to `config/activeadmin_settings.yml`. Default values can now be set up for each locale independetly, e.g.:

    SEO:
        Website Keywords:
             description:    These keywords are included in homepage header meta tag
             default_value:  
                 en: sample english text
                 ru: sample russian text
                 de: sample german text

Localized settings could be integrated into templates, modules, controllers as usual. If no locale or nil is passed as a 2nd parameter, default locale is used. For example:

     <%= settings_value("CEO Message") %> #=> provides html in default locale
     <%= settings_value("CEO Message", :de) %> #=> provides html in german

If setting value is `null` or an empty string default setting value is used which is defined in `config/activeadmin_settings.yml`. The language of the default value is determined by locale passed. If locale was not passed, default is used.