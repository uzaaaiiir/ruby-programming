EMAIL = "uzair@example.com"
PASSWORD = "password"
PASSWORD_VAULT = {
    "aws" => {
        username: "user",
        password: "password"
    }
}

def welcome_message
    puts "Welcome to None Shall Pass - A Password Manager"
end

def prompt_user_for_email
    puts "Please sign in to continue"
    print "Enter Email: "
    gets.chomp
end

def verify_user_email(user_email)
    if !user_email.eql?(EMAIL) # some condition is true
        puts "Invalid Email" # execute some other code
        exit
    end
end

def prompt_user_for_password
    print "Enter password: "
    gets.chomp
end

def verify_user_password(user_password)
    if user_password != PASSWORD
        puts "Invalid password"
        exit
    end
end

def greet_user(user_email)
    puts "Hello, #{user_email}."
    puts "What would you like to do?"
end

def menu_options
    puts "1. Add new service credentials"
    puts "2. Retrieve an existing services credentials"
    puts "3. Exit"
end

def get_user_menu_selection
    print "Enter your choice: "
    gets.chomp
end

def handle_user_selection(user_selection)
    case user_selection
        when "1"
            new_service = set_new_service_name
            set_username_for(new_service)
            set_password_for(new_service)
            p PASSWORD_VAULT
        when "2"
            requested_service = retrieve_service_name
            credentials = PASSWORD_VAULT[requested_service]
            display_service_credentials(requested_service, credentials)
        else 
            puts "Exiting program, goodbye!"
            exit 
    end
end

def set_new_service_name
    print "Enter the name of the service: "
    new_service = gets.chomp         
    PASSWORD_VAULT[new_service] = {}

    new_service # returns new_service
end

def set_username_for(service)
    print "Please enter the username for #{service}: "
    new_service_username = gets.chomp
    PASSWORD_VAULT[service]["username"] = new_service_username
end

def set_password_for(service)
    print "Please enter the password for #{service}: "
    new_service_password = gets.chomp
    PASSWORD_VAULT[service]["password"] = new_service_password 
end   

def retrieve_service_name
    print "Please enter the number of the service you want the credentials for: "
    gets.chomp
end

def display_service_credentials(service, credentials)
    puts "Here are the credentials for #{service}:"
    credentials.each do |key, val|
        puts "#{key}: #{val}"
    end
end


def execute_program
    welcome_message
    user_email = prompt_user_for_email
    verify_user_email(user_email)
    user_password = prompt_user_for_password
    verify_user_password(user_password)

    greet_user(user_email)

    loop do 
        menu_options
        user_selection = get_user_menu_selection
        handle_user_selection(user_selection)
    end
end

execute_program