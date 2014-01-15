task :default => [:link]

task :link do
  %w[vim vimrc gvimrc tmux.conf gemrc gitconfig aliases zshrc ackrc rtorrent.rc].each do |script|
    dotfile = File.join(ENV['HOME'], ".#{script}")
    if File.exist?(dotfile) || File.symlink?(dotfile)
      warn "~/.#{script} already exists"
    else
      ln_s File.join('.dotfiles', script), dotfile
    end
  end

  `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
  `vim -u ~/.vimrc +BundleInstall +qa`
end
