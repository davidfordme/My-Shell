// find files like 'replace_me_restoffilename.png' and replace 'replace_me_' with 'thats_better_' to make 'thats_better_restoffilename.png'


for i in replace_me_*; do mv "$i" "${i/replace_me_/thats_better_}"; done