import os
import time

def remove_old_files(directory, max_age_seconds, extensions):
    removed_files = []
    current_time = time.time()

    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(extensions):
                file_path = os.path.join(root, file)
                file_age_seconds = current_time - os.path.getmtime(file_path)
                
                if file_age_seconds > max_age_seconds:
                    os.remove(file_path)
                    removed_files.append(file_path)
    
    return removed_files

if __name__ == "__main__":
    directory = '/home/delameta/rananum/rtsp'
    max_age_seconds = 30
    extensions = '.ts'

    while True:
        removed_files = remove_old_files(directory, max_age_seconds, extensions)
        print(removed_files)
        time.sleep(5)
