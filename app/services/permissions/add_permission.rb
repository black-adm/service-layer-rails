module Permissions
  class AddService
    def initialize(user)
      @user = user
    end

    def call(name)
      add(name)
    end

    private
    def add(name)
      @user.permissions.create(name: name)
    end
  end
end
