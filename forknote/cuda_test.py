import torch
x=torch.rand(5,3)
print(x)

device = torch.device("cuda")
y = torch.ones_like(x, device=device)
x = x.to(device)
z = x + y
print(z)


print("torch version=", torch.__version__)
print("torch cuda version=", torch.version.cuda)
print("torch.cuda.is_available()=", torch.cuda.is_available())
print("torch.cuda.current_device()=", torch.cuda.current_device())
print("torch.cuda.device(0)=", torch.cuda.device(0))
print("torch.cuda.device_count()=", torch.cuda.device_count())
