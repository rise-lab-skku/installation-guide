# 1. CycloneDDS 설치 (Foxy 버전)
echo "[1/2] ROS Foxy용 CycloneDDS를 설치합니다..."
sudo apt update
sudo apt install -y ros-foxy-rmw-cyclonedds-cpp

# 2. 환경 변수 자동 등록
# CycloneDDS를 사용하도록 .bashrc 파일에 환경 변수를 추가합니다.
echo "[2/2] CycloneDDS를 사용하도록 환경 변수를 .bashrc에 영구적으로 등록합니다..."

# RMW_IMPLEMENTATION 추가
if ! grep -q "RMW_IMPLEMENTATION" ~/.bashrc; then
    echo 'export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp' >> ~/.bashrc
    echo "  - RMW_IMPLEMENTATION 등록 완료"
else
    # 이미 등록된 경우 올바른 값인지 확인하고 덮어쓰기
    sed -i 's|export RMW_IMPLEMENTATION.*|export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp|' ~/.bashrc
    echo "  - RMW_IMPLEMENTATION을 올바른 값으로 수정했습니다."
fi

echo ""
echo "모든 설정이 완료되었습니다!"
echo "이 터미널을 닫고, 새 터미널을 열어서 사용하세요."