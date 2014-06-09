# What is this?
Google App Engine (GAE) OAuth 2.0 sample, based on [google-api-python-client](http://code.google.com/p/google-api-python-client/) samples/appengine and modified.

* use virtualenv.
* use webapp2 and jinja2 instead of webapp

## OAuth2 configuration

* Create a GAE application at [GAE my applications](https://appengine.google.com/) page.
* Create a project and Client ID at [Developers console](https://console.developers.google.com/project?authuser=0). See [Google Developers Console Help — Google Developers](https://developers.google.com/console/help/new/).
* For running a local application. Note the scheme is http, not https.
    * JavaScript Origins: http://localhost:8080
    * Redirect URIs: http://localhost:8080/oauth2callback
* For running an application on GAE. Note the scheme is https, not http. Replace jovial-totality-414 with your application ID.
    * JavaScript Origins: https://jovial-totality-414.appspot.com
    * Redirect URIs: https://jovial-totality-414.appspot.com/oauth2callback
* Press the [Download JSON] button and save the downloaded file as client_secrets.json.


## install python and google app engine sdk

On a mac, you can use homebrew.

```
brew install python
brew install google-app-engine
pip install virtualenv
./virtual_env_setup.sh
```

## activate virtualenv

```
. ./bin/activate
```

## edit your application ID and version in app.yaml


```
application: jovial-totality-414
version: 1
```

## Try your application on localhost

### Run dev server

```
dev_appserver.py .
```

### Access to your application on localhost.

1. Open http://localhost:8080 in your browser.
2. Click the "proceed to the main application" link.
3. Click the "Grant" link in "Grant this application permission to read your Buzz information and it will let you know how many followers you have."
4. Grant your application titled "Project Default Service Account"
5. Click the "proceed to the main application" link.
6. The browser redirects to http://localhost:8080/about, and it prints "Hello, ${your name on Google+ here}".

## Try your application on GAE
### Deploy your application

```
appcfg.py --oauth2 update .
```

See [Uploading, Downloading, and Managing a Python App - Python — Google Developers](https://developers.google.com/appengine/docs/python/tools/uploadinganapp#Python_Password-less_login_with_OAuth2)

### Access to your application on GAE.

1. Open https://jovial-totality-414.appspot.com in your browser (Replace jovial-totality-414 with your application ID).
2. Click the "proceed to the main application" link.
3. Click the "Grant" link in "Grant this application permission to read your Buzz information and it will let you know how many followers you have."
4. Grant your application titled "Project Default Service Account"
5. Click the "proceed to the main application" link.
6. The browser redirects to https://jovial-totality-414.appspot.com/about, and it prints "Hello, ${your name on Google+ here}".

# Original README
<pre>
Simple Google+ sample that demonstrates the people API. Demontrates
using the OAuth 2.0 Decorator for Google App Engine applications.

api: plus
keywords: appengine oauth2
</pre>
