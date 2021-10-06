=begin
#Mailchimp Marketing API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.69
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpMarketing
  class FacebookAdsApi
    attr_accessor :api_client

    def initialize(api_client)
      @api_client = api_client
    end

    # List facebook ads
    def list(opts = {})
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000
      fail ArgumentError, 'invalid value for "sort_field", must be one of created_at, updated_at, end_time' if opts[:'sort_field'] && !['created_at', 'updated_at', 'end_time'].include?(opts[:'sort_field'])
      fail ArgumentError, 'invalid value for "sort_dir", must be one of ASC, DESC' if opts[:'sort_dir'] && !['ASC', 'DESC'].include?(opts[:'sort_dir'])

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'sort_field'] = opts[:'sort_field'] if !opts[:'sort_field'].nil?
      query_params[:'sort_dir'] = opts[:'sort_dir'] if !opts[:'sort_dir'].nil?
      post_body = nil

      local_var_path = '/facebook-ads'
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get facebook ad info
    def get_ad(outreach_id, opts = {})
      fail ArgumentError, "Missing required param: 'outreach_id'" if outreach_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/facebook-ads/{outreach_id}'.sub('{' + 'outreach_id' + '}', outreach_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end
  end
end
