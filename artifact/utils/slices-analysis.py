# ---
# jupyter:
#   jupytext:
#     text_representation:
#       extension: .py
#       format_name: percent
#       format_version: '1.3'
#       jupytext_version: 1.16.6
#   kernelspec:
#     display_name: Python 3 (ipykernel)
#     language: python
#     name: python3
# ---

# %% [markdown]
# # Notebook to analyze Daedalus reports
#
# This script plots histograms based on the data produced by a Daedalus report.
#

# %%
import os
import pandas as pd
import matplotlib.pyplot as plt
from IPython.display import display

def parse_report(file_path):
    """
    Parses a Daedalus report and returns summary metrics and merged slice data.
    """
    with open(file_path, 'r') as file:
        lines = file.readlines()

    parsed_data = {}
    current_dict = parsed_data
    current_slice = None

    for line in lines:
        if line.startswith('mergedSlicesMetadata:'):
            current_dict = dict()
        elif line.startswith('\t'):
            if '=' in line:
                key, value = line.split('=')
                key = key.strip()
                value = int(value.strip())
                current_dict[current_slice][key] = value
            else:
                current_slice = line.strip(':').strip()
                current_dict[current_slice] = {}
        elif '=' in line:
            key, value = line.split('=')
            parsed_data[key.strip()] = int(value.strip())

    return parsed_data, current_dict

# Directory containing the log files
log_dir = '../../tests/'
log_files = [os.path.join(log_dir, f) for f in os.listdir(log_dir) if f.endswith('_slices_report.log')]

# Debug: Check if log files are found
if not log_files:
    print("No log files found in the chosen directory!")
else:
    print(f"Found {len(log_files)} log files.")

# Initialize container for summary data
summary_data = []

# Process each file
for log_file in log_files:
    try:
        summary_metrics, mergedSlicesMetadata = parse_report(log_file)
        if len(mergedSlicesMetadata) > 0:
            print(mergedSlicesMetadata)
        summary_metrics['file'] = os.path.basename(log_file)  # Add filename for reference
        summary_data.append(summary_metrics)
    except Exception as e:
        print(f"Error processing file {log_file}: {e}")

# Create summary dataframe
if summary_data:
    summary_df = pd.DataFrame(summary_data)
    print("Summary DataFrame:")
    display(summary_df)
else:
    print("No summary data to display.")


# %% [markdown]
# ## Histogram of Total Largest Slices After Merging
#
# Plot histogram if sizeOfLargestSliceAfterMerging data is available
#

# %%
if not summary_df.empty:
    fig, ax = plt.subplots(figsize=(10, 6))
    summary_df['sizeOfLargestSliceAfterMerging'].value_counts().sort_index().plot(kind='bar', ax=ax)
    ax.set_title('Histogram of Total Largest Slices After Merging')
    ax.set_xlabel('Total Slices By Largest Size')
    ax.set_ylabel('Count')
    plt.tight_layout()
    plt.show()
else:
    print("No data available to plot the histogram.")
