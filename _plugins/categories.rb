module Jekyll

  class CategoryIndex < Page
    def initialize(site, base, dir, category)
      @site = site
      @base = base
      @dir = dir.downcase
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'category_index.html')
      self.data['category'] = category

      # Page title
      category_title_prefix = site.config['category_title_prefix'] || 'archives'
      self.data['title'] = "&lsquo;#{category}&rsquo; #{category_title_prefix}"
    end
  end

  class CategoryGenerator < Generator
    safe true
    
    def generate(site)
      if site.layouts.key? 'category_index'
        dir = site.config['categorydir'] || 'category'
        site.categories.keys.each do |category|
          write_category_index(site, File.join(dir, category), category)
        end
      end
    end
  
    def write_category_index(site, dir, category)
      index = CategoryIndex.new(site, site.source, dir, category)
      index.render(site.layouts, site.site_payload)
      index.write(site.dest)
      site.pages << index
    end
  end

end
