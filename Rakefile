namespace :rsync do

  desc "Upload the compiled site to alex.mullr.net"
  task :refresh do
    system('jekyll')
    system('rsync -avz _site/ alexmuller@lighfe:/srv/www/alex.mullr.net')
  end

  desc "Upload the compiled site to alex.mullr.net, deleting everything that is there already"
  task :scratch do
    system('jekyll')
    system('rsync -avz --delete _site/ alexmuller@lighfe:/srv/www/alex.mullr.net')
    system('scp .htaccess alexmuller@lighfe.mullr.net:/srv/www/alex.mullr.net/')
    system('scp blog/feed/.htaccess alexmuller@lighfe.mullr.net:/srv/www/alex.mullr.net/blog/feed/')
  end

end
