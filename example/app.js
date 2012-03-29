var window = Ti.UI.createWindow({
	backgroundColor:'white'
});
var label = Ti.UI.createLabel();
window.add(label);
window.open();

var plistmodule = require('com.meeech.plist'),
    appVersion = plistmodule.getValue("CFBundleVersion");

Ti.API.info("module is => " + plistmodule);

label.text = "CFBundleVersion: " + appVersion;
