module Admin::ApplicationHelper

def link_to_recommend(item)
    item_type = item.class.to_s.downcase
    if item.recommended
      link_to 'unrecommend', send("edit_admin_#{item_type}_path", item), :class => 'recommend'
    else
      link_to 'recommend', send("edit_admin_#{item_type}_path", item), :class => 'recommend'
    end
end

end
