module ApplicationHelper
def page_title #ページタイトル管理
		title = "海保の実験サイト"
		title = @page_title + " - " + title if @page_title
		title
end
	
def menu_link_to(text, path) #リンク先が現在ページならリンク表示しない
		link_to_unless_current(text,path) {(content_tag(:span,text))}
end
  

def current_member #セッションで格納されているIDを格納している
  @current_member ||= Member.find_by(id: session[:member_id])
end
  
def logged_in?
  current_member.present?
end

def log_in(member)
  reset_session
  session[:member_id] = member.id
end

def log_out
  reset_session
  @current_member = nil
end



end
