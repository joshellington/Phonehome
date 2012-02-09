Phonehome
===

Twilio-enabled app to send a URL to your phone.

Note: still in Twilio sandbox mode.

Usage
---

Drag the following bookmarklet to your bookmarks:

<a href="javascript:(function(){var s=prompt("Enter the number you want to send to.","15035363309");if(s!=null&&s!=""){var req=new XMLHttpRequest();var u="http://phonehome-app.heroku.com/sms/send/"+s+"?url="+encodeURIComponent(window.location.href);req.open("GET",u,false);req.send(null)}})();">Phonehome</a>

TODO
---

- Figure out how to enable mass usage without charging
- Better cross-browser support
- Google Chrome extension