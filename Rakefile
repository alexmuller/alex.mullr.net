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
  end

end

namespace :debug do

  desc "Check all posts for build-breaking YAML syntax errors"
  task :yaml do
    # http://joshrendek.com/2012/08/fixing-psych-syntaxerror-when-using-jekyll/
    require 'yaml'
    begin
      Dir.foreach("_posts").each do |f|
        YAML.load_file(File.join("_posts/", f)) unless f.start_with? "."
      end
    rescue Psych::SyntaxError => error
      puts "Uh oh! Problem with the YAML front matter in #{error.file}"
      puts "  At line #{error.line}, column #{error.column}: #{error.problem}"
    else
      puts "The YAML front matter for your posts looks A-ok to me."
    end
  end

end
