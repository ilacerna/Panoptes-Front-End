devUser =
  id: 'DEV_USER'
  login: 'devuser'
  password: 'password'
  email: 'dev-user@zooniverse.org'
  wants_betas: true
  can_survey: false
  avatar: 'https://pbs.twimg.com/profile_images/420634335964692480/aXU3vnUq.jpeg'
  real_name: 'Mr. Dev User'
  location: 'Dev City'
  public_email: 'dev-user+spam@zooniverse.org'
  personal_url: 'http://www.zooniverse.org/'
  twitter: 'zoonidev'
  pinterest: 'devdevdev'
  preferences: {}
  unseen_events: 4

galaxyZoo =
  id: 'GALAXY_ZOO'
  name: 'Galaxy Zoo'
  description: 'Classify images to improve our understanding of galaxy formation'
  owner_login: 'Zooniverse'
  workflows:
    main:
      subjects: ['SUBJECT_0', 'SUBJECT_1']

planetHunters =
  id: 'PLANET_HUNTERS'
  name: 'Planet Hunters'
  description: 'Help discover new exoplanets'
  owner_login: 'Zooniverse'
  workflows:
    main:
      subjects: ['SUBJECT_0', 'SUBJECT_1']

subject0 =
  id: 'SUBJECT_0'
  location: '//placehold.it/256.png'

subject1 =
  id: 'SUBJECT_1'
  location: '//placehold.it/256.png'

module.exports =
  '/sessions': tokens: ['THIS_IS_A_TOKEN'], users: [devUser]
  '/me': users: [devUser]
  '/users': users: [devUser]
  '/projects': projects: [galaxyZoo, planetHunters]
  '/projects/GALAXY_ZOO': projects: [galaxyZoo]
