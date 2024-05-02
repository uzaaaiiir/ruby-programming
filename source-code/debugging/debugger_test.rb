#---
# Excerpted from "Programming Ruby 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/ruby5 for more book information.
#---
require "debug"

class CashRegister
  attr_accessor :tax_rate

  def initialize(tax_rate)
    @tax_rate = tax_rate
    @items = []
  end

  def add_item(item, quantity, price_in_cents)
    @items << {item:, quantity:, price_in_cents:}
  end

  def subtotals
    @items.map {_1[:quantity] * _1[:price_in_cents]}
  end

  def pre_tax_total = subtotals.sum

  def tax = pre_tax_total * tax_rate

  def total = pre_tax_total + tax

  def sale_price(price_in_cents, discount)
    price_in_cents * (1.0 - discount)
  end
end

register = CashRegister.new(0.05)
register.add_item("pen", 3, 499)
binding.break
register.add_item("paper", 2, register.sale_price(799, 25))
p register.total
