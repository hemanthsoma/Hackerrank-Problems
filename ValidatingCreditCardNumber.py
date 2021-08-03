import re
for _ in range(int(input())):
    c=input().strip()
    if not re.search("^[456]\d{3}(-?\d{4}){3}$",c) or re.search(r"(\d)\1{3}", re.sub("-", "",c)):print('Invalid')
    else:print('Valid')
