class Aboutcar
  attr_accessor :id, :country, :city, :color, :aboutcars, :cars

  def self.open_connection
    conn = PG.connect(dbname: "cars")
  end

  def save
    conn = Aboutcar.open_connection

    if !self.id
      sql = "INSERT INTO aboutcars (country, city, color) VALUES ('#{self.country}', '#{self.city}', #{self.color})"
    else
      sql = "UPDATE aboutcars SET country = '#{self.country}', city = '#{self.city}', color = '#{self.color}' WHERE id=#{self.id}"
    end

    conn.exec(sql)
  end

  def self.all
    conn = self.open_connection
    sql = "SELECT * FROM aboutcars ORDER BY id"
    result = conn.exec(sql)

    aboutcars = result.map do |aboutcar|
      self.hydrate aboutcar
    end

    aboutcars
  end

  def self.find id
    conn = self.open_connection
    sql = "SELECT * FROM aboutcars WHERE id=#{id}"
    results = conn.exec(sql)

    aboutcar = self.hydrate results[0]

    aboutcar
  end

  def self.find_with_cars id
    conn = self.open_connection
    sql = "SELECT cars.id, cars.make, cars.model, cars.year, cars.aboutcar_id, aboutcars.id, aboutcars.country, aboutcars.city, aboutcar_id.color FROM aboutcars JOIN cars ON cars.aboutcar_id = aboutcar_id WHERE aboutcars.id=#{id}"
    results = conn.exec(sql)

    aboutcar = self.hydrate results[0]

    aboutcar
  end


  def self.destroy id
    conn = self.open_connection
    sql = "DELETE FROM aboutcars WHERE id=#{id}"
    conn.exec(sql)
  end

  def self.hydrate aboutcar_data
    aboutcar = Aboutcar.new

    aboutcar.id = aboutcar_data['id']
    aboutcar.country = aboutcar_data['country']
    aboutcar.city = aboutcar_data['city']
    aboutcar.color = aboutcar_data['color']

    aboutcar
  end

end
