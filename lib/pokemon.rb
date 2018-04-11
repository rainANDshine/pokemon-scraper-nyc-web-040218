class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find(id, db)
    pikachu_from_db = db.execute("SELECT * FROM pokemon WHERE id = #{id}")
    self.new(pikachu_from_db)
  end
end
