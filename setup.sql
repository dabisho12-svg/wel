-- Run this in your Supabase SQL Editor
create table if not exists kv (
  k text primary key,
  v jsonb not null
);

alter table kv enable row level security;

drop policy if exists "public_all" on kv;
create policy "public_all" on kv
  for all
  using (true)
  with check (true);
