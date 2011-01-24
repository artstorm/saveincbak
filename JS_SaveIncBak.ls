// ******************************
// Modeler LScript: Save with incremental backups
// Version: 1.0
// Author: Johan Steen
// Date: 27 Jun 2008
// Description: Backups the last saved version of the .lwo file into it's own
//              backup directory with incrementions.
//              And then saves the latest updates over the original .lwo file.
//
// http://www.artstorm.net
// ******************************

@version 2.4
@warnings
@script modeler
@name "JS_SaveIncrementalBackups"

// global values go here

main
{
    //
    // Collect data from the currently active mesh object, and content environment
    // --------------------------------------------------------------------------------
    objFile = Mesh(0).filename;             // fullpath
    objName = Mesh(0).name;                 // object name

    // Check so the object has been saved once
    if(objFile == nil)
    {
        error("<br>The object must be saved once, before incremental backups can be used.");
        return;
        // Commented out if I want to make a default saver down the road
        //objDir = getdir("Objects");
        //if((getObjFile = getfile("Save Object As","*.lwo",objDir)) == nil)
        //return;
    }

    objPath = split(objFile);               // Get the path to the current object
    objPath = objPath[1] + objPath[2];
    bakPath = objPath + objName + "_backup";    // Path where the backup files are stored

    result = mkdir(bakPath);    // Returns 0 if folder was created


    //
    // Retrieve available backup files and calculate next version number
    // --------------------------------------------------------------------------------
    backupFiles = matchfiles(bakPath, objName + "*.lwo");       // Find all matching backup files

    // Extract the version numbers from the files and put them into an array
    versionArray = nil;
    for (i = 1; i < backupFiles.count()+1; i++)
    {
        versionArray[i] = strleft(strright(backupFiles[i],7),3);
    }

    // If no backup files existed, start up a new array
    if (backupFiles.count() == 0) { versionArray[1] = 0; }

    // Descending Array Sort to get the highest number first
    versionArray.sortD();           

    // Add 1 to the highest currently available number
    nextVersion = versionArray[1].asInt() + 1;

    // See if a 0 string prefix needs to be added
    verPrefix = "";
    if (nextVersion < 100) { verPrefix = "0"; }
    if (nextVersion < 10) { verPrefix = "00"; }

    // Add 0's before the version number if needed
    nextVersion = verPrefix + nextVersion.asStr();


    //
    // Perform the file operations
    // --------------------------------------------------------------------------------

    // Build the path to the backup file
    bakFile = bakPath + "\\" + objName + "_v" + nextVersion + ".lwo";

    // Copy the old object file to the backup file
    filecopy(objFile, bakFile);

    // Save the newest version to the object file
    save(objFile);
}




