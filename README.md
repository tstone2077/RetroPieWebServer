# RetroPieWebServer
A simple web server control for RetroPie.  This can be used to reboot the box, restart emulation station, or kill a rogue emulator process.

Installation:
to install the webserver, simply clone the repo and run:

```
bash install.sh
```
This will install lighttpd and php as needed.  It will set the permissions and move the necessary files to /var/www.

At that point, you just need to load http://retropie/ and you can reboot your server and/or emulationstation from any browser (use your phone as a remote).
