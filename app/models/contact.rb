class Contact < MailForm::Base
    attribute :name, validate: true
    attribute :email, validate: true
    attribute :email
    validates_format_of :email, with: /\A[^@\s]+@[^@\s]+\z/i
    attribute :nik, validate: true
    attribute :message
    def headers
        { 
        #this is the subject for the email generated, it can be anything you want
        subject: "Register Success!!!",
        to: email,
        from: %("#{name}" <#{email}>),
        #the from will display the name entered by the user followed by the email
        # template_name: "signup_form"
        }
    end
end