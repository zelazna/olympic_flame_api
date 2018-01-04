# frozen_string_literal: true

# FlamePath.destroy_all
# Point.destroy_all
# Event.destroy_all
# Torch.destroy_all
# User.destroy_all

user = User.create(email: 'root', password: 'root')
desc = "Ces Jeux de 1968, les premiers organisés dans un pays en voie de développement, furent fortement marqués par les événements politiques. Ouverts sous la protection de l'armée à la suite du massacre de
Tlatelolco au cours duquel des étudiants furent tués par la police et l'armée mexicaine, ils se poursuivirent par des gestes de protestation exécutés contre la ségrégation raciale en vigueur aux États-Unis.
112 pays et 5 516 athlètes (4735 hommes et 781 femmes) prirent part à 172 compétitions sportives dans 18 sports.
L'altitude de Mexico, située à 2 200 mètres, posa des problèmes de respiration à de nombreux athlètes, mais contribua par ailleurs à des performances sportives exceptionnelles."
path = FlamePath.create(name: 'Mexico 1968', description: desc)
torch = Torch.create(name: 'name', description: 'description', flame_path: path, image_url: 'https://static.dezeen.com/uploads/2011/06/dezeen_Olympic-Torch-by-BarberOsgerby-top1.jpg')
TorchVote.create(user: user, torch: torch)
Point.create(lat: 0.5, long: 1.2, flame_path: path)
event_desc = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ullamcorper eros libero,
a dictum eros pellentesque vitae. Pellentesque leo ipsum, convallis vitae commodo non, vestibulum nec neque. Praesent sit amet tempor lorem, sagittis interdum eros. Pellentesque nibh sapien,
tempor elementum laoreet condimentum, efficitur eu nunc.'
# find why flame_path not inserted
Event.create(
  flame_path: path,
  date: Time.new(1968, 10, 13),
  location: 'Acapulco',
  title: 'La Flamme prend la vague',
  description: event_desc,
  images_url: ['https://cdn.pixabay.com/photo/2016/06/18/17/42/image-1465348_1280.jpg']
)
