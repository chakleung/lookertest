view: timeline_sample {
  derived_table: {
    sql: select * from star_trek.ts_test
      ;;
  }

  suggestions: no

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ts {
    type: date_raw
    sql: ${TABLE}.TS ;;
  }

  measure: n {
    type: number
    sql: ${TABLE}.N ;;
  }

  set: detail {
    fields: [ts, n]
  }
}
