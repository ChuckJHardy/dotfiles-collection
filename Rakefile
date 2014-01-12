task :default => [:link]

task :link do
  %w[vim vimrc gvimrc emacs.d tmux.conf gemrc gitconfig aliases zshrc ackrc rtorrent.rc tmux-powerlinerc].each do |script|
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

task :otb do
  %w[otb_deploy_gem].each do |script|
    dotfile = File.join(ENV['HOME'], ".#{script}")
    if File.exist?(dotfile) || File.symlink?(dotfile)
      warn "~/.#{script} already exists"
    else
      ln_s File.join('.dotfiles', script), dotfile
    end
  end

  ln_s File.join('.dotfiles', 'otb.sh'), File.join(ENV['HOME'], "otb.sh")
end
