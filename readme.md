**description**<br/>
chatter is a proof of concept osint monitoring telegram bot for windows (server, ideally) that monitors tweet content, reddit submission titles and 4chan post content for specific keywords - as well as phrases in quotation marks. it feeds discovered content to a telegram group of your choosing in near real-time depending on your configuration settings. this is an early beta release with limited features.

ping kevin@envadr.io if you think a custom version of chatter could be of use to your organization.

**video (click to watch)**<br/>
[![Chatter - Internet Monitoring for Windows](https://github.com/visualbasic6/chatter/raw/master/ss.gif)](https://www.youtube.com/watch?v=zhQ8ztWAmlk "Chatter - Internet Monitoring for Windows")

**telegram bot reporting**<br/>
![reporting](https://i.imgur.com/3uRhvnx.png)

**how to run chatter**<br/>
download and unzip https://github.com/visualbasic6/chatter/archive/master.zip. it's in \bin

place your telegram bot api key here: \config\apikey.txt

place the numerical chat id of your telegram group here: \config\chatid.txt<br/><br/>
your chat id can be found with https://core.telegram.org/bots/api#getupdates

the other files in \config\ are self-explanatory and structured with examples. keywords are treated as hashtags on twitter, submission titles on reddit and post content on 4chan. you may place phrases in quotes in addition to keywords.

the format of targets.txt is
service:area:apicreds(unnecessary):minutesbetweencrawl
e.g. reddit:cryptocurrency:n/a:5

populate these files prior to running the .exe or chatter will fail. it is best to use chatter with a windows server to set it and forget it.

**compile from source**<br/>
\<laughs in quadruple og\>

**roadmap, misc. notes**<br/>
1. monitoring more public facing areas (google, google news, fb, youtube, etc.)
2. monitoring topic-centric private areas (telegram, discord, slack, fb groups, etc.)
3. automated [this](https://pastebin.com/raw/irj4Fyd5) with conversational ai (yeah probably won't do this)
4. web front
5. admin cmds in telegram groups e.g. twitter black/whitelisting to reduce noise

**greetz**<br/>
[justinakapaste.com](https://justinakapaste.com) and all of my elderly aol hackers
