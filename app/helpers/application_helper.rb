module ApplicationHelper
  def body_classes
    classes = []
    sidebar_first_exist = content_for?(:sidebar_first)
    sidebar_second_exist = content_for?(:sidebar_second)
    if sidebar_first_exist || sidebar_second_exist
      if sidebar_first_exist && sidebar_second_exist
        classes << 'two-sidebars'
      else
        classes << 'one-sidebar'
        if sidebar_first_exist
          classes << 'sidebar-first'
        end
        if sidebar_second_exist
          classes << 'sidebar-second'
        end
      end
    else
      classes << 'no-sidebars'
    end
    classes.join(' ')
  end

  def main_menu_links
    []
  end
end
