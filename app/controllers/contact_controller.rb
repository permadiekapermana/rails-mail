class ContactController < ApplicationController
    def create
        @contact = Contact.new()
        @contact.name = params[:name]
        @contact.nik = params[:nik]
        @contact.email = params[:email]
        # @contact.message = params[:message]
        @contact.message = 'Akun anda telah didaftarkan pada sistem pengolahan data pelamar BSP, silahkan login dengan menggunakan NIK anda sebagai username dan password. Harap segera ubah password ketika sudah berhasil login!'
        if @contact.deliver
        render json: {message: "Email sent successfully"}
        else
        render json: @contact.errors
        end
    end
end