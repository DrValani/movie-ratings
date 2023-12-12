{{
    config(tags=['unit-test'])
}}

{% call dbt_unit_testing.test('user_ranking', 'Should return a users top 3 rated movies') %}
  
  {% call dbt_unit_testing.mock_ref ('rating', options={"input_format": "csv"}) %}
    user_id | movie_id | rating
    1       | 1        | 2
    2       | 1        | 5
    3       | 3        | 3
  {% endcall %}
  

  {% call dbt_unit_testing.expect({"input_format": "csv"}) %}
    user_id | movie_id | rating
    1       | 1        | 2
    2       | 1        | 5
    3       | 3        | 3
  {% endcall %}
{% endcall %}