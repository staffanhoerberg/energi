#encoding: utf-8

require 'dm-core'
require 'dm-types'
require 'dm-serializer'
require 'dm-validations'
require 'dm-aggregates'
require 'dm-transactions'

DataMapper::Property::String.length(255)
DataMapper::Property::Text.lazy(false)
DataMapper::Property::Boolean.allow_nil(false)
DataMapper::Property.required(false)
DataMapper::Validate::ValidationErrors.default_error_messages = {
  :absent                   => '%s får inte anges',
  :inclusion                => '%s måste vara en av %s',
  :invalid                  => '%s har ogiltigt format',
  :confirmation             => '%s matchar inte verifieringsfältet',
  :accepted                 => '%s är inte accepterad',
  :nil                      => '%s får inte vara tomt',
  :blank                    => '%s får inte vara tomt',
  :length_between           => '%s måste vara mellan %s och %s tecken långt',
  :too_long                 => '%s får inte har mer än %s tecken',
  :too_short                => '%s måste ha minst %s tecken',
  :wrong_length             => '%s måste vara %s tecken långt',
  :taken                    => '%s är redan upptaget',
  :not_a_number             => '%s måste vara ett tal',
  :not_an_integer           => '%s måste vara ett heltal',
  :greater_than             => '%s måste vara större än %s',
  :greater_than_or_equal_to => '%s måste vara större eller lika med %s',
  :equal_to                 => '%s måste vara exakt %s',
  :not_equal_to             => '%s får inte vara exakt %s',
  :less_than                => '%s måste vara mindre än %s',
  :less_than_or_equal_to    => '%s måste vara mindre eller lika med %s',
  :value_between            => '%s måste vara mellan %s och %s',
  :primitive                => '%s måste vara av typen %s'
}
Dir["./lib/models/*.rb"].each { |file| require file }

DataMapper.finalize
