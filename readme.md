**description**<br/>
chatter is a proof of concept osint monitoring telegram bot for windows (server, ideally) that monitors tweet content, reddit submission titles and 4chan post content for specific keywords - as well as phrases in quotation marks. it feeds content that is discovered to your telegram group in near real-time depending on your configuration. this is an early beta release with limited features.

ping kevin@envadr.io if you think a custom version of chatter or sophisticated pen testing could be of use to your organization.

**video (click to watch)**<br/>
[![Chatter - Internet Monitoring for Windows](https://i.imgur.com/1jrvZo0.png)](https://www.youtube.com/watch?v=zhQ8ztWAmlk "Chatter - Internet Monitoring for Windows")

**telegram bot reporting**<br/>
![reporting](https://i.imgur.com/3uRhvnx.png)

**how to run chatter**<br/>
download and unzip https://github.com/visualbasic6/chatter/archive/master.zip.

1. create your own bot for chatter on telegram with "botfather"<br/>
2. set the api key in \config\apikey.txt<br/>
3. add your bot to your group and give it admin privileges<br/>
3. pull your group's chat id with this api request https://core.telegram.org/bots/api#getupdates<br/>
4. set the chat id in \config\chatid.txt<br/>
5. run the .exe<br/>

you may need to run cmd.exe as admin and "regsvr32 {file.ocx}" if any launch errors unrelated to absent config files appear. 

the files in \config\ are self-explanatory and come with examples.

the format of targets.txt is
service:area:apicreds(unnecessary):minutesbetweencrawl
e.g. reddit:cryptocurrency:n/a:5

populate these files prior to running the .exe or chatter will fail. it is best to use chatter with a windows server to set it and forget it. chatter was written in classic vb with an ssl wrapper making external api requests. this is rare in 2020. because of this av may display false positives. you are free to compile from source or run chatter in an enclave - which *should* be standard practice for any software containing code you are unable to personally review and compile. it is recommended to abstain from broadcasting to telegram several times while populating the db with content to ignore. this is particularly useful for twitter. eventually only recent material is intercepted - though it may take a awhile for old content associated with your keywords and phrases to be databased and ignored.

**compile from source**<br/>
vb6

**roadmap, misc. notes**<br/>
1. monitoring more public facing areas (google, google news, fb, youtube, etc.)
2. monitoring topic-centric private areas (telegram, discord, slack, fb groups, etc.)
3. automated [this](https://pastebin.com/raw/irj4Fyd5) with conversational ai (yeah probably won't do this)
4. web front
5. admin cmds in telegram groups e.g. twitter black/whitelisting to reduce noise

**deeper dive, local storage, immediate thoughts**<br/>

chatter is best reserved for something like casually sitting in a telegram group and running collaborative intel; e.g. investors overseeing news related to specific markets. it does not store post content locally. you would need to perform additional crawling or edits. the benefit of telegram reporting is that telegram crawls urls that chatter discovers and displays image and text previews of the url. this may be changed later.

the 3 queries chatter makes every N minutes are

https://www.reddit.com/search.compact?q=subreddit%3A{subreddit}+{query}&sort=new&t=all<br/>
https://find.4chan.org/?q={query}&b={area, e.g. biz, b, etc.}<br/>
https://twitter.com/search?l=&q={query}&src=typd<br/>

then it stores unique url identifiers as .txt files in \db\{platform}\ as to ignore them as duplicates in the future.

examples:
\db\reddit\1xy9k6.txt<br/>
\db\4chan\75749943.txt<br/>
\db\twitter\692151844227911680.txt<br/>

for 4chan and reddit it only stores the post id and not the thread number, and a subreddit submission associated token without retaining post content. to retain content from any of these 3 platforms you would need to update or recode chatter. with twitter you'd have to take something like \db\twitter\692151844227911680.txt generate the url via https://twitter.com/{anything}/status/692151844227911680 and then scrape and database the content of the tweet. additional alterations would be required to associate the tweet with the keyword used to locate it.

**greetz**<br/>
[justinakapaste.com](https://justinakapaste.com) and all of my elderly aol hackers
