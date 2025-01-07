module Jekyll
  class GenerateEraPages < Generator
    safe true

    def generate(site)
      # Load the data from the eras.json file
      eras = site.data['minecraft_servers']

      # Iterate through each era and generate a page
      eras['eras'].each do |era|
        site.pages << EraPage.new(site, site.source, era)
      end
    end
  end

  class EraPage < Page
    def initialize(site, base, era)
      @site = site
      @base = base
      @dir = File.join('minecraft_servers', era['id'])
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'era.md')
      self.data['title'] = "#{era['era_name']} (#{era['start_date']} - #{era['end_date']})"
      self.data['commentary'] = era['commentary']
      self.data['servers'] = era['servers']
    end
  end
end