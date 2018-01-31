json.extract! student, :id, :name, :rollno, :email, :phoneno, :created_at, :updated_at
json.url student_url(student, format: :json)
