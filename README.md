# UpCloud Credential Setup

Save your UpCloud API credentials on your disk and insert them into your environment whenever needed.

Why?

Because I'm lazy, but I don't want to keep the credentials in my environment all the time, but only when I need them. This is just a stupid script that exports the credentials to my environment when I need them.

## Setup

### Clone the repository

```shell
git clone git@github.com:jzmch/upcloud-credentials.git ~/.upcloud
```

### Insert your credentials to ~/.upcloud/credentials

You can copy the sample file to give yourself a starting point.
```shell
cp ~/.upcloud/credentials_sample ~/.upcloud/credentials
```

```shell
# ~/.upcloud/credentials
UPCLOUD_USERNAME="your username that has API Access"
UPCLOUD_PASSWORD="your password"
```

### Insert the sourcing function to your shell profile or rc file

```shell
upcloud() {
  if [[ -f ~/.upcloud/credentials ]] && [[ -f ~/.upcloud/upcloud_credentials.sh ]]; then
      . ~/.upcloud/upcloud_credentials.sh
  fi
}
```

## Usage

Just open a new shell and type:

```shell
$ upcloud
```

and you're done! :D