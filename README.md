[![Gem Version](https://badge.fury.io/rb/git-keyword-stats.svg)](https://badge.fury.io/rb/git-keyword-stats)

Inspired by [git-swear-stats], [the Linux Kernel Fuck Count] and [its descendent],
`git-keyword-stats` will give you some interesting statistics on keywording in a
git repository's commit messages.

[the Linux Kernel Fuck Count]: http://durak.org/sean/pubs/kfc/
[its descendent]: http://www.vidarholen.net/contents/wordcount/
[git-swear-stats]: https://github.com/xiongchiamiov/git-swear-stats

# Installation

    $ gem install git-keyword-stats

# Usage

    $ git-keyword-stats --help
    git-keyword-stats
    
    Usage:
       git-keyword-stats [options] [messages|diffs]
    
    Options:
       -h, --help           Show this screen.
       --debug              Print out debug messages.
       --include-merges     Look at merge commits.
       --no-progress        Don't print out progress information.
       --last-month         Log since 1 month ago
       --since=<sn>         Log since XY ago
       --until=<un>         Log until XY ago
       --config=<file>      Config file path
    
    Readme:
       https://github.com/arzzen/git-keyword-stats


# Example Output

### With default keywords (bugfix,clear,typo,hotfix,debug,bug)

    $ git keyword-stats 
    Reading in git log... done!
    Parsing git log.
    
    +----------------+------+-------+-----+-------+--------+
    | Author/Keyword | typo | clear | bug | debug | readme |
    +----------------+------+-------+-----+-------+--------+
    | arzzen         | 2    | 2     | 1   | 2     | 0      |
    | xiongchiamiov  | 0    | 0     | 0   | 8     | 1      |
    | James Pearson  | 0    | 0     | 0   | 5     | 0      |
    +----------------+------+-------+-----+-------+--------+
    | Overall        | 2    | 2     | 1   | 15    | 1      |
    +----------------+------+-------+-----+-------+--------+

### With custom keywords file

    $ git keyword-stats --config="path/to/file.yml"
    
    # example config file (cat path/to/file.yml)
    
    keywords:
        - 'bugfix'
        - '^(clear)$'
        - 'typo'
        - 'hotfix'
        - 'readme'
        - 'debug'
        - '^(bug)$'
        - '^(hot|typo|bug)fix$' 
        
        

