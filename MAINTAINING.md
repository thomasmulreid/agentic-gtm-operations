# Maintaining this repo

Notes to self (and to anyone forking it). You don't need to be a developer to keep this repo healthy — there are only three things to know.

## 1. The source of truth is the folder, not the zip

Each skill lives in a folder — `icp-definer/`, `gtm-qualification/`, `account-nurture/`, `deal-coach/`. The matching `.zip` next to it is just that folder packed up so people can upload it into Claude.

**Always edit the folder. Never edit the zip.** The zip gets rebuilt for you.

## 2. The zips rebuild themselves

Every push to `main` triggers the **Build skill zips** action, which repacks each folder and commits the updated zip back to the repo. So the normal way to change a skill is:

1. Open the file on GitHub (e.g. `deal-coach/SKILL.md`), click the pencil, edit, commit.
2. Wait a minute. The action repacks `deal-coach.zip` on its own.

That's it. The download people get is never stale.

Pull requests run the same check in read-only mode and fail if a zip is out of date, so drift can't sneak in.

If you'd rather rebuild locally, run `./build.sh`. Use `./build.sh --check` to see whether anything is out of date without changing files.

## 3. Cutting a release

The [Releases](../../releases) page is where the README points people, so it's worth keeping current. To publish one, push a tag:

```bash
git tag v1.1 && git push origin v1.1
```

Or, without the command line: **Actions → Release → Run workflow**, and type the tag name (e.g. `v1.1`).

Either way the zips are rebuilt from source before they're attached, so a release can't ship an old file.

## Anatomy of a skill folder

| File | Required? | What it's for |
|---|---|---|
| `SKILL.md` | **Yes** | The skill itself. The YAML block at the top — `name` and `description` — is what makes Claude trigger it. |
| `README.md` | No | The human-facing explanation. GitHub renders it when someone browses the folder. |
| `references/` | No | Extra files the skill reads on demand — examples, config, rubrics. Keeps `SKILL.md` short. |

The `description` field is the single highest-leverage thing in the repo: it's how Claude decides whether to fire the skill at all. If a skill isn't triggering when you expect it to, that's the first place to look — add the literal phrases people actually type.

## Adding a fifth skill

Make a folder with a `SKILL.md` in it and push. `build.sh` picks up any top-level directory containing a `SKILL.md`, so the zip appears automatically — no configuration to update.

Then add it by hand to the list in `README.md` and, if it has anything to tune, to `CUSTOMIZE.md`.
