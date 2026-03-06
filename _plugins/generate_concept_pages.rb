require 'jekyll'

module Jekyll
  class GenerateConceptPages < Generator
    safe true

    def generate(site)
      # Load the data from the eras.json file
      deities = site.data['concepts']

      # Iterate through each era and generate a page
      deities.each do |concept|
        site.pages << ConceptPage.new(site, site.source, concept)
      end
    end
  end

  class ConceptPage < Page
    def initialize(site, base, concept)
      @site = site
      @base = base
      @dir = File.join('concept')
      slug = Jekyll::Utils.slugify(concept['name'])
      @name = "#{slug}.html"

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'concept.md')
      self.data = self.data.merge(concept)
      self.data['title'] = concept['name']
    end
  end
end
