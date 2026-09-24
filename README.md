Build the site using the following command: 
powershell -ExecutionPolicy Bypass -File C:\Widoco\build-site.ps1

Run the site:
python3 -m http.server 8000 --directory C:\Widoco\site

Access the site in your browser on the following address:
http://localhost:8000/index-en.html
