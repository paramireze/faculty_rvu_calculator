module ApplicationHelper

  # cave man debugging method
  def dump_data_helper(data, title = "INSPECTING")
    Rails.logger.debug("<<<<<<-------------#{title}----------->>>>>>>>")
    Rails.logger.debug("<                                              >")
    Rails.logger.debug("<                                              >")
    Rails.logger.debug(" #{data.inspect}                                ")
    Rails.logger.debug("<                                              >")
    Rails.logger.debug("<                                              >")
    Rails.logger.debug("<<<<<<-------------INSPECTING----------->>>>>>>>")
  end

end
