# List of scores
scores = [75, 88, -10, 95, 100, -25, 89]
#scores = [75, 88, 95, 0, 100]
total_score = 0

# Process each score
for score in scores:
    if score < 0:
        continue  # Skip negative scores
    if score == 0:
        print("Processing stopped.")
        break  # Stop if score is 0
    total_score += score
    print(f"Added score: {score}")
else:
    # This block runs only if the loop wasn't broken (no 0 found)
    print("All data successfully processed.")

# Print final total
print(f"\nTotal score: {total_score}")
