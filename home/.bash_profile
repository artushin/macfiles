# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null
done

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion

function tostash {
	echo "Current Remote: `git remote -v | grep fetch | cut -d\  -f 1`"
	info=`git remote -v | grep fetch | cut -d\  -f 1 | cut -f 2 | xargs basename | sed -e 's/vube.//g'`
	git remote set-url origin ssh://git@git.vubeology.com/vube/$info
	echo "New Remote: `git remote -v | grep fetch | cut -d\  -f 1`"
}

if [ -f /usr/local/etc/bash_completion ]; then
. /usr/local/etc/bash_completion
fi
# The next line updates PATH for the Google Cloud SDK.
source '/Users/artushin/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/artushin/google-cloud-sdk/completion.bash.inc'
