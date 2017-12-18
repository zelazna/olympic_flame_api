# frozen_string_literal: true

Torch.destroy_all
FlamePath.destroy_all
User.destroy_all
Point.destroy_all

path = FlamePath.create(name: 'test', description: 'description')
Torch.create(name: 'name', description: 'description', flame_path: path)
Point.create(lat: 0.5, long: 1.2, flame_path: path)
User.create(email: 'root', password: 'root')
