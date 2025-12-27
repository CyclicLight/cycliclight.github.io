module Jekyll
  class GenerateDeityPages < Generator
    safe true

    def generate(site)
      # Load the data from the eras.json file
      deities = site.data['pantheon']

      # Iterate through each era and generate a page
      deities.each do |deity|
        site.pages << DeityPage.new(site, site.source, deity)
      end
    end
  end

  class DeityPage < Page
    def initialize(site, base, deity)
      @site = site
      @base = base
      @dir = File.join('religion')
      @name = "#{deity['name'].downcase}.html"

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'deity.md')
      self.data = self.data.merge(deity)
      self.data['title'] = deity['name']
    end
  end
end
