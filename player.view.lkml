view: player {
  sql_table_name: public.player ;;

  dimension: player_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.player_id ;;
  }

  dimension: bats {
    type: string
    sql: ${TABLE}.bats ;;
  }

  dimension: bbref_id {
    type: string
    sql: ${TABLE}.bbref_id ;;
  }

  dimension: birth_city {
    type: string
    sql: ${TABLE}.birth_city ;;
  }

  dimension: birth_country {
    type: string
    sql: ${TABLE}.birth_country ;;
  }

  dimension: birth_day {
    type: number
    sql: ${TABLE}.birth_day ;;
  }

  dimension: birth_month {
    type: number
    sql: ${TABLE}.birth_month ;;
  }

  dimension: birth_state {
    type: string
    sql: ${TABLE}.birth_state ;;
  }

  dimension: birth_year {
    type: number
    sql: ${TABLE}.birth_year ;;
  }

  dimension: death_city {
    type: string
    sql: ${TABLE}.death_city ;;
  }

  dimension: death_country {
    type: string
    sql: ${TABLE}.death_country ;;
  }

  dimension: death_day {
    type: number
    sql: ${TABLE}.death_day ;;
  }

  dimension: death_month {
    type: number
    sql: ${TABLE}.death_month ;;
  }

  dimension: death_state {
    type: string
    sql: ${TABLE}.death_state ;;
  }

  dimension: death_year {
    type: number
    sql: ${TABLE}.death_year ;;
  }

  dimension: debut {
    type: string
    sql: ${TABLE}.debut ;;
  }

  dimension: final_game {
    type: string
    sql: ${TABLE}.final_game ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }

  dimension: name_first {
    type: string
    sql: ${TABLE}.name_first ;;
  }

  dimension: name_given {
    type: string
    sql: ${TABLE}.name_given ;;
  }

  dimension: name_last {
    type: string
    sql: ${TABLE}.name_last ;;
  }

  dimension: retro_id {
    type: string
    sql: ${TABLE}.retro_id ;;
  }

  dimension: throws {
    type: string
    sql: ${TABLE}.throws ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  measure: count {
    type: count
    drill_fields: [player_id, batting.count, pitching.count]
  }
}
