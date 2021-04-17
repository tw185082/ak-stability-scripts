import sys

if len(sys.argv) == 1:
    print ("ERROR: No file path given")
    exit()

currentPath = sys.argv[1]

all_commits_path=currentPath+'\\all_commits.txt'
alohap_commits_path=currentPath+'\\alohap_commits.txt'

fh = open(all_commits_path, 'r')
fh2 = open(alohap_commits_path, 'w')

lines = fh.readlines()
result = []
for line in lines:
    # Filter commit messages starting with ALOHAP-, non-merges
    if 'ALOHAP-' in line and 'Merge pull' not in line and 'Merge branch' not in line:
        # Ignore duplicate messages
        if line.strip() not in result:
            result.append(line.strip())
            result.append('\n')

fh2.writelines(result)

fh.close()
fh2.close()