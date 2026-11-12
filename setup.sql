create table kv (k text primary key, v jsonb not null);
alter table kv enable row level security;
create policy "open" on kv for all to anon using (true) with check (true);
