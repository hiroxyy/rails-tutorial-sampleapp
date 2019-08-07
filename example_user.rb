class User
  attr_accessor :first_name,:last_name, :email

  def initialize(attributes = {})
    @first_name  = attributes[:name].split[0]
    @last_name  = attributes[:name].split[1]
    @email = attributes[:email]
  end

  def full_name
    @full_name = @first_name + " " + @last_name
  end

  def alphabetical_name
    @first_name + ", " + @last_name
  end

  def formatted_email
    "#{@full_name} <#{@email}>"
  end
end
