# HYPR CONF TO LUA FOR NOCTALIA V4 USERS THAT USES HYPRLAND 0.55+

hyprConfToLua.py
Hyprlang (.conf) → Lua (Hyprland 0.55+)

PLEASE DO BACKUP BEFORE TESTING, PLEASEEEE.

I made easy script to use with hyprland.lua 

# first step is add this line end of file or begining of file of hyprland.lua in your "/.config/hypr" folder

require("noctalia-colors")

# 2nd step 

 extract the files that is included by made into already made noctalia subfolder in your hypr folder if not availble go into noctalia control center by click the owl icon on your panel and go to color scheme then goto templates to activate template presets : "hyprland"
 its very important to have this file made by noctalia : "noctalia-colors.conf"
 
 it will auto generated color profile for every wallpaper changes or your noctalia plugins that use this feature 
 
# 3rd step 

copy or move this made bash script "noctalia.sh" into either "/usr/bin" foler or your "/usr/local/bin" for easier location without entire bin files to sort through
then goto your noctalia owl icon control-center again, this time you will use noctalia hooks to execute comands automatic by activate it and goto to hooks subpanel options , look for only Colors generated,  click on edit icon... the launch window will appear to add your command with this in the line : "bash noctalia.sh"


when everything your wallpaper or video wallpaper manager plugin select any wallpaper or video. It will execute the script to convert what noctalia-colors.conf already injected the table to noctalia-colors.lua format table for hyprland.lua that understand new language. This now done automatic when wallpaper changes will match border colors to video or image is loaded. This is only thing works for noctalia v4 since v5 is not yet ready and plugins that use now is not supported since its alpha version of rewrite code is no longer using QML due to vaxry or whatever his name is now. He giving entire hyprland community headaches and frustration for this change from conf to lua. Sure lua is great but for entire comunity using it is different story as noctalia is not prepare for this change aren't only ones rewriting the code. I hope he does not make another radical changes. I like hyprland but he starting getting my nerves of fixing his mistakes to get everything is attach to noctalia from plugins , mpd, easy effects, openrgb profile, my hyprshell external plugin that works through hyprland and mpDris2. Lot more i have running are into chain code to make it work with this environment is not just colors and theme looks. Functinality goes with it also he has to make sure its working as well, i am surprise the animations part is not broken yet. Will see but for now. I have lot patience for his amazing work , as i expected all this gonna be lot easier in noctalia v5 finalize to have all plugins remade and working again. Thank your hardwork , its i why they are good team to be its supporter and continue their support, I thank the creator of hyprConfToLua.py script that can do more than just color binding conversions.. He still need more todo as he explain on botton that key binds still not yet working with this script but since noctalia v5 already input some on their site and exmaple file of hyprland.lua already including important things for user can edit their liking but remember copilot is good ai tool if you come accross error messages. Believe me, i have  dealt a lot trial and error when all this chaos begin with vaxerski , vaxry, or whatever what he or she or them or they or what it want to be called , i just don't care for his identity crisis he is in that effecting his decision with languange identiy crisis as well that i have deal with his bs every day like this. So i have say this quiet part the obvious outloud for him to read this. WE ALL ARE LINK TO HIS WINDOW MANAGER , ANYTHING HE DOES , EFFECT ALL OP US WHO ARE CREATING WORKFLOW  AND USING IT, THATS ALL I HAVE TO SAY NOW. PEACE OUT and CONTIUNE IMPROVE YOUR WORK.
 
## Usage:
    python hyprConfToLua.py input.conf -o output.lua
    python hyprConfToLua.py input.conf # print to stdout
    python hyprConfToLua.py input.conf --dir ./dir  # try to convert recursibly (or whatever, currently not working)

## TODO:
- [ ] Animations and Beizer
- [ ] Variables/Input
- [ ] Touchpad
- [ ] Gestures
- [x] Binds
- [ ] Layouts

## Contribs
- Before making a PR please test first with an example file.
- Clankers(AI) are accepted, but for the love of god, check the output first.
- Be nice!
