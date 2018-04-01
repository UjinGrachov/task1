#!/bin/bash

$OUTPUT=/home/UjinGrachov/task4_1.out

$cpu_cores x $cpu_clock MHz ($cpu_model)
$cpu_model=cat /proc/cpuinfo | grep "model name"
$ram=cat /proc/meminfo
$mem_total=cat /proc/meminfo | grep MemTotal | awk '{print $2}'
$swap_total=cat /proc/meminfo | grep SwapTotal | awk '{print $2}'
let "mem_mb=$mem_total / 1024"
let "swap_mb=$swap_total / 1024"

$m_b_name=dmidecode -s baseboard-product-name
$m_b_version=dmidecode -s baseboard-version
$m_b_numb=dmidecode -s baseboard-serial-number
$s_s_numb=dmidecode -s system-serial-number


$os_distrib=cat /etc/issue
$kernel=uname -r


echo "--- Hardware ---" >> $OUTPUT

echo "* CPU​ : $cpu" >> $OUTPUT
echo "* RAM: $(ram)" >> $OUTPUT
echo "* Motherboard​: $m_b_numb / $m_b_version / $m_b_numb" >> $OUTPUT
echo "* System Serial Number: $s_s_numb" >> $OUTPUT

echo "--- System ---" >> $OUTPUT

echo "OS Distribution​ : $os_distrib" >> $OUTPUT
echo "Kernel version​ : $kernel" >> $OUTPUT
echo "Installation date​ : xxxx" >> $OUTPUT
echo "* Hostname: $(hostname)" >> $OUTPUT
echo "* Run date and time: $(date)" >> $OUTPUT
echo "Processes running​ : 56684User logged in​ : 665">> $OUTPUT

echo "--- Network ---" >> $OUTPUT

echo "<Iface #1 name>​ : IP/mask" >> $OUTPUT
echo "<Iface #2 name>​ : IP/mask" >> $OUTPUT
...
echo "<Iface #N name>​ : IP/mask" >> $OUTPUT



echo "The Configuration Info Written To $OUTPUT."


echo "$OUTPUT"


