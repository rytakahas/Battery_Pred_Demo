FROM quay.io/astronomer/astro-runtime:8.0.0

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY include/.dbt /home/astro/.dbt

ENV PATH="/home/astro/.local/bin:$PATH"

