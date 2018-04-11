class Pokemon
  attr_accessor :id, :name, :type, :age, :db

  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end

  def self.save(name, breed, age, database_connection)
    database_connection.execute("INSERT INTO cats (name, breed, age) VALUES (?, ?, ?)",name, breed, age)
  end
end
