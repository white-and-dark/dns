CC = gcc
CFLAGS = -Wall

SRCS = client.c cnus.c comorg.c edu.c gov.c localServer.c root.c
EXECS = $(SRCS:.c=)

# 默认的目标，编译生成所有可执行程序
all: $(EXECS)

# 生成每个可执行程序
%: %.c
	$(CC) $(CFLAGS) $< -o $@

# 清除生成的可执行程序
clean:
	rm -f $(EXECS)
