obj-m := my_loader.o

KERNEL_DIR = /lib/modules/$(shell uname -r)/build

all:
	make -C $(KERNEL_DIR) M=$(PWD) modules

clean:
	make -C $(KERNEL_DIR) M=$(PWD) clean

