**description**<br/>
chatter is a proof of concept osint monitoring telegram bot for windows (server, ideally) that monitors twitter hashtags, reddit titles and 4chan post content for specific keywords - as well as phrases in quotation marks. it feeds discovered content to a telegram group of your choosing in near real-time depending on your configuration settings. this is an [early release with limited features](https://github.com/visualbasic6/subdomain-bruteforce). i'm easily distracted and good at those.

**ss**<br/>
![ss](https://github.com/visualbasic6/chatter/raw/master/ss.gif)

**how to run chatter**<br/>
download and unzip https://github.com/visualbasic6/chatter/archive/master.zip. it's in \bin

\config\apikey.txt place your telegram bot api key here

\config\chatid.txt place the numerical id of your telegram group here. this can be identified with https://core.telegram.org/bots/api#getupdates after you have added your bot into your group.

the other files in \config\ are self-explanatory and already structured for your additions/removals of reddit and 4chan areas and keywords. keywords are treated as hashtags on twitter, submission titles on reddit and post content on 4chan. you may place phrases in quotes in addition to keywords.

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
