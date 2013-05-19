#### WIP

Help guide with installing Mountain Lion
http://robots.thoughtbot.com/post/27985816073/the-hitchhikers-guide-to-riding-a-mountain-lion

brew install zsh wget curl ag ctags-exuberant
Download and install http://xquartz.macosforge.org/landing/

wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
brew install macvim --override-system-vim --with-features=huge --enable-rubyinterp
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

brew tap homebrew/dupes
brew install apple-gcc42
sudo ln -s /usr/local/bin/gcc-4.2 /usr/bin/gcc-4.2

\curl -L https://get.rvm.io | bash -s stable --autolibs=3 --ruby
