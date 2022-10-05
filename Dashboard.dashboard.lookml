- dashboard: monthly_sales
  title: "Monthly Sales Dashboard"
  description: "This summarizes the monthly sales of Element Rental"
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100
  refresh:
  autorun:
  crossfilter_enabled: true
  
  filters:
    - name: state_selection
      title: "Select State"
      type: field_filter
      model: training_ecommerce
      explore: sales
      field: sales.state
      allow_multiple_values: true
      required: false
    - name: customer_type_selection
      title: "Select Customer Type"
      type: field_filter
      model: training_ecommerce
      explore: sales
      field: customer.customer_type
      allow_multiple_values: true
      required: false
      ui_config:
        type: radio_buttons
        display: overflow
        options:
          - Long Haul
          - Medium Haul
          - Short Haul
       
  elements:
    - title: "Sales by Office"
      name: sales_by_office
      model: training_ecommerce
      explore: sales
      type: looker_bar
      fields: [sales.total_sales, office.office_name, office.office_id]
      sorts: [sales.total_sales desc]
      limit: 500
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      row:
      col: 0
      width: 12
      height: 6
      listen:
        state_selection: sales.state
        customer_type_selection: customer.customer_type
    - name: add_a_unique_name_1641527491
      title: "Sales by State"
      model: training_ecommerce
      explore: sales
      type: looker_map
      fields: [sales.total_sales, sales.state]
      sorts: [sales.total_sales desc]
      limit: 500
      map_plot_mode: points
      heatmap_gridlines: false
      heatmap_gridlines_empty: false
      heatmap_opacity: 0.5
      show_region_field: true
      draw_map_labels_above_data: true
      map_tile_provider: light
      map_position: fit_data
      map_scale_indicator: 'off'
      map_pannable: false
      map_zoomable: false
      map_marker_type: circle
      map_marker_icon_name: default
      map_marker_radius_mode: proportional_value
      map_marker_units: meters
      map_marker_proportional_scale_type: linear
      map_marker_color_mode: fixed
      show_view_names: false
      show_legend: true
      quantize_map_value_colors: false
      reverse_map_value_colors: false
      series_types: {}
      defaults_version: 1
      width: 12
      height: 6
      col: 12
      listen:
        state_selection: sales.state
        customer_type_selection: customer.customer_type
    - name: instructions
      type: text
      height: 6
      width: 12
      row:
      col:
      title_text: "Instructions" 
      subtitle_text: "Instructions go here!"
      body_text: "If you need help, get Henry"
    
      
