# ---------------------------
# CATEGORIES
# ---------------------------

Category.create(name: 'Manejo integral de residuos sólidos urbanos', icon: 'residuos')
Category.create(name: 'Ciudad Verde', icon: 'ciudad')
Category.create(name: 'Arquitectura sustentable', icon: 'arquitectura')
Category.create(name: 'Innovación tecnológica', icon: 'innovacion')
Category.create(name: 'Eco tecnologías', icon: 'ecotec')
Category.create(name: 'Turismo sustentable', icon: 'turismo')
Category.create(name: 'Biodiversidad', icon: 'biodiversidad')
Category.create(name: 'Educación ambiental', icon: 'educacion')
Category.create(name: 'Agua', icon: 'agua')
Category.create(name: 'Sector primario', icon: 'primario')
Category.create(name: 'Energia', icon: 'energia')


# ---------------------------
# CHALLENGES
# ---------------------------

if Rails.env.development?
  Challenge.create(title: 'Save tha world', owner_name: 'User Test', owner_email:' "test@example.com"',
                   owner_phone: '3121234567', description: 'Bacon ipsum dolor amet andouille tenderloin chicken, frankfurter shank porchetta ground round',
                   description_how: 'Bacon ipsum dolor amet andouille tenderloin chicken, frankfurter shank porchetta ground round',
                   is_looking_for_team: true, profile_requirements: 'My requirement', assets: nil,
                   location: 'Colima', category: Category.first)

  Challenge.create(title: 'Change tha world', owner_name: 'User Test', owner_email:' "test@example.com"',
                   owner_phone: '3121234567', description: 'Bacon ipsum dolor amet andouille tenderloin chicken, frankfurter shank porchetta ground round',
                   description_how: 'Bacon ipsum dolor amet andouille tenderloin chicken, frankfurter shank porchetta ground round',
                   is_looking_for_team: true, profile_requirements: 'My requirement', assets: nil,
                   location: 'Colima', category: Category.last)
end
