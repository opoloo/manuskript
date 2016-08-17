# config valid only for current version of Capistrano
lock '3.5.0'

set :application, 'middleman-template'
set :repo_url, 'git@github.com:opoloo/middleman-template.git'
set :scm, :middleman
set :keep_releases, 2
