class BookController < ApplicationController

    # The list method gives you a list of all the books in the database.
    def list
        # Tells Rails to search the books table and store each row it finds in the @books instance object.
        @books = Book.all
    end
    
    # The show method displays only further details on a single book. Not editable.
    def show
        # Tells Rails to find only the book that has the id defined in params[:id].
        @book = Book.find(params[:id])
    end
    
    # The new method lets Rails know that you will create a new object.
    def new
        # Called when you will display a page to the user to take user input.
        @book = Book.new
        # Grabs all the subjects from the database and puts them in an array called @subjects.
        @subjects = Subject.all
    end
    
    # Creates a record in the database from the user input.
    def create
        # Creates a new instance variable called @book that holds a Book object 
        # built from the data the user submitted.
        @book = Book.new(book_params)
        
        # conditional statement that redirects the user to the list method 
        # if the object saves correctly to the database.
        if @book.save
            # The redirect_to method is similar to performing a meta refresh on a web page: 
            # it automatically forwards you to your destination without any user interaction.
            redirect_to :action => 'list'
        # If it doesn't save, the user is sent back to the new method.
        else
            # Required in case it does not save data successfully and 
            # it becomes similar case as with new option.
            @subjects = Subject.all
            render :action => 'new'
        end
        
    end
    
    # Shows a specific book and displays it on the page for the user to edit.
    def edit
        # Tells Rails to find only the book that has the id defined in params[:id].
        @book = Book.find(params[:id])
        # Grabs all the subjects from the database and puts them in an array called @subjects.
        @subjects = Subject.all
    end
    
    # Called after the edit method. Used to update existing books in the database.
    def update
        # Tells Rails to find only the book that has the id defined in params[:id].
        @book = Book.find(params[:id])
        
        # The update_attributes method is like the save method, but 
        # overwrites the attributes of the existing row.
        if @book.update_attributes(book_param)
            redirect_to :action => 'show', :id => @book
        else
            # Required in case the data does not save successfully, then
            # it becomes similar to the edit option
            @subjects = Subject.all
            render :action => 'edit'
        end

    end

    # Deletes a record from the database.
    def delete
        # Finds the classified based on the parameter passed via the params object 
        # and then deletes it using the destroy method.
        Book.find(params[:id]).destroy
        # Redirects the user to the list method using a redirect_to call.
        redirect_to :action => 'list'
    end

    def book_params
        # Used to collect all the fields from object :books.
        params.require(:books).permit(:title, :price, :subject_id, :description)
    end

    # Displays all subject defined by id in params[:id]
    def show_subjects
        @subject = Subject.find(params[:id])
    end
    
 end
