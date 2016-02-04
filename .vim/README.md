dotvim
======

.vim folder containing .vimrc

Check out using:

```
git init <repo>
cd <repo>
git remote add –f origin https://github.com/mazesc/dotvim
git pull origin master
```

Plugins setup as submodules according to http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

- - -

Install plugins as submodules
-----------------------------

With pathogen installed, it’s now possible to keep the files for each plugin together, which means that every plugin can be kept in its own git repository. The best way to do this is to use git submodules, which are designed especially for the purpose of keeping git repositories within a git repository.

To install the fugitive plugin as a git submodule, take the following steps:

```
git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
git add .
git commit -m "Install Fugitive.vim bundle as a submodule."
```

To remove a submodule (https://git.wiki.kernel.org/index.php/GitSubmoduleTutorial):

1. Delete the relevant line from the .gitmodules file.
1. Delete the relevant section from .git/config.
1. Run git rm --cached path_to_submodule (no trailing slash).
1. Commit the superproject.
1. Delete the now untracked submodule files.

Installing your Vim environment on another machine
--------------------------------------------------

Once your vim configuration is under version control, it’s quite straightforward to import your settings to any machine that has git installed. If you followed the instructions above to put your vimrc and plugins in a dotvim directory, then you can follow these steps to synchronise them to another machine:

```
cd ~
git clone http://github.com/username/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
cd ~/.vim
git submodule init
git submodule update
```

As Marcin Kulik points out in the comments below, the last two git commands can be rolled in to one: git submodule update --init.
Upgrading a plugin bundle

At some point in the future, the fugitive plugin might be updated. To fetch the latest changes, go into the fugitive repository, and pull the latest version:

```
cd ~/.vim/bundle/fugitive
git pull origin master
```

Upgrading all bundled plugins
-----------------------------

You can use the foreach command to execute any shell script in from the root of all submodule directories. To update to the latest version of each plugin bundle, run the following:

```
git submodule foreach git pull origin master
```

