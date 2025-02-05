import os
import subprocess

def find_ll_files(directory):
    """Recursively find all .ll files in the given directory."""
    ll_files = []
    for root, _, files in os.walk(directory):
        for file in files:
            if file.endswith(".ll"):
                ll_files.append(os.path.join(root, file))
    return ll_files

def run_opt_on_file(file_path):
    """Run the opt command on the file and save the output based on success/failure."""
    result_file = f"{file_path}_result0.txt"  # Default to success
    command = [
        "./gen",
        # "-debug-only=Daedalus",
        # "-passes=daedalus",
        # "-load-pass-plugin=../build/lib/libdaedalus.so",
        # "-S",
        file_path
    ]
    
    try:
        # Run the command and capture the output
        print("running: " + file_path)
        result = subprocess.run(command, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        
        # Write the output to the result file
        with open(result_file, "w") as f:
            f.write(result.stdout)
            if result.stderr:
                f.write("\nErrors:\n")
                f.write(result.stderr)
        
        print(f"Success: {file_path} -> {result_file}")
    except subprocess.CalledProcessError as e:
        # If the command fails, change the result file name
        result_file = f"{file_path}_result1.txt"
        with open(result_file, "w") as f:
            f.write(e.stdout)
            if e.stderr:
                f.write("\nErrors:\n")
                f.write(e.stderr)
        
        print(f"Failure: {file_path} -> {result_file}")

def process_directory(directory):
    """Process all .ll files in the directory."""
    ll_files = find_ll_files(directory)
    if not ll_files:
        print(f"No .ll files found in {directory}")
        return
    
    for ll_file in ll_files:
        run_opt_on_file(ll_file)

if __name__ == "__main__":
    import sys

    if len(sys.argv) != 2:
        print("Usage: python process_ll_files.py <directory>")
        sys.exit(1)

    directory = sys.argv[1]
    if not os.path.isdir(directory):
        print(f"Error: {directory} is not a valid directory.")
        sys.exit(1)

    process_directory(directory)
