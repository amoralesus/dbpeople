module DbAuth
  class User < DbAuth::Base
    self.table_name = "users"

    def self.active
      where('status = ?', 'active')
    end

    def full_name
      "#{first_name} #{last_name}"
    end

  end
end
