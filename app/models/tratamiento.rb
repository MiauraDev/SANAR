class Tratamiento < ApplicationRecord
  belongs_to :diagnostico
  belongs_to :medico
end
