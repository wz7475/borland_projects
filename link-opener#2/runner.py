import webbrowser
with open("linki.txt", "r") as f:
    content=f.readlines()
    #chrome_path = 'C:/Program Files (x86)/Google/Chrome/Application/chrome.exe %s'
    #webbrowser.get(chrome_path).open("google.com")
    for i in content:
        #print(i)
        webbrowser.open(i)
        #C:\\Users\\wojte\\Desktop\\link-opener\\linki.txt