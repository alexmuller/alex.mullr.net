namespace :jekyll do

  desc "Clean and rebuild the site"
  task :rebuild do
    FileUtils.rm_rf('_site')
    system('jekyll')
    system('latexmk -f -pdf -output-directory=_site/cv cv/muller_cv.tex')
    # Tidy up after latexmk as -c doesn't seem to work
    auxfiles = Dir.glob("_site/cv/muller_cv*")
    auxfiles.delete("_site/cv/muller_cv.pdf")
    FileUtils.rm(auxfiles)
  end

end

namespace :rsync do

  desc "Upload the compiled site to alex.mullr.net"
  task :update => "jekyll:rebuild" do
    system('rsync -avz _site/ alexmuller@lighfe:/srv/www/alex.mullr.net')
  end

  desc "Upload the compiled site to alex.mullr.net, deleting everything that is there already"
  task :scratch => "jekyll:rebuild" do
    system('rsync -avz --delete _site/ alexmuller@lighfe:/srv/www/alex.mullr.net')
    system('scp .htaccess alexmuller@lighfe.mullr.net:/srv/www/alex.mullr.net/')
    system('scp blog/feed/.htaccess alexmuller@lighfe.mullr.net:/srv/www/alex.mullr.net/blog/feed/')
  end

end
