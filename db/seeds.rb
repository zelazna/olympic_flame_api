# frozen_string_literal: true

Torch.destroy_all
FlamePath.destroy_all
User.destroy_all
Point.destroy_all

user = User.create(email: 'root', password: 'root')
path = FlamePath.create(name: 'test', description: 'description')
torch = Torch.create(name: 'name', description: 'description', flame_path: path)
TorchVote.create(user: user, torch: torch)
Point.create(lat: 0.5, long: 1.2, flame_path: path)
