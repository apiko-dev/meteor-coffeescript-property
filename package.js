Package.describe({
  name: 'jss:coffeescript-property',
  version: '0.0.1',
  summary: 'Create a property in CoffeeScript easy!',
  git: 'https://github.com/JSSolutions/meteor-coffeescript-property',
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('1.1.0.2');
  api.addFiles('coffeescript-property.js');
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('coffeescript');
  api.use('underscore');
  api.use('jss:coffeescript-property');
  api.addFiles('coffeescript-property-tests.coffee');
});
