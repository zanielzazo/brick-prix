-- F1 Arcade – online lap records
-- Run this once in your Supabase project: SQL Editor → New query → paste → Run.

create table if not exists public.lap_records (
  id          bigint generated always as identity primary key,
  track       text        not null check (track in ('algarve', 'spa', 'monza', 'rbr', 'silverstone', 'chaves', 'graz', 'lowg')),
  handling    text        not null check (handling in ('arcade', 'f1')),
  name        text        not null check (char_length(btrim(name)) between 1 and 14),
  lap_ms      integer     not null,
  created_at  timestamptz not null default now(),
  -- reject impossible laps (about 85% of the fastest F1-handling lap on each circuit)
  constraint plausible_lap check (
    lap_ms <= 400000 and lap_ms >= case track
      when 'algarve'     then 70000
      when 'spa'         then 91000
      when 'monza'       then 70000
      when 'rbr'         then 55000
      when 'silverstone' then 79000
      when 'chaves'      then 22000
      when 'graz'        then 15000
      when 'lowg'        then 35000
    end)
);

create index if not exists lap_records_board on public.lap_records (track, handling, lap_ms);

-- Ghost car of the lap: { v, dt, p: [x_dm, y_dm, heading_mrad, ...] } sampled every 0.1 s (~20–30 KB).
alter table public.lap_records add column if not exists ghost jsonb;
alter table public.lap_records drop constraint if exists ghost_size;
alter table public.lap_records add constraint ghost_size check (ghost is null or pg_column_size(ghost) < 150000);

-- Newer Supabase projects don't grant table access to the public roles automatically.
grant select, insert on public.lap_records to anon, authenticated;

-- Row Level Security: the public (anon) key may read everything and add new laps,
-- but there are no update/delete policies, so nobody can change or remove a lap.
alter table public.lap_records enable row level security;

drop policy if exists "read laps" on public.lap_records;
create policy "read laps" on public.lap_records for select to anon, authenticated using (true);

drop policy if exists "add laps" on public.lap_records;
create policy "add laps" on public.lap_records for insert to anon, authenticated with check (true);

-- Added later: the Kartódromo de Chaves kart track. Run this on a database created before it existed.
alter table public.lap_records drop constraint if exists lap_records_track_check;
alter table public.lap_records add constraint lap_records_track_check
  check (track in ('algarve', 'spa', 'monza', 'rbr', 'silverstone', 'chaves'));
alter table public.lap_records drop constraint if exists plausible_lap;
alter table public.lap_records add constraint plausible_lap check (
  lap_ms <= 400000 and lap_ms >= case track
    when 'algarve'     then 70000
    when 'spa'         then 91000
    when 'monza'       then 70000
    when 'rbr'         then 55000
    when 'silverstone' then 79000
    when 'chaves'      then 22000
  end);

-- Added later: the Graz kart track (Styria Karting Premstätten). Run this on a database created before it existed.
alter table public.lap_records drop constraint if exists lap_records_track_check;
alter table public.lap_records add constraint lap_records_track_check
  check (track in ('algarve', 'spa', 'monza', 'rbr', 'silverstone', 'chaves', 'graz'));
alter table public.lap_records drop constraint if exists plausible_lap;
alter table public.lap_records add constraint plausible_lap check (
  lap_ms <= 400000 and lap_ms >= case track
    when 'algarve'     then 70000
    when 'spa'         then 91000
    when 'monza'       then 70000
    when 'rbr'         then 55000
    when 'silverstone' then 79000
    when 'chaves'      then 22000
    when 'graz'        then 15000
  end);

-- Added later: the Graz Airport apron circuit (track id 'lowg').
alter table public.lap_records drop constraint if exists lap_records_track_check;
alter table public.lap_records add constraint lap_records_track_check
  check (track in ('algarve', 'spa', 'monza', 'rbr', 'silverstone', 'chaves', 'graz', 'lowg'));
alter table public.lap_records drop constraint if exists plausible_lap;
alter table public.lap_records add constraint plausible_lap check (
  lap_ms <= 400000 and lap_ms >= case track
    when 'algarve'     then 70000
    when 'spa'         then 91000
    when 'monza'       then 70000
    when 'rbr'         then 55000
    when 'silverstone' then 79000
    when 'chaves'      then 22000
    when 'graz'        then 15000
    when 'lowg'        then 35000
  end);

-- Added later: the Daily Challenge. Its laps are stored with handling 'dYYYYMMDD' (the day, UTC), so every day
-- has its own leaderboard next to the normal F1 one.
alter table public.lap_records drop constraint if exists lap_records_handling_check;
alter table public.lap_records add constraint lap_records_handling_check
  check (handling in ('arcade', 'f1') or handling ~ '^d[0-9]{8}$');

-- Added later: Monaco (track id 'monaco').
alter table public.lap_records drop constraint if exists lap_records_track_check;
alter table public.lap_records add constraint lap_records_track_check
  check (track in ('algarve', 'spa', 'monza', 'rbr', 'silverstone', 'chaves', 'graz', 'lowg', 'monaco'));
alter table public.lap_records drop constraint if exists plausible_lap;
alter table public.lap_records add constraint plausible_lap check (
  lap_ms <= 400000 and lap_ms >= case track
    when 'algarve'     then 70000
    when 'spa'         then 91000
    when 'monza'       then 70000
    when 'rbr'         then 55000
    when 'silverstone' then 79000
    when 'chaves'      then 22000
    when 'graz'        then 15000
    when 'lowg'        then 35000
    when 'monaco'      then 55000
  end);

-- Added later: the five stunt tracks (track ids 'st1' to 'st5').
alter table public.lap_records drop constraint if exists lap_records_track_check;
alter table public.lap_records add constraint lap_records_track_check
  check (track in ('algarve', 'spa', 'monza', 'rbr', 'silverstone', 'chaves', 'graz', 'lowg', 'monaco', 'st1', 'st2', 'st3', 'st4', 'st5'));
alter table public.lap_records drop constraint if exists plausible_lap;
alter table public.lap_records add constraint plausible_lap check (
  lap_ms <= 400000 and lap_ms >= case track
    when 'algarve'     then 70000
    when 'spa'         then 91000
    when 'monza'       then 70000
    when 'rbr'         then 55000
    when 'silverstone' then 79000
    when 'chaves'      then 22000
    when 'graz'        then 15000
    when 'lowg'        then 35000
    when 'monaco'      then 55000
    when 'st1'         then 20000
    when 'st2'         then 23000
    when 'st3'         then 20000
    when 'st4'         then 17000
    when 'st5'         then 22000
  end);
