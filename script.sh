BEFORE="
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width'>
    <style>
        body,
        html {
            width: 100%;
            height: 100%;
            margin: 0;
            overflow: hidden;
        }
        iframe {
            width: 100%;
            height: 100%;
            border: none;
        }
    </style>
</head>
<body>
"

AFTER="
</body>
</html>
"

for i in {1..22}; do 
    URL=$(sed $i'q;d' links.txt)
    echo $BEFORE"<iframe src="$URL" frameborder='0' scrolling='yes'></iframe>"$AFTER > group$i.html
done