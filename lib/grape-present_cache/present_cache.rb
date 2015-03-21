module Grape
  module PresentCache
    extend ActiveSupport::Concern

    included do

      helpers do
        def default_expire_time
          2.hours
        end

        def present_cache(opts = {}, &block)
          cache_key = opts[:key]

          cache_store_expire_time = opts[:expires_in] || default_expire_time

          if Grape::PresentCache.config.cache.exist?(cache_key)
            # TODO: get_entry_value
            representation = Grape::PresentCache.config.cache.fetch(cache_key)
            if representation = MultiJson.load(representation)
              representation = (@body || {}).merge(representation)
            end

            body representation
          else
            # TODO: save_block_result_to_cache
            Grape::PresentCache.config.cache.fetch(cache_key, expires_in: cache_store_expire_time) do 
              block.call.to_json
            end
          end
        end
      end
    end
  end
end
