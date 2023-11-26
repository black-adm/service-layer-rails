module Permissions
  class RemoveService
    def initialize(user)
      @user = user
    end

    def call(name)
      remove(name)
    end

    private
    def remove(name)
      @user.permissions.find_by(name: name).delete
    end
  end
end
