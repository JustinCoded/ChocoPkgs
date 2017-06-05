var target = Argument("target", "Default");

//////////////////////////////////////////////////////////////////////
// PREPARATION
//////////////////////////////////////////////////////////////////////

// Define directories.
var buildDir = Directory("./.build");

//////////////////////////////////////////////////////////////////////
// TASKS
//////////////////////////////////////////////////////////////////////

Task("Clean")
    .Does(() =>{
    EnsureDirectoryExists(buildDir);
    CleanDirectory(buildDir);
});

Task("Default")
  .IsDependentOn("Clean")
  .Does(() =>
{
      var chocolateyPackSettings   = new ChocolateyPackSettings {};
      var nuspecFiles = GetFiles("**/*.nuspec"); 
      ChocolateyPack(nuspecFiles, chocolateyPackSettings);

      var nupkgFiles = GetFiles("**/*.nupkg");
      MoveFiles(nupkgFiles, buildDir);

      DeleteFile("./.build/Cake.nupkg");
});

RunTarget(target);