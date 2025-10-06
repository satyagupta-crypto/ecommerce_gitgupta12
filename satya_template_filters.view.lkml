
view: satya_template_filters {
  derived_table: {
    sql: SELECT
      id,
      first_name,
      last_name,
      age,
      created_at,
      state
      FROM
      users ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}.created_at ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  set: detail {
    fields: [
        id,
  first_name,
  last_name,
  age,
  created_at_time,
  state
    ]
  }
}
