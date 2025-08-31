from datetime import datetime

def show_current_time():
    now = datetime.now()
    print("Current date and time:", now.strftime("%Y-%m-%d %H:%M:%S"))

#call function
show_current_time()
