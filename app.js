'use strict';

import HelloController from './HelloController.js';

let applicationName = 'helloApp';
angular.module(applicationName, []).controller('HelloController', HelloController);

angular.bootstrap(document, [applicationName]);

