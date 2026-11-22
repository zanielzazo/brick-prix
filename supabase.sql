-- F1 Arcade – online lap records
-- Run this once in your Supabase project: SQL Editor → New query → paste → Run.

create table if not exists public.lap_records (
  id          bigint generated always as identity primary key,
  track       text        not null check (track in ('algarve', 'spa', 'monza', 'rbr', 'silverstone')),
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
    end)
);

create index if not exists lap_records_board on public.lap_records (track, handling, lap_ms);

-- Newer Supabase projects don't grant table access to the public roles automatically.
grant select, insert on public.lap_records to anon, authenticated;

-- Row Level Security: the public (anon) key may read everything and add new laps,
-- but there are no update/delete policies, so nobody can change or remove a lap.
alter table public.lap_records enable row level security;

drop policy if exists "read laps" on public.lap_records;
create policy "read laps" on public.lap_records for select to anon, authenticated using (true);

drop policy if exists "add laps" on public.lap_records;
create policy "add laps" on public.lap_records for insert to anon, authenticated with check (true);
