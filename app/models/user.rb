class User < ActiveRecord::Base
    has_many :videos
    has_secure_password
    validates_presence_of :username

    def slug
        self.name.downcase.gsub(" ", "-")
    end

    def self.find_by_slug(slug)
        Video.all.find do |video|
            if video.slug == slug
                video
            end
        end
    end
end