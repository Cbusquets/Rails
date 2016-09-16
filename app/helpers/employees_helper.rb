
module EmployeesHelper

  def client_name(client)

    client ? client.name : 'N/A'

  end

end