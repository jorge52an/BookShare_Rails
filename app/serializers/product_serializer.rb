class ProductSerializer < ActiveModel::Serializer
	attributes :id, :description, :special, :available, :cover, :status, :value, :code, :code_type

	belongs_to :product_item, polymorphic: true, include: true
	belongs_to :user, serializer: UserSerializer
	has_many :photos, serializer: PhotoSerializer
	has_many :comments, serializer: CommentSerializer
end
