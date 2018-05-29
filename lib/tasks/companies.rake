# frozen_string_literal: false

# This task Initialize payment methods for all type of invoices
namespace :companies do
  desc 'Initialize companies'
  task create: :environment do
    # Gategourmet & Maasa
    Company.find_or_create_by(
      brand_logo_url: 'http://canaero.alpha-it.mx/wp-content/uploads/2017/01/03141019/gate_gourmet.png',
      brand_url: 'http://www.gategourmet.com/',
      brand_contact: 'Jaime Cevallos',
      title: 'Gategourmet & Maasa',
      position: 'job',
      description: 'Culinary excellence, operational integrity, and a passion for distinctive customer service – this is what you can expect when partnering with Gate Gourmet.',
      content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      activities: {
        'title': [
          'example glossary 1',
          'example glossary 2',
          'example glossary 3',
          'example glossary 4',
          'example glossary 5'
        ]
      },
      start_date: Time.now,
      end_date: Time.now,
      status: false
    )

    # Promologistics
    Company.find_or_create_by(
      brand_logo_url: 'http://www.petramex.com/bamf/Promologistics/images/admin/pirinola.png',
      brand_url: 'http://www.promologistics.com.mx/',
      brand_contact: 'Jesse Mendez',
      title: 'Promologistics',
      position: 'job',
      description: 'Especialistas en Servicios de Marketing, Logística y Programas de Lealtad en México. Promologistics es la mejor opción de Marketing. Agencia de Publicidad.',
      content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      activities: {
        'title': [
          'example glossary 1',
          'example glossary 2',
          'example glossary 3',
          'example glossary 4',
          'example glossary 5'
        ]
      },
      start_date: Time.now,
      end_date: Time.now,
      status: false
    )

    # Sanki Global
    Company.find_or_create_by(
      brand_logo_url: 'http://2.bp.blogspot.com/-ahzJshoCTCg/UARNFDDzyeI/AAAAAAAAAAY/UG-5hlglMjc/s300/featured.png',
      brand_url: 'https://sankiglobal.com/',
      brand_contact: 'Luis Hernandez',
      title: 'Sanki Global',
      position: 'job',
      description: 'Sanki, una compañía que desarrolla, distribuye y comercializa productos de Nano-biotecnología avanzada para la nutrición celular.',
      content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      activities: {
        'title': [
          'example glossary 1',
          'example glossary 2',
          'example glossary 3',
          'example glossary 4',
          'example glossary 5'
        ]
      },
      start_date: Time.now,
      end_date: Time.now,
      status: false
    )

    # Desarrolladora A&L
    Company.find_or_create_by(
      brand_logo_url: 'http://a-l.com.mx/img/logo.png',
      brand_url: 'http://a-l.com.mx/',
      brand_contact: 'Israel Galindo',
      title: 'Desarrolladora A&L',
      position: 'job',
      description: 'Empresa mexicana fundada en 2007 dedicada al desarrollo de conjuntos habitacionales, comercio y oficinas sustentables, integrando todos los factores',
      content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      activities: {
        'title': [
          'example glossary 1',
          'example glossary 2',
          'example glossary 3',
          'example glossary 4',
          'example glossary 5'
        ]
      },
      start_date: Time.now,
      end_date: Time.now,
      status: false
    )

    # Resuelve tu Deuda
    Company.find_or_create_by(
      brand_logo_url: 'https://resuelvetudeuda.com/wp-content/uploads/2017/12/cropped-icon.png',
      brand_url: 'https://resuelvetudeuda.com/',
      brand_contact: 'Angel Buzany',
      title: 'Resuelve tu Deuda',
      position: 'job',
      description: 'Ya no necesitas más préstamos, liquida tus deudas pagando hasta 70% menos. Asesoría Gratuita · Negociación De Deudas · Plan Ahorro Personalizado',
      content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      activities: {
        'title': [
          'example glossary 1',
          'example glossary 2',
          'example glossary 3',
          'example glossary 4',
          'example glossary 5'
        ]
      },
      start_date: Time.now,
      end_date: Time.now,
      status: false
    )

    # Boletia
    Company.find_or_create_by(
      brand_logo_url: 'https://boletia.com/assets/logokit/icon-kit/png/icon_orange.png',
      brand_url: 'https://boletia.com/',
      brand_contact: 'Ismael',
      title: 'Boletia',
      position: 'Fullstack Developer',
      description: 'Busca y compra boletos para tus eventos favoritos. ¿Cual será tu próximo evento?¡No te lo pierdas, compra tus boletos!',
      content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      activities: {
        'title': [
          'example glossary 1',
          'example glossary 2',
          'example glossary 3',
          'example glossary 4',
          'example glossary 5'
        ]
      },
      start_date: Time.now,
      end_date: Time.now,
      status: true
    )
  end
end
