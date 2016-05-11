task :default => [:link]

task :link do
  %w[zshrc vim vimrc gvimrc gitmessage gitignore_global tmux.conf tmux.conf.local gemrc gitconfig aliases].each do |script|
    dotfile = File.join(ENV['HOME'], ".#{script}")
    if File.exist?(dotfile) || File.symlink?(dotfile)
      warn "~/.#{script} already exists"
    else
      ln_s File.join('.dotfiles', script), dotfile
    end
  end

  `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
end
