class Handler
  include Rack::Utils
  include ActiveSupport::Inflector

  attr_reader :error, :status

  def initialize(*args)
    @status = status_for(:ok)
  end

  def status_for(symbol)
    SYMBOL_TO_STATUS_CODE[symbol] || 500
  end

  def error_message_for(model)
    model.errors.full_messages.to_sentence
  end
end
