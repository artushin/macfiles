scp ~/.gitconfig ubuntu@ribrak.com:~/.gitconfig
scp ~/.vimrc ubuntu@ribrak.com:~/.vimrc
scp -rp ~/.vim ubuntu@ribrak.com:~
scp ~/.gvimrc ubuntu@ribrak.com:~/.gvimrc
scp ~/.gitattributes ubuntu@ribrak.com:~/.gitattributes
scp ~/.curlrc ubuntu@ribrak.com:~/.curlrc
scp ~/.aliases ubuntu@ribrak.com:~/.aliases
scp ~/.bashrc ubuntu@ribrak.com:~/.bashrc
scp ~/.bash_prompt ubuntu@ribrak.com:~/.bash_prompt
scp ~/.bash_profile ubuntu@ribrak.com:~/.bash_profile
echo 'cd /usr/local/ribrak' | ssh ubuntu@ribrak.com "cat >> ~/.bash_profile"
echo 'export GOROOT="/usr/local/ribrak/go"' | ssh ubuntu@ribrak.com "cat >> ~/.bash_profile"
echo 'export PATH="$PATH:/usr/local/ribrak/go/bin"' | ssh ubuntu@ribrak.com "cat >> ~/.bash_profile"
