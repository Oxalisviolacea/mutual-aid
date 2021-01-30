Context = Struct.new(
  :hide_admin?,
  :system_settings,
  :user,
  keyword_init: true
) do

  def system_settings
    self[:system_settings] ||= SystemSetting.current_settings
  end
end
