# Chatterful aka Chats-worthy

So after a little bit of defeatism, we're back in business! I started this project to work with Action Cable (AC). I was initially created both Messages and Rooms with AC, but then it was not working properly on Heroku (the app was called "Chats-worthy"). I wasn't feeling so great. Also, I was worried about getting charged for using Redis, so I deleted that app. 

Then I was like, "Why can't I just used plain ol' AJAX?", and then I realized why I couldn't, so I came back to this. In the meantime, I thought, "Wait, why am I creating Rooms asynchronously? Why not just put the Room creator in the Room? Wouldn't they expect that?" With that in mind, I wondered if it would improve the performance of the AC-powered app on Heroku. So, I re-configured the app, and I created a new Heroku app (
"Chatterful"), and it looks to be working now! Maybe I did the Heroku/Redis set-up wrong before and right this time, or it was the Room creation that was throwing things off?

I'm still working on styling things, though...

So, what this app does:

* Users must sign-in/register to use

* Rooms can be created by anyone

* User creates a Room and is taken right into it

* Or a User can choose a room to enter

* Users chat away within a Room