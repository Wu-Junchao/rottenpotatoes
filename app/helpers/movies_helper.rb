module MoviesHelper
  def sortable(column, title = nil)
    title ||= column.titleize

    # Set default sort column and direction (title and asc)
    sort_column = params[:sort] || 'title'
    sort_direction = params[:direction] || 'asc'

    # Determine the direction and arrow based on current column
    direction = (column == sort_column && sort_direction == 'asc') ? 'desc' : 'asc'
    arrow = (column == sort_column) ? (sort_direction == 'asc' ? ' ▲' : ' ▼') : ''

    # Generate the link with title and arrow, and toggle direction
    link_to title + arrow, { sort: column, direction: direction }
  end
end
