# Data Engineering with CoCo

## Snowflake Environment

- **Database:** DEMO_DB
- **Schema:** TPCH_TRANSFORMED
- **Warehouse:** DEMO_WH

## Source Data

Source data comes from `SNOWFLAKE_SAMPLE_DATA.TPCH_SF1`. All raw tables must be referenced through `_sources.yml` — never query source tables directly in models.

## dbt

Build all models:

```bash
dbt build --project-dir dbt/
```

Build a single model:

```bash
dbt build --select <model_name> --project-dir dbt/
```

## Conventions

- Use **snake_case** for all model file names
- This project uses **CoCo Desktop** — do not use the `cortex` CLI command

## Git Workflow

- Feature branches follow the pattern: `feature/<description>`
- PRs are required before merging to `main`
