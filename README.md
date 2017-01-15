# dotfiles

These are config files to set up a system the way I like it. Mostly borrowed from [Ryan Bates](https://github.com/ryanb/dotfiles).

## Installation

```
git clone git://github.com/schopenhauer/dotfiles ~/.dotfiles
cd ~/.dotfiles
rake install
```

## Environment

I primarily use _zsh_, but this includes some older bash files as well. If you would like to switch to _zsh_, you can do so with the following command.

```
chsh -s /bin/zsh
```

## Features

I normally place my coding projects in ~/code, so this directory can easily be accessed (and tab completed) with the "c" command.

```
c railsca<tab>
```

There is also an "h" command which behaves similar, but acts on the home path.

```
h doc<tab>
```

Tab completion is also added to rake and cap commands:

```
rake db:mi<tab>
cap de<tab>
```

To speed things up, the results are cached in local `.rake_tasks~` and `.cap_tasks~`. It is smart enough to expire the cache automatically in
most cases, but you can simply remove the files to flush the cache.

If you're using _git_, you'll notice the current branch name shows up in the prompt while in a git repository.

If you're using _Rails_, you'll find some handy aliases (below). You can also use show_log and hide_log in script/console to show the log inline.

```
ss       # script/server
sc       # script/console
sg       # script/generate
a        # autotest
tlog     # tail -f log/development.log
rst      # touch tmp/restart.txt
migrate  # rake db:migrate db:test:clone
scaffold # script/generate nifty_scaffold
```
See the other aliases in `~/.bash_aliases`

If there are some shell configuration settings which you want secure or specific to one system, place it into a `~/.env` file. This will be loaded automatically if it exists.

There are several features enabled in Ruby's irb including history and completion. Many convenience methods are added as well such as "ri" which can be used to get inline documentation in IRB. See irbrc and railsrc files for details.
