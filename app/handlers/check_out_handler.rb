class CheckOutHandler < Handler
  attr_reader :params, :check_out

  def initialize(args)
    @params = args[:params]
    @check_out = CheckOut.new(params)

    super
  end

  def create
    return if record_invalid?

    save
  end

  private

  def save
    check_out.save!
  rescue StandardError => ex
    @error = ex.message
    @status = status_for(:bad_request)

    return
  end

  def record_invalid?
    result = check_out.invalid?

    result.tap do |invalid|
      if invalid
        @error = error_message_for(check_out)
        @status = status_for(:bad_request)
      end
    end
  end
end
