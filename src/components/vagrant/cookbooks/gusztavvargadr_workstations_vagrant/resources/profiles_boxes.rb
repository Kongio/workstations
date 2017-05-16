property :profiles_boxes_options, Hash

default_action :add

action :add do
  return if profiles_boxes_options.nil?

  profiles_boxes_options.each do |box_name, box_options|
    gusztavvargadr_workstations_vagrant_box box_name do
      box_options box_options
      action :add
    end
  end
end
