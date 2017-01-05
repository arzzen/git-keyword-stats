[![Gem Version](https://badge.fury.io/rb/git-keyword-stats.svg)](https://rubygems.org/gems/git-keyword-stats) [![Gem](https://img.shields.io/gem/dt/git-keyword-stats.svg)](https://rubygems.org/gems/git-keyword-stats)

How many times are words, names or functions found in the git repository? 

`Git-keyword-stats` will give you some interesting statistics on keywording in a
git repository's commit messages. 


# Installation

```sh
gem install git-keyword-stats
```

# Usage

```sh
git-keyword-stats --help
```

```sh
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
```

# Example Output

### With default keywords (bugfix,clear,typo,hotfix,debug,bug)

```sh
git keyword-stats 
```

```sh
    Reading in git log... done!
    Parsing git log.
    
    +----------------+--------+---------+
    | Author/Keyword | rename | replace |
    +----------------+--------+---------+
    | arzzen         | 2      | 2       |
    | xiongchiamiov  | 0      | 1       |
    | James Pearson  | 0      | 5       |
    +----------------+--------+---------+
    | Overall        | 2      | 8       |
    +----------------+--------+---------+
```

### Custom keywords

##### Example config.yml

```sh
    # list of keywords
    keywords:
        # you can use plain word
        - 'rename'
        - 'replace'
        # you can use regexp
        - '^(hot|typo|bug)fix$'
        - '^(love|hate|meh)$'
        - '^(trash|garbage|rubbish|junk)$'
        - '^(ture|treu|tuer|flase|fasle|fales)$'
```   

##### Usage config    
    
```sh
git keyword-stats --config="path/to/config.yml"
``` 
        
### TL;DR

Inspired by [git-swear-stats], [the Linux Kernel Fuck Count] and [its descendent],

[the Linux Kernel Fuck Count]: http://durak.org/sean/pubs/kfc/
[its descendent]: http://www.vidarholen.net/contents/wordcount/
[git-swear-stats]: https://github.com/xiongchiamiov/git-swear-stats



