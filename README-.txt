Save with Incremental Backups v1.0
==================================
LightWave Modeler LScript by Johan Steen.


Description
===========
Save with Incremental Backups creates a new folder in the same folder
that the object is stored called objectName_backup.

Each time the plugin is executed it copies the last saved version of the
current object into the backup folder naming it objectName_vxxx.lwo where
xxx is the current version number, which increments on each save.
When the last saved object has copied into the backup folder the current 
version in modeler gets saved as the latest original objectName.lwo file.


Usage
=====
My advise is map the tool to a keyboard shortcut in modeler.
Then all you have to do is press selected key combination each time you
want to save the object with the old version stored as a backup.


Parameters
==========
- None


Installation
============
- Copy the JS_SaveIncBak.lsc to LightWave's plug-in folder.
- If "Autoscan Plugins" is enabled, just restart LightWave and it's installed.

- Else located the "Add Plugins" button in LightWave and add it manually.


Author
======
This tool is written by Johan Steen.
Contact me through http://www.artstorm.net/


History
=======
27 Jun 2008:
  - Release of version 1.0.


Disclaimer / Legal Stuff
========================
Save with Incremental Backups is freeware. 
Please do not distribute or re-post this 
tool without the author's permission.

Save with Incremental Backups is provided "as is" without 
warranty of any kind, either express or implied,
no liability for consequential damages.

By installing and or using this software
you agree to the terms above.

Copyright © 2008 Johan Steen.