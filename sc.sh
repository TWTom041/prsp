for i in $(seq 1 10);
do
    git checkout t
    echo "t$i" > t.txt
    git commit -F- <<EOF
Message $i

Co-authored-by: 160490636+TomSXAlt@users.noreply.github.com
EOF

    hub pull-request -m "Message" -b "TWTom041:main" -h "TWTom041:t"

done