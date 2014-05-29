class Bottle
  def self.bonus(bottles)
    return 0 if bottles < 3
    bonus = bottles / 3
    bonus + bonus(bonus + bottles % 3)
  end
end
