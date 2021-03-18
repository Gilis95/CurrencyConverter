#include <iostream>

enum class ProgressDataType : int {
    Contest = 1,
    Build = 2,
    None = 3
};

class ProgressData {
public:
    virtual ~ProgressData() = default;

public:
    time_t StartTime{};
    time_t EndTime{};

    virtual ProgressDataType GetType() {
        return ProgressDataType::None
    };

    static ProgressDataType type;
};

class NoneTimer : public ProgressData {
public:
    ProgressDataType GetType() {
        return type;
    }

public:
    int id{};
    static ProgressDataType type;
};

class ContestTimer : public ProgressData {
public:
    ProgressDataType GetType()  {
        return type;
    }
public:
    int id{};
    static ProgressDataType type;
};

class BuildTimer : public ProgressData {
public:
    ProgressDataType GetType()  {
        return type;
    }
public:
    int id{};
    static ProgressDataType type;
};

class ProgressDataHolder {
public:
    void SetProgressData(ProgressData *progressData) {
        if(IsProgressTypeApplicable(progressData->GetType())){
            delete m_ProgressData;
            m_ProgressData = progressData;
        }
    }

    virtual bool IsProgressTypeApplicable(ProgressDataType progressDataType) = 0;

    template<class Type>
    Type *ProgressDataAsType() {
        return Type::type == m_ProgressData->GetType() ? static_cast<Type*>(m_ProgressData) : nullptr;
    }


private:
    ProgressData *m_ProgressData = nullptr;
};

ProgressDataType ContestTimer::type = ProgressDataType::Contest;
ProgressDataType BuildTimer::type = ProgressDataType::Build;
ProgressDataType NoneTimer::type = ProgressDataType::None;
ProgressDataType ProgressData::type = ProgressDataType::None;

class Capital : public ProgressDataHolder {
public:
    bool IsProgressTypeApplicable(ProgressDataType progressDataType) override{
        return true;
    }
};

int main(void) {
    Capital capital;
    capital.SetProgressData(new ContestTimer());

    auto contestTimer = capital.ProgressDataAsType<ContestTimer>();
    if (contestTimer) {
        std::cout << "Ima contest taimer" << std::endl;
    } else {
        std::cout << "greshka" << std::endl;
    }

    auto noneTimer = capital.ProgressDataAsType<NoneTimer>();

    if (noneTimer) {
        std::cout << "greshka" << std::endl;
    } else {
        std::cout << "nqma none timer" << std::endl;
    }

    return 0;
}
