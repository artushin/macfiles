diskutil unmount $HOME/Vube
sshfs alex@pds.dev.vube.com:/usr/local/vube $HOME/Vube -oauto_cache,reconnect,volname=Vube
scp ~/.gitconfig alex@pds.dev.vube.com:~/.gitconfig
scp ~/.vimrc alex@pds.dev.vube.com:~/.vimrc
scp -rp ~/.vim alex@pds.dev.vube.com:~
scp ~/.gvimrc alex@pds.dev.vube.com:~/.gvimrc
scp ~/.gitattributes alex@pds.dev.vube.com:~/.gitattributes
scp ~/.curlrc alex@pds.dev.vube.com:~/.curlrc
scp ~/.aliases alex@pds.dev.vube.com:~/.aliases
scp ~/.bashrc alex@pds.dev.vube.com:~/.bashrc
scp ~/.bash_prompt alex@pds.dev.vube.com:~/.bash_prompt
scp ~/.bash_profile alex@pds.dev.vube.com:~/.bash_profile
echo 'cd /usr/local/vube' | ssh alex@pds.dev.vube.com "cat >> ~/.bash_profile"
echo 'export PATH="$PATH:/usr/local/vube/go/bin"' | ssh alex@pds.dev.vube.com "cat >> ~/.bash_profile"
echo 'export PATH=$PATH:/var/lib/gems/1.8/bin/' | ssh alex@pds.dev.vube.com "cat >> ~/.bash_profile"
