# ---------------------------
# All
# ---------------------------

Category.where(name: 'Manejo integral de residuos sólidos urbanos', icon: 'residuos').first_or_create
Category.where(name: 'Ciudad Verde', icon: 'ciudad').first_or_create
Category.where(name: 'Arquitectura sustentable', icon: 'arquitectura').first_or_create
Category.where(name: 'Innovación tecnológica', icon: 'innovacion').first_or_create
Category.where(name: 'Eco tecnologías', icon: 'ecotec').first_or_create
Category.where(name: 'Turismo sustentable', icon: 'turismo').first_or_create
Category.where(name: 'Energías renovables', icon: 'energia').first_or_create
Category.where(name: 'Biodiversidad', icon: 'biodiversidad').first_or_create
Category.where(name: 'Educación ambiental', icon: 'educacion').first_or_create
Category.where(name: 'Agua', icon: 'agua').first_or_create
Category.where(name: 'Sector primario', icon: 'primario').first_or_create

# ---------------------------
# Development
# ---------------------------

if Rails.env.development?
  Challenge.where(title: 'Save tha world', owner_name: 'User Test', owner_email:' "test@example.com"',
                   owner_phone: '3121234567', description: 'Bacon ipsum dolor amet andouille tenderloin chicken, frankfurter shank porchetta ground round',
                   description_how: 'Bacon ipsum dolor amet andouille tenderloin chicken, frankfurter shank porchetta ground round',
                   is_looking_for_team: true, profile_requirements: 'My requirement', assets: nil,
                   location: 'Colima', category: Category.first).first_or_create

  Challenge.where(title: 'Change tha world', owner_name: 'User Test', owner_email:' "test@example.com"',
                   owner_phone: '3121234567', description: 'Bacon ipsum dolor amet andouille tenderloin chicken, frankfurter shank porchetta ground round',
                   description_how: 'Bacon ipsum dolor amet andouille tenderloin chicken, frankfurter shank porchetta ground round',
                   is_looking_for_team: true, profile_requirements: 'My requirement', assets: nil,
                   location: 'Colima', category: Category.last).first_or_create
end
