
When('I check the program {int} check box') do |int|
  checkbox = find('#bvcog_config_delete_programs_1', visible: false)
  checkbox.check
end

When('I check the entity {int} check box') do |int|
    checkbox = find('#bvcog_config_delete_entities_1', visible: false)
    checkbox.check
end

