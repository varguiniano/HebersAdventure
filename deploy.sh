#!/bin/bash
#Line endings are now \n


clear

echo "Remember to compile on RGP Maker, push to GitHub and update the version server first!"
echo "Press enter to continue..."
read

echo
echo "Deleting old release folders..."
if [ -d "HebersAdventure" ]; then rm -Rf HebersAdventure; fi

echo "Ready for new release"
echo "Enter version:"
read version

echo "Preparing release version: $version"

echo
echo "Copying files..."
mkdir HebersAdventure
echo

echo "Copying license..."
cp LICENSE HebersAdventure/LICENSE

echo "Copying exe..."
cp Game.exe HebersAdventure/game.exe

echo "Copying dlls..."
cp gif.dll HebersAdventure/gif.dll
cp RGSS102E.dll HebersAdventure/RGSS102E.dll
cp RGSS104E.dll HebersAdventure/RGSS104E.dll
cp rubyscreen.dll HebersAdventure/rubyscreen.dll

echo "Copying ini..."
cp Game.ini HebersAdventure/Game.ini

echo
echo

echo "Copying audio assets..."
cp -r Audio HebersAdventure/Audio

echo "Copying data files..."
cp -r Data HebersAdventure/Data

echo "Copying font assets..."
cp -r Fonts HebersAdventure/Fonts

echo "Copying graphic assets..."
cp -r Graphics HebersAdventure/Graphics

echo "Copying RPG Maker framework (RTP)..."
cp -r Standard HebersAdventure/Standard

echo
echo "All files copied."
echo "Creating zip"
echo

7z a -tzip HebersAdventure-$version.zip HebersAdventure/*

echo "Zip created!"
echo "Cleaning up..."
rm -r HebersAdventure

echo
echo "All done!"
echo "Ready to create installer, you'll have to do that manually for now."
echo "Press enter to close..."
read
echo