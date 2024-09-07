module MoviesHelper
  def sortable(column, title = nil)
    title ||= column.titleize

    # Set default sort column and direction (title and asc)
    sort_column = params[:sort] || 'title'
    sort_direction = params[:direction] || 'asc'

    # Determine the direction and arrow based on current column
    direction = (column == sort_column && sort_direction == 'asc') ? 'desc' : 'asc'
    arrow = (column == sort_column) ? (sort_direction == 'asc' ? ' ▲' : ' ▼') : ''

    # Add CSS class for sorted column
    css_class = column == sort_column ? (sort_direction == 'asc' ? 'sorted-asc' : 'sorted-desc') : ''

    # Generate the link with title, arrow, and CSS class
    link_to title + arrow, { sort: column, direction: direction }, class: css_class
  end
end
