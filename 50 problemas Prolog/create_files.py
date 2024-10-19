for i in range(1, 51):
    filename = f'programa{i:02}.pl'  # Format number with leading zero
    with open(filename, 'w') as f:
        f.write(f'# This is {filename}\n')  # Optional: add a comment inside the file
