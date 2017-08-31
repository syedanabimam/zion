class ResistanceMemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :code, :phone, :skills
end
