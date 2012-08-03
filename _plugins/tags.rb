module Jekyll

  class TagIndex < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag_index.html')
      self.data['tag'] = tag

      # Page title
      tag_title_prefix = site.config['tag_title_prefix'] || 'archives'
      self.data['title'] = "&lsquo;#{tag}&rsquo; #{tag_title_prefix}"
    end
  end

  class TagGenerator < Generator
    safe true
    
    def generate(site)
      if site.layouts.key? 'tag_index'
        dir = site.config['tagdir'] || 'tag'
        site.tags.keys.each do |category|
          write_tag_index(site, File.join(dir, category), category)
        end
      end
    end
  
    def write_tag_index(site, dir, category)
      index = TagIndex.new(site, site.source, dir, category)
      index.render(site.layouts, site.site_payload)
      index.write(site.dest)
      site.pages << index
    end
    
  end

end