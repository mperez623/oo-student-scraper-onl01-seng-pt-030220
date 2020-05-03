class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def self.all
    @@all
  end

  def self.create_from_collection(stdt_array)
    stdt_array.each{|student| Student.new(student)}
  end

  def initialize(stdt_hash)
    stdt_hash.each {|key, value| self.send(("#{key}="),value)}
    @@all << self
  end

  def add_student_attributes(attributes_hash)
    attributes_hash.each{|key, value| self.send(("#{key}="), value)}
  end
end
