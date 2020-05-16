**description**<br/>
chatter is a proof of concept osint monitoring telegram bot for windows (server, ideally) that monitors tweet content, reddit submission titles and 4chan post content for specific keywords - as well as phrases in quotation marks. it feeds content that is discovered to your telegram group in near real-time depending on your configuration. this is an early beta release with limited features.

ping kevin@envadr.io if you think a custom version of chatter could be of use to your organization.

**video (click to watch)**<br/>
[![Chatter - Internet Monitoring for Windows](https://i.imgur.com/1jrvZo0.png)](https://www.youtube.com/watch?v=zhQ8ztWAmlk "Chatter - Internet Monitoring for Windows")

**telegram bot reporting**<br/>
![reporting](https://i.imgur.com/3uRhvnx.png)

**how to run chatter**<br/>
download and unzip https://github.com/visualbasic6/chatter/archive/master.zip.<br/><br/>

1. create your own bot for chatter on telegram with "botfather"<br/>
2. set the api key in \config\apikey.txt<br/>
3. add your bot to your group<br/>
3. pull your group's chat id with this api request https://core.telegram.org/bots/api#getupdates<br/>
4. set the chat id in \config\chatid.txt<br/>
5. run the .exe<br/>

you may need to run cmd.exe as admin and "regsvr32 {file.ocx}" if any launch errors unrelated to absent config files appear. 

the files in \config\ are self-explanatory and come with examples.

the format of targets.txt is
service:area:apicreds(unnecessary):minutesbetweencrawl
e.g. reddit:cryptocurrency:n/a:5

populate these files prior to running the .exe or chatter will fail. it is best to use chatter with a windows server to set it and forget it.

chatter was written in classic vb with an ssl wrapper making external api requests. because of this av may display false positives. you are free to compile from source or run chatter in an enclave - which is always wise to do period.

**compile from source**<br/>
vb6

**roadmap, misc. notes**<br/>
1. monitoring more public facing areas (google, google news, fb, youtube, etc.)
2. monitoring topic-centric private areas (telegram, discord, slack, fb groups, etc.)
3. automated [this](https://pastebin.com/raw/irj4Fyd5) with conversational ai (yeah probably won't do this)
4. web front
5. admin cmds in telegram groups e.g. twitter black/whitelisting to reduce noise

**greetz**<br/>
[justinakapaste.com](https://justinakapaste.com) and all of my elderly aol hackers
