# audio-setup-autohotkey

This is the perfect setup to loopback system audio and manipulate it in a VST Host like Image-Line's MiniHost Modular. This can be  used, for example, to correct system-wise audio devices like headphones or speakers to specific EQ curves using advanced EQ VSTs.
This process leads to a self setting up audio routing environment at boot time (after log on).

Requirements:
- Voicemeeter Banana (Free)
https://www.vb-audio.com/Voicemeeter/banana.htm
- Image-Line MiniHost Modular (Free)
http://www.image-line.com/documents/news.php?entry_id=1391136116
- AutoHotkey (Installer version) (Free)
https://www.autohotkey.com/

Setup Voicemeeter Banana:
- In Windows choose as playback device "Voicemeeter Aux Input".
- Output Virtual Input "Voicemeeter VAIO" to only A1.
- Output Virtual Input "Voicemeeter AUX" to only B1.
- Be sure that the program is set to "System Tray (Run at Startup)" under MENU.

Setup MiniHost Modular:
- In "preferences" choose "ASIO" as Audio Device Type and "Voicemeeter Virtual ASIO" as Device.
- Create a audio routing graph with the specific plugins you want to use and save it with the name "System Audio Routing" (or name it how you want, but change the name in the script accordingly).

AutoHotkey script:
- Click right on the script and compile it. Remember its directory position.

Setup Task Scheduler:
- Create a new basic task
- Choose a name
- Trigger: "When I log on"
- Action: "Start a program"
- Browse for the AutoHotkey script
- Finish

Congratulations! You are done!
