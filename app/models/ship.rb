class Ship
    attr_accessor :name, :type, :booty
    @@all = []
    def initialize(attributes)
        attributes.each {|key, value| self.send(("#{key}="),value)}
        self.class.all << self
    end
    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end
end