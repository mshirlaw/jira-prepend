JIRA Prepend
============

System copy provides a vim mapping for extracting the JIRA ticket number
from a git branch name for the purposes of prepending it to the start 
of a commit message. For example if you use JIRA and label all branches and
commit messages with the name of gthe JIRA ticket that you are working on
then JIRA prepend makes it easy to extract the ticket number from the branch name 
and prepend it when committing. 

Usage
-----

JIRA Prepend provides a mapping to extract and paste a JIRA ticket number 
of the form ABCD-1234 from a branch name and automatically pastes it at the
front of commit message.

The default mapping is `<leader>pp`. In normal mode this command will search for the
pattern defined in `g:jira_prepend_ticket_pattern` which must be set in the user's `.vimrc` file.

Options
-------

To set the JIRA ticket search pattern to the string `"ABCD"` use following in your `.vimrc`:
``` vim
let g:jira_prepend_ticket_pattern="ABCD"
```

To set a custom commit message i.e. `"Bugfix " at the start of each commit message you can use
the optional `g:jira_prepend_custom_message` in your `.vimrc`:
``` vim
let g:jira_prepend_custom_message="Bugfix "
```

Installation
------------

If you don't have a preferred installation method, I recommend 
using [Vundle](https://github.com/VundleVim/Vundle.vim). Assuming you 
have Vundle installed and configured, the following steps will install the plugin:

Add the following line to your `~/.vimrc` and then run `:PluginInstall` from within Vim:

``` vim
call vundle#begin()
" ...
Plugin 'mshirlaw/jira-prepend'
" ...
call vundle#end()
```

