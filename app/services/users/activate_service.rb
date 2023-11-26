module Users
  class ActivateService
    def initialize(user)
      @user = user
    end

    def call(reason)
      activate!(reason)
    end

    private
    def activate!(reason)
      @user.update(reason: reason, active: true)
    end
  end
end
