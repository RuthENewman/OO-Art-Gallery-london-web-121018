class Artist

@@all = []

attr_reader :name, :years_experience, :total_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}
  end

  def cities
    galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    total_experience = 0
    Artist.all.each do |artist|
      total_experience += artist.years_experience
    end
    total_experience
  end

  def self.most_prolific
    Artist.all.max_by {|artist| artist.paintings.length }
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end

end
