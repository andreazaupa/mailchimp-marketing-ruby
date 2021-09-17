=begin
#Mailchimp Marketing API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.66
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpMarketing
  class CustomerJourneysApi
    attr_accessor :api_client

    def initialize(api_client)
      @api_client = api_client
    end

    # Customer Journeys API trigger for a contact
    def trigger(journey_id, step_id, body, opts = {})
      fail ArgumentError, "Missing required param: 'journey_id'" if journey_id.nil?
      fail ArgumentError, "Missing required param: 'step_id'" if step_id.nil?
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/customer-journeys/journeys/{journey_id}/steps/{step_id}/actions/trigger'.sub('{' + 'journey_id' + '}', journey_id.to_s).sub('{' + 'step_id' + '}', step_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end
  end
end
