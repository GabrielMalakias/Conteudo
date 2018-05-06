module CategoryHelper
  def sanitize_page(page)
    page < 0 ? 0 : page
  end
end
