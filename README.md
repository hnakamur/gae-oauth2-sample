# What is this?
Google App Engine (GAE) OAuth 2.0 sample, copied from [google-api-python-client](http://code.google.com/p/google-api-python-client/) samples/appengine and added virtualenv setup script.

* Create a GAE application at [GAE my applications](https://appengine.google.com/) page.
* Create a project and a Client ID at Google APIs console. See [Google Plus API Tutorial | w3resource](http://www.w3resource.com/API/google-plus/tutorial.php)
* Copy ```src/client_secrets.json.default``` to ```src/client_secrets.json```
  and edit these three lines:

```
    "client_id": "[[INSERT CLIENT ID HERE]]",
    "client_secret": "[[INSERT CLIENT SECRET HERE]]",
    "redirect_uris": [],
```

redirect_uris example (Replace ```your_app_id_here``` with your application identifier):

```
    "redirect_uris": ["https://your_app_id_here.appspot.com/oauth2callback"],
```

## install python and google app engine sdk

On a mac, you can use homebrew.

```
brew install python
brew install google-app-engine
./virtual_env_setup.sh
```

## activate virtualenv

```
. bin/activate
```

## run dev server

```
dev_app_server.py src
```

# Original README
<pre>
Simple Google+ sample that demonstrates the people API. Demontrates
using the OAuth 2.0 Decorator for Google App Engine applications.

api: plus
keywords: appengine oauth2
</pre>
