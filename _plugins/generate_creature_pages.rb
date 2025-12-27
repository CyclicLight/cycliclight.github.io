require 'jekyll'

module Jekyll
  class GenerateCreaturePages < Generator
    safe true

    def generate(site)
      # Load the data from the json file
      creatures = site.data['creatures']

      # Iterate through each era and generate a page
      creatures.each do |creature|
        site.pages << CreaturePage.new(site, site.source, creature)
      end
    end
  end

  class CreaturePage < Page
    def initialize(site, base, creature)
      @site = site
      @base = base
      @dir = File.join('creatures')
      slug = Jekyll::Utils.slugify(creature['name'])
      @name = "#{slug}.html"

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'creature.md')
      self.data = self.data.merge(creature)
      self.data['title'] = creature['name']
    end
  end
end
