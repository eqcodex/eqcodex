const webfontsGenerator = require('webfonts-generator');
const svgPath = 'svg/';
const fs = require('fs');

let files = fs.readdirSync(svgPath);
files = files.filter( function( elm ) {return elm.match(/.*\.(svg)/ig);});
files = files.map(el => 'svg/' + el);

webfontsGenerator({
  files: files,
  dest: 'static/fonts/',
  fontName: "eqcodex",
  writeFiles: true,
  templateOptions: {
      classPrefix: "xa-",
      baseSelector: ".xa"
  },
  cssFontsUrl: "/fonts",
  cssDest: "scss/xa.css"
  //cssDest: "../scss/eqcodex.css"
}, function(error) {
  if (error) {
    console.log('Fail!', error);
  } else {
    console.log('Done!');
  }
})