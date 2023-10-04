Welcome to the Joey 64 Auto Loader batch file for Retroarch!

The purpose of this batch file is to load physical N64 games and their saves directly into Mupen 64 Plus Next within Retroarch without any extra work or effort from the player. Once configured, all you have to do is run the bat file and your physical carts save will be converted and moved into Retroarch to be used with the ROM file from the cart. Once playing has concluded, the save is converted back into its original cartridge format and placed back on the cart to be used on real N64 hardware! All N64 save types are supported!

Since this is my first attempt at this type of batch file, it likely isn't as seamless as it could be so here are the current setup steps.

Video Guide:

1: Install Retroarch and download the Mupen 64 Plus Next core from the online updater.

2: Add your Retroarch directory to your Windows PATH entries. Using the run command (Win+R) load (rundll32.exe sysdm.cpl,EditEnvironmentVariables) and under User Variables for (your current user name) double click on Path. Inside the Environment variable list click on New and paste the directory for your Retro arch folder containing the Retroarch exe. The easiest way to do so is to right-click retroarch.exe, select properties, and copy the entirety of the location field. once added to the Path click OK and close out of it.

3: Purchase a Joey 64 if you don't already have one from one of the retailers listed below.

Benn Venn (Australia): https://bennvenn.myshopify.com/products/joeyn64-cart-flasher

High Score Tech (USA): https://highscoretech.myshopify.com/products/bennvenn-joey-n64-cartridge-flasher

Zed Labz (Europe): https://www.zedlabz.com/collections/retro-nintendo-n64/products/joey-junior-plug-play-writer-flasher-for-n64-usb-c-game-cartridge-backup-adapter-nintendo-64-with-3d-printed-enclosure-benn-venn

4: Update The Joey 64 to the latest version using instructions provided at: https://bennvenn.myshopify.com/products/joeyn64-cart-flasher

5: With The Joey 64 plugged into your PC, open the MODE text document and ensure that Z64 is the selected operating mode in the first line of text, and save it.

6: Download and place the Joey_64_Auto_Loader folder wherever you would like to keep it on your PC.

7: Right-click the bat file and select edit. Windows 11 users may need to click show more options for edit to appear.

8: Edit the pertinent areas of the bat file with the info requested.

"Drive Letter To Your Joey 64" = The assigned drive letter Windows gave your Joey 64. Replace everything in quotations with the single drive letter assigned (Example: E) I left the rest of the formatting in place to make it easier.

"Path To Your Joey Auto Loader Folder" = The directory you have your Joey_64_Auto_loader folder. The easiest way to populate the field is to right-click on the bat file, select properties, and copy the location field. Replace the quotes and everything within with this copied directory.

"Path To Your Retroarch Directory" = The directory you have Retroarch installed. The easiest way to do so is to right-click retroarch.exe, select properties, and copy the entirety of the location field. Replace the quotes and everything within with this copied directory.

Once finished save the file.

9: Insert the desired N64 game into the Joey 64 and plug it into your USB port. 

10: Run Load_N64.bat and the process of loading your physical cartridge and saves will commence!
Initial load times can take a bit due to the transfer speed of the Joey 64 so larger games will take a longer time to pop up.

11: When finished playing, save your game like you would on a physical N64 (Save States won't transfer to a physical cart) and close Retroarch. The save file will now be moved back into the cart.

12: Repeat with any game desired!

This batch file wouldn't exist without the Joey 64 from Benn Venn (https://bennvenn.myshopify.com/products/joeyn64-cart-flasher) and the ra_mp64_srm_convert program from @drehren (https://github.com/drehren/ra_mp64_srm_convert)!
