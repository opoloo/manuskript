# config valid only for current version of Capistrano
lock '3.5.0'

set :application, 'manuskript'
set :repo_url, 'git@github.com:opoloo/manuskript.git'
set :scm, :middleman
set :keep_releases, 2
