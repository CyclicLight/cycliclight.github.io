require 'jekyll'

module Jekyll
  class GenerateFactionPages < Generator
    safe true

    def generate(site)
      # Load the data from the json file
      factions = site.data['factions']

      # Iterate through each era and generate a page
      factions.each do |faction|
        site.pages << FactionPage.new(site, site.source, faction)
      end
    end
  end

  class FactionPage < Page
    def initialize(site, base, faction)
      @site = site
      @base = base
      @dir = File.join('factions')
      slug = Jekyll::Utils.slugify(faction['name'])
      @name = "#{slug}.html"

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'faction.md')
      self.data = self.data.merge(faction)
      self.data['title'] = faction['name']
    end
  end
end
