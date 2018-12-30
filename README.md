# Heroku buildpack: GitLab private repo access via ~/.netrc

## Usage

Example usage:

    $ heroku create --buildpack https://github.com/airking05/heroku-buildpack-gitlab-netrc.git

Set the personal access token.

    $ heroku config:set GITLAB_AUTH_TOKEN=<my-read-only-token>

Deploy your app.

```console
$ git push heroku master  # push your changes to Heroku

...git output...

-----> Fetching custom git buildpack... done
-----> Multipack app detected
=====> Downloading Buildpack: https://github.com/airking05/heroku-buildpack-gitlab-netrc.git
=====> Detected Framework: github-netrc
       Generated .netrc & .curlrc files (available only at build-time)
       Github User:   my-read-only-user
       Authorization: GITLAB_AUTH_TOKEN for Heroku deplyoments (private repo access)
```
