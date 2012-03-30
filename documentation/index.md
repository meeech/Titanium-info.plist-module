# plist-module Module

## Description

A module to allow reading of info.plist values at runtime. I built it to get access to the full version number for my app, so I could display it in-app.

## Accessing the plist-module Module

To access this module from JavaScript, you would do the following:

`
var plistmodule = require("com.meeech.plist");
`

## Reference
`
plistmodule.getValue('CFBundleVersion');
`

## Author

Mitchell Amihod
twitter: [meeech](http://www.twitter.com/meeech)

## License

See LICENSE doc.
