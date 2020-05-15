\config\apikey.txt place your telegram bot api key here

\config\chatid.txt place the numerical id of your telegram group here. this can be identified with https://core.telegram.org/bots/api#getupdates after you have added your bot into your group.

the other files in \config\ are self-explanatory and already structured for your additions/removals of reddit and 4chan areas and keywords. keywords are treated as hashtags on twitter, submission titles on reddit and post content on 4chan. you may place phrases in quotes in addition to keywords.

the format of targets.txt is
service:area:apicreds(unnecessary):minutesbetweencrawl
e.g. reddit:cryptocurrency:n/a:5

populate these files prior to running the .exe or chatter will crash.
