# frozen_string_literal: true

class AboutUsController < ApplicationController
  def Index; end

  def execute_statement(sql)
    results = ActiveRecord::Base.connection.execute(sql)

    if results.present?
      return results
    else
      return nil
    end
  end
end
