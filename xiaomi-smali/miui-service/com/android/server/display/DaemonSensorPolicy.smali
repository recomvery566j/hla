# classes.dex

.class public Lcom/android/server/display/DaemonSensorPolicy;
.super Ljava/lang/Object;
.source "DaemonSensorPolicy.java"


# static fields
.field private static final ASSIST_SENSOR_TYPE:I = 0x1fa266f

.field private static final TAG:Ljava/lang/String;

.field private static final USE_DAEMON_SENSOR_POLICY:Z


# instance fields
.field private mAssistFovAmplifyFactor:F

.field private mAssistLightSensor:Landroid/hardware/Sensor;

.field private mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

.field private final mContext:Landroid/content/Context;

.field private mDaemonLightSensorsEnabled:Z

.field private final mDaemonSensorListener:Landroid/hardware/SensorEventListener;

.field private mDaemonSensorValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mDaemonSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayPolicy:I

.field private mFovAmplifyFactor:F

.field private mMainLightSensor:Landroid/hardware/Sensor;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAssistFovAmplifyFactor(Lcom/android/server/display/DaemonSensorPolicy;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mAssistFovAmplifyFactor:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDaemonSensorValues(Lcom/android/server/display/DaemonSensorPolicy;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonSensorValues:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFovAmplifyFactor(Lcom/android/server/display/DaemonSensorPolicy;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mFovAmplifyFactor:F

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 28
    const-class v0, Lcom/android/server/display/DaemonSensorPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/DaemonSensorPolicy;->TAG:Ljava/lang/String;

    .line 36
    nop

    .line 37
    const-string/jumbo v0, "use_daemon_sensor_policy"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DaemonSensorPolicy;->USE_DAEMON_SENSOR_POLICY:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/SensorManager;Landroid/os/Looper;Lcom/android/server/display/AutomaticBrightnessControllerImpl;Landroid/hardware/Sensor;FF)V
    .registers 10
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "sensorManager"  # Landroid/hardware/SensorManager;
    .param p3, "looper"  # Landroid/os/Looper;
    .param p4, "impl"  # Lcom/android/server/display/AutomaticBrightnessControllerImpl;
    .param p5, "lightSensor"  # Landroid/hardware/Sensor;
    .param p6, "fovAmplifyFactor"  # F
    .param p7, "assistFovAmplifyFactor"  # F

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Lcom/android/server/display/DaemonSensorPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DaemonSensorPolicy$1;-><init>(Lcom/android/server/display/DaemonSensorPolicy;)V

    iput-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonSensorListener:Landroid/hardware/SensorEventListener;

    .line 53
    iput-object p1, p0, Lcom/android/server/display/DaemonSensorPolicy;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/server/display/DaemonSensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    .line 55
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mPowerManager:Landroid/os/PowerManager;

    .line 56
    iput-object p4, p0, Lcom/android/server/display/DaemonSensorPolicy;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    .line 57
    iput-object p5, p0, Lcom/android/server/display/DaemonSensorPolicy;->mMainLightSensor:Landroid/hardware/Sensor;

    .line 58
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa266f

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    .line 59
    iput p6, p0, Lcom/android/server/display/DaemonSensorPolicy;->mFovAmplifyFactor:F

    .line 60
    iput p7, p0, Lcom/android/server/display/DaemonSensorPolicy;->mAssistFovAmplifyFactor:F

    .line 61
    invoke-direct {p0}, Lcom/android/server/display/DaemonSensorPolicy;->addDaemonSensor()V

    .line 62
    return-void
.end method

.method private addDaemonSensor()V
    .registers 3

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonSensorValues:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonSensors:Ljava/util/List;

    .line 68
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mMainLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_19

    .line 69
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonSensors:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/display/DaemonSensorPolicy;->mMainLightSensor:Landroid/hardware/Sensor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_19
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_24

    .line 73
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonSensors:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/display/DaemonSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_24
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 170
    sget-boolean v0, Lcom/android/server/display/DaemonSensorPolicy;->USE_DAEMON_SENSOR_POLICY:Z

    if-eqz v0, :cond_cc

    .line 171
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 172
    const-string v0, "Daemon sensor policy state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDaemonLightSensorsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonLightSensorsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDaemonSensors: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 176
    .local v1, "sensor":Landroid/hardware/Sensor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      sensor name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    .end local v1  # "sensor":Landroid/hardware/Sensor;
    goto :goto_46

    .line 178
    :cond_7b
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonSensorValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_85
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 179
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Float;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 180
    .local v2, "type":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 181
    .local v3, "lux":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      sensor [type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lux="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "];"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    .end local v1  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Float;>;"
    .end local v2  # "type":I
    .end local v3  # "lux":F
    goto :goto_85

    .line 184
    :cond_cc
    return-void
.end method

.method protected getAssistLightSensorLux()F
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_f

    .line 119
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DaemonSensorPolicy;->getDaemonSensorValue(I)F

    move-result v0

    return v0

    .line 121
    :cond_f
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0
.end method

.method protected getDaemonSensorValue(I)F
    .registers 5
    .param p1, "type"  # I

    .line 125
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonSensorValues:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 126
    sget-object v0, Lcom/android/server/display/DaemonSensorPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the sensor of the type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in daemon sensor list!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0

    .line 129
    :cond_2e
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonSensorValues:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method protected getMainLightSensorLux()F
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mMainLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_f

    .line 112
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mMainLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DaemonSensorPolicy;->getDaemonSensorValue(I)F

    move-result v0

    return v0

    .line 114
    :cond_f
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0
.end method

.method public notifyRegisterDaemonLightSensor(II)V
    .registers 6
    .param p1, "state"  # I
    .param p2, "displayPolicy"  # I

    .line 133
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    move v0, v2

    .line 134
    .local v0, "isActive":Z
    :goto_8
    iput p2, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDisplayPolicy:I

    .line 135
    if-eqz v0, :cond_f

    .line 136
    invoke-virtual {p0, v1}, Lcom/android/server/display/DaemonSensorPolicy;->setDaemonLightSensorsEnabled(Z)V

    .line 138
    :cond_f
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1f

    .line 139
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isIndependentRearDevice()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-boolean v1, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonLightSensorsEnabled:Z

    if-eqz v1, :cond_1f

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/server/display/DaemonSensorPolicy;->setDaemonLightSensorsEnabled(Z)V

    .line 142
    :cond_1f
    return-void
.end method

.method protected setDaemonLightSensorsEnabled(Z)V
    .registers 8
    .param p1, "enable"  # Z

    .line 78
    const/4 v0, 0x0

    if-eqz p1, :cond_47

    .line 79
    iget-boolean v1, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonLightSensorsEnabled:Z

    if-nez v1, :cond_61

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonLightSensorsEnabled:Z

    .line 81
    iget-object v1, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 82
    .local v2, "sensor":Landroid/hardware/Sensor;
    sget-object v3, Lcom/android/server/display/DaemonSensorPolicy;->TAG:Ljava/lang/String;

    if-eqz v2, :cond_38

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "daemon sensor type is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 83
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3b

    :cond_38
    const-string/jumbo v4, "register daemon sensor fail."

    .line 82
    :goto_3b
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v3, p0, Lcom/android/server/display/DaemonSensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 86
    .end local v2  # "sensor":Landroid/hardware/Sensor;
    goto :goto_10

    :cond_46
    goto :goto_61

    .line 88
    :cond_47
    iget-boolean v1, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonLightSensorsEnabled:Z

    if-eqz v1, :cond_61

    .line 89
    iput-boolean v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonLightSensorsEnabled:Z

    .line 90
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonSensorValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 92
    sget-object v0, Lcom/android/server/display/DaemonSensorPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregister daemon light sensor."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_61
    :goto_61
    return-void
.end method

.method protected stop()V
    .registers 2

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DaemonSensorPolicy;->setDaemonLightSensorsEnabled(Z)V

    .line 146
    return-void
.end method

.method protected updateLightSensor()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa266f

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mMainLightSensor:Landroid/hardware/Sensor;

    .line 99
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mMainLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1b

    .line 100
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonSensors:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/display/DaemonSensorPolicy;->mMainLightSensor:Landroid/hardware/Sensor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_1b
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    .line 103
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2f

    .line 104
    iget-object v0, p0, Lcom/android/server/display/DaemonSensorPolicy;->mDaemonSensors:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/display/DaemonSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_2f
    sget-object v0, Lcom/android/server/display/DaemonSensorPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "update daemon light sensor."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method
