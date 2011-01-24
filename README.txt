--------------------------------------------------------------------------------
 SaveIncBak - README

 SaveIncBak saves objects with incremental backups.
 
 Website:      http://www.artstorm.net/plugins/saveincbak/
 Project:      http://code.google.com/p/js-lightwave-lscripts/
 Feeds:        http://code.google.com/p/js-lightwave-lscripts/feeds
 
 Contents:
 
 * Installation
 * Usage
 * Source Code
 * Changelog
 * Credits

--------------------------------------------------------------------------------
 Installation
 
 General installation steps:

 * Copy the JS_SymmXMirror.lsc to LightWave's plug-in folder.
 * If "Autoscan Plugins"
   is enabled, just restart LightWave and it's installed.
 * Else locate the "Add Plugins" button in LightWave and add it manually.
 
 * Copy the JS_SaveIncBak.lsc to LightWave's plug-in folder.
 * If "Autoscan Plugins" is enabled, just restart LightWave and it's
   installed.
 * Else locate the "Add Plugins" button in LightWave and add it manually.
 
 My advise is map the tool to a keyboard shortcut in modeler.
 Then all you have to do is press selected key combination each time you
 want to save the object with the old version stored as a backup.
 
--------------------------------------------------------------------------------
 Usage

 SaveIncBak creates a new folder 
 in the same folder that the object is stored called objectName_backup.

 Each time the plugin is executed it moves the last saved version of the
 current object into the backup folder naming it objectName_v000.lwo where
 000 is the current version number, which increments on each save.
 When the last saved object has been moved into the backup folder the current 
 version in modeler gets saved as the latest original objectName.lwo file.

--------------------------------------------------------------------------------
 Source Code
 
 Download the source code:
 
   http://code.google.com/p/js-lightwave-lscripts/source/checkout

 You can check out the latest trunk or any previous tagged version via svn
 or explore the repository directly in your browser.
 
 Note that the default checkout path includes all my available LScripts, you
 might want to browse the repository first to get the path to the specific
 script's trunk or tag to download if you don't want to get them all.
 
--------------------------------------------------------------------------------
 Changelog

 * v1.1 - 29 Jun 2008:
   * Update to make the plugin work correctly on the Mac platform.
   * Shortened the internal name to JS_SaveIncBak.
 * v1.0 - 27 Jun 2008:
   * Release of version 1.0.   
   
--------------------------------------------------------------------------------
 Credits

 Johan Steen, http://www.artstorm.net/
 * Original author
 
