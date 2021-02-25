class Pirate
    attr_accessor :name, :weight, :height
    @@all = []
    def initialize(attributes={})
        # attributes.each do |key, value| self.send(("#{key}="),value) if defined? ("#{key}=").to_sym}
        self.name=attributes[:name]
        self.weight = attributes[:weight]
        self.height = attributes[:height]
        self.class.all << self
    end
    def self.all
        @@all
    end
end