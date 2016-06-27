module ActsAsFavorite
  module Identity
    module UserExtensions
      module InstanceMethods
        def method_missing( method_sym, *args )
          if method_sym.to_s =~ Regexp.new("^favorite_(\\w+)")
            favorite_class = ($1).singularize.classify.constantize
            favorite_class.joins(:favorites).where("favorites.user_id = ? AND favorites.favorable_type = ?", id, favorite_class.to_s)
          elsif method_sym.to_s =~ Regexp.new("^has_favorite_(\\w+)\\?")
            favorite_class = ($1).singularize.classify.constantize
            favorite_class.joins(:favorites).where("favorites.user_id = ? AND favorites.favorable_type = ?", id, favorite_class.to_s).exists?
          else
            super
          end
        rescue
          super
        end
      end
    end
  end
end
