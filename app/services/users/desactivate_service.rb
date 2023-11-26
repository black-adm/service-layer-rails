module Users
  class DesactivateService
    def initialize(user)
      @user = user
    end

    def call(reason)
      activate!(reason)
    end

    private
    def activate!(reason)
      @user.update(reason: reason, active: false)
    end
  end
end
