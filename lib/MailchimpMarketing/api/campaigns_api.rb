=begin
#Mailchimp Marketing API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.73
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpMarketing
  class CampaignsApi
    attr_accessor :api_client

    def initialize(api_client)
      @api_client = api_client
    end

    # Delete campaign
    def remove(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/campaigns/{campaign_id}'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:DELETE, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Delete campaign feedback message
    def delete_feedback_message(campaign_id, feedback_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, "Missing required param: 'feedback_id'" if feedback_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/campaigns/{campaign_id}/feedback/{feedback_id}'.sub('{' + 'campaign_id' + '}', campaign_id.to_s).sub('{' + 'feedback_id' + '}', feedback_id.to_s)
      data = @api_client.call_api(:DELETE, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List campaigns
    def list(opts = {})
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000
      fail ArgumentError, 'invalid value for "type", must be one of regular, plaintext, absplit, rss, variate' if opts[:'type'] && !['regular', 'plaintext', 'absplit', 'rss', 'variate'].include?(opts[:'type'])
      fail ArgumentError, 'invalid value for "status", must be one of save, paused, schedule, sending, sent' if opts[:'status'] && !['save', 'paused', 'schedule', 'sending', 'sent'].include?(opts[:'status'])
      fail ArgumentError, 'invalid value for "sort_field", must be one of create_time, send_time' if opts[:'sort_field'] && !['create_time', 'send_time'].include?(opts[:'sort_field'])
      fail ArgumentError, 'invalid value for "sort_dir", must be one of ASC, DESC' if opts[:'sort_dir'] && !['ASC', 'DESC'].include?(opts[:'sort_dir'])

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'before_send_time'] = opts[:'before_send_time'] if !opts[:'before_send_time'].nil?
      query_params[:'since_send_time'] = opts[:'since_send_time'] if !opts[:'since_send_time'].nil?
      query_params[:'before_create_time'] = opts[:'before_create_time'] if !opts[:'before_create_time'].nil?
      query_params[:'since_create_time'] = opts[:'since_create_time'] if !opts[:'since_create_time'].nil?
      query_params[:'list_id'] = opts[:'list_id'] if !opts[:'list_id'].nil?
      query_params[:'folder_id'] = opts[:'folder_id'] if !opts[:'folder_id'].nil?
      query_params[:'member_id'] = opts[:'member_id'] if !opts[:'member_id'].nil?
      query_params[:'sort_field'] = opts[:'sort_field'] if !opts[:'sort_field'].nil?
      query_params[:'sort_dir'] = opts[:'sort_dir'] if !opts[:'sort_dir'].nil?
      post_body = nil

      local_var_path = '/campaigns'
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get campaign info
    def get(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/campaigns/{campaign_id}'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get campaign content
    def get_content(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/campaigns/{campaign_id}/content'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List campaign feedback
    def get_feedback(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/campaigns/{campaign_id}/feedback'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get campaign feedback message
    def get_feedback_message(campaign_id, feedback_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, "Missing required param: 'feedback_id'" if feedback_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/campaigns/{campaign_id}/feedback/{feedback_id}'.sub('{' + 'campaign_id' + '}', campaign_id.to_s).sub('{' + 'feedback_id' + '}', feedback_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get campaign send checklist
    def get_send_checklist(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/campaigns/{campaign_id}/send-checklist'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Update campaign settings
    def update(campaign_id, body, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/campaigns/{campaign_id}'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:PATCH, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Update campaign feedback message
    def update_feedback_message(campaign_id, feedback_id, body, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, "Missing required param: 'feedback_id'" if feedback_id.nil?
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/campaigns/{campaign_id}/feedback/{feedback_id}'.sub('{' + 'campaign_id' + '}', campaign_id.to_s).sub('{' + 'feedback_id' + '}', feedback_id.to_s)
      data = @api_client.call_api(:PATCH, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Add campaign
    def create(body, opts = {})
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/campaigns'
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Cancel campaign
    def cancel_send(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/campaigns/{campaign_id}/actions/cancel-send'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Resend campaign
    def create_resend(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/campaigns/{campaign_id}/actions/create-resend'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Pause rss campaign
    def pause(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/campaigns/{campaign_id}/actions/pause'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Replicate campaign
    def replicate(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/campaigns/{campaign_id}/actions/replicate'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Resume rss campaign
    def resume(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/campaigns/{campaign_id}/actions/resume'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Schedule campaign
    def schedule(campaign_id, body, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/campaigns/{campaign_id}/actions/schedule'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Send campaign
    def send(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/campaigns/{campaign_id}/actions/send'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Send test email
    def send_test_email(campaign_id, body, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/campaigns/{campaign_id}/actions/test'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Unschedule campaign
    def unschedule(campaign_id, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/campaigns/{campaign_id}/actions/unschedule'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Add campaign feedback
    def add_feedback(campaign_id, body, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/campaigns/{campaign_id}/feedback'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Set campaign content
    def set_content(campaign_id, body, opts = {})
      fail ArgumentError, "Missing required param: 'campaign_id'" if campaign_id.nil?
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/campaigns/{campaign_id}/content'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)
      data = @api_client.call_api(:PUT, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end
  end
end
