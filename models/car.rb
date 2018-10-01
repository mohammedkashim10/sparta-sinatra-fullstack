class Car
  attr_accessor :id, :make, :modelname, :year, :aboutcar_id, :aboutcar

  def self.open_connection
    conn = PG.connect(dbname: "cars")
  end

  def save
    conn = Car.open_connection

    if !self.id
      sql = "INSERT INTO cars (make, modelname, year) VALUES ('#{self.make}', '#{self.modelname}', #{self.year})"
    else
      sql = "UPDATE cars SET make = '#{self.make}', modelname = '#{self.modelname}', year = #{self.year} WHERE id=#{self.id}"
    end

    conn.exec(sql)
  end

  def self.all
    conn = self.open_connection
    sql = "SELECT * FROM cars ORDER BY id"
    result = conn.exec(sql)

    cars = result.map do |car|
      self.hydrate car
    end

    cars
  end

  def self.all_with_aboutcar
    conn = self.open_conection
    sql = "SELECT cars.id, cars.make, cars.model, cars.year, cars.aboutcar_id, aboutcars.id, aboutcars.country, aboutcars.city, aboutcars.color FROM cars JOIN aboutcars ON cars.aboutcar_id = aboutcars.id"
    results = conn.exec(sql)

    cars = results.map do |car|
      self.hydrate car
    end

    cars
  end

  def self.find id
    conn = self.open_connection
    sql = "SELECT * FROM cars WHERE id=#{id}"
    results = conn.exec(sql)

    car = self.hydrate results[0]

    car
  end

  def self.find_with_aboutcar id

    conn = self.open_conection

    sql = "SELECT cars.id, cars.make, cars.model, cars.year, cars.aboutcar_id, aboutcars.id, aboutcars.country, aboutcars.city, aboutcars.color FROM aboutcars JOIN cars ON cars.aboutcar_id = aboutcars.id WHERE aboutcars.id=#{id}"

    results = conn.exec(sql)

    car = self.hydrate results[0]

    car

  end

  def self.destroy id
    conn = self.open_connection
    sql = "DELETE FROM cars WHERE id=#{id}"
    conn.exec(sql)
  end

  def self.hydrate car_data
    car = Car.new

    car.id = car_data['id']
    car.make = car_data['make']
    car.modelname = car_data['modelname']
    car.year = car_data['year']
    car.aboutcar_id = car_data['aboutcar_id']
    car.aboutcar = "#{car_data['country']} #{car_data['city']} #{car_data['color']}"

    car
  end

end
