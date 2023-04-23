# frozen_string_literal: true

parse_phone = <<~RUBY
  def to_phone
    target_phone = self.to_s.gsub(/([.,][0-9a-zA-Z]*?)0*$/, '')
    country_code = ""
    if target_phone.start_with?("+62", "62", "08")
      country_code = "ID"
    end
    Phonelib.parse(target_phone, country_code).full_e164('')
  end
  def phone?
   Phonelib.valid?(self)
  end
  def phone_formatted?
    self.to_phone.eql?(self) && Phonelib.valid?(self)
  end
  def phone_country
    Phonelib.parse(self).country
  end
  def to_phone_international
    Phonelib.parse(self).international
  end
  def to_phone_possible
    target_phone = self.to_s.gsub(/([.,][0-9a-zA-Z]*?)0*$/, '')
    phone = if target_phone.start_with?("+")#{' '}
      target_phone
    else
      target_phone.sub!('08','628') if target_phone.start_with?('08')
      "+" << target_phone
    end
    country_code = phone.phone_country || ''
    Phonelib.parse(phone, country_code)
  end
RUBY

String.class_eval(parse_phone)
Float.class_eval(parse_phone)
Integer.class_eval(parse_phone)
