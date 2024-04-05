# 컴푸터 정보를 확인하는 파일
# 사용하는 패키지는 psutil

import psutil

cpu = psutil.cpu_freq()
cpu_current_ghz = round(cpu.current / 1000, 2)
print(f"cpu 현재 클럭수: {cpu_current_ghz}GHz")

cpu_core = psutil.cpu_count(logical=False)
print(f"cpu 코어 수: {cpu_core}개")

memory = psutil.virtual_memory()
memory_total = round(memory.total / 1024**3, 2)
print(f"총 메모리: {memory_total}GB")

disk =psutil.disk_partitions()
for p in disk:
    print(p.mountpoint, p.fstype, end=' ')
    du = psutil.disk_usage(p.mountpoint)
    disk_total = round(du.total / 1024 ** 3)
    print(f'디스크 크기 : {disk_total}GB')

net = psutil.net_io_counters()
sent = round(net.bytes_sent/1024**2, 1)
recv = round(net.bytes_sent/1024**2, 1)
print(f"보내기 {sent}MB, 받기 {recv}MB")