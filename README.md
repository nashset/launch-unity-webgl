# launch-unity-webgl

Allows you to launch Unity WebGL builds without having to "Build and Run" it.

Every. Single. Time.

Just place the batch file in the same directory as your WebGL build's "index.html", run it,
and it should automatically open in your default web-browser.

![example](https://github.com/nashset/launch-unity-webgl/assets/160681001/314277fc-d51c-4415-a75d-6ab069d1b199)

*REQUIRES PYTHON INSTALLATION.

*"Unable to parse Build/MyGame.framework.js.gz!" - Enable "Decompression Fallback" when making test builds. This will make the build size larger, but it should work. Just remember to turn it off when making an actual release build.
![decompressionFallbacj](https://github.com/nashset/launch-unity-webgl/assets/160681001/90f71408-a214-4722-9dab-a4f604d0d06d)
*Hit "Ctrl + Shift + R" to hard-reload the build.

*Includes a bash version for Linux users.

*OPTIONAL: One line of code will allow you to run a python installation via shortcut if you prefer that way.

*The line of code allowing you to access the build from another computer technically works,
then stalls completely.
Just use itch.io at that point.

*Perhaps one shouldn't use Unity at all.
