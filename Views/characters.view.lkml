view: characters {
  derived_table: {
    sql: select * from star_trek.characters
      ;;
  }

  suggestions: no

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
  }

  dimension: main_series {
    type: string
    sql: ${TABLE}.MAIN_SERIES ;;
  }

  dimension: yob {
    type: number
    sql: ${TABLE}.YOB ;;
  }

  dimension: species {
    type: string
    sql: ${TABLE}.SPECIES ;;
  }

  dimension: name {
    primary_key: yes
    type: string
    sql: ${TABLE}.NAME ;;
  }

  set: detail {
    fields: [title, main_series, yob, species, name]
  }
}
