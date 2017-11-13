module SessionsHelper
  
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
