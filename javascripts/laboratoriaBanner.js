(function() {
  'use strict';
  var LaboratoriaBanner, banner;

  LaboratoriaBanner = function() {
    this.labBanner = document.getElementById('laboratoria-banner');
    this.template = '<div class="laboratoria-icon" style="background-image: url(https://cdn.rawgit.com/Laboratoria/Laboratoria.02/master/LaboratoriaBanner/img/laboratoria-icon-black.png)"></div> <div class="laboratoria-label"> <p>Proyecto desarrollado por<br><a href="http://laboratoria.la" target="_blank">laboratoria.la</a></p> </div>';
  };

  LaboratoriaBanner.prototype.appendStyles = function() {
    var labStyles;
    labStyles = document.createElement('link');
    labStyles.type = 'text/css';
    labStyles.rel = 'stylesheet';
    labStyles.href = 'https://cdn.rawgit.com/Laboratoria/Laboratoria.02/master/LaboratoriaBanner/css/laboratoria-banner.css';
    document.getElementsByTagName("head")[0].appendChild(labStyles);
  };

  LaboratoriaBanner.prototype.appendTemplateToElement = function() {
    // console.log(this.labBanner);
    this.labBanner.innerHTML = this.template;
  };

  banner = new LaboratoriaBanner();

  banner.appendStyles();

  banner.appendTemplateToElement();

}).call(this);