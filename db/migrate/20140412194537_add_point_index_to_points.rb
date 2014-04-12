class AddPointIndexToPoints < ActiveRecord::Migration
  def change
    execute %{
      create index index_on_points_location ON points using gist (
        ST_GeographyFromText(
          'SRID=4326;POINT(' || points.longitude || ' ' || points.latitude || ')'
        )
      )
    }
  end
end
