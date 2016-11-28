# Initial Data for Role
@admin = Role.create(name: "Admin")
@member = Role.create(name: "Member")
# Admin
User.create(email: "admin@ait.asia", password: "qwertyui",
            password_confirmation: "qwertyui", role_id: @admin.id)
# Member
User.create(email: "member@ait.asia", password: "qwertyui",
            password_confirmation: "qwertyui", role_id: @member.id)

