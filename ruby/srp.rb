class Gate
  attr_reader :status

  def initialize
    @status = "close"
  end

  def open
    @status = "open"
  end

  def close
    @status = "close"
  end
end


class CardReader
  def initialize(card_object)
    @card = card_object
  end

  def right_card?
    return false if @card.card_type != 'e-money'
    true
  end
end

class Card
  attr_reader :card_type

  def initialize(card_type)
    @card_type = card_type
  end
end

class GateController
  def initialize(card_type)
    card = Card.new(card_type)
    @card_reader = CardReader.new(card)
    @gate = Gate.new
  end

  def open
    return p "wrong card" unless @card_reader.right_card?
    @gate.open
    p @gate.status
  end

  def close
    @gate.close
  end
end
