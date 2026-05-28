# classes.dex

.class public Lcom/android/server/display/DualSensorPolicy;
.super Ljava/lang/Object;
.source "DualSensorPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DualSensorPolicy$DualSensorPolicyHandler;
    }
.end annotation


# static fields
.field private static final ASSISTANT_LIGHT_SENSOR_TYPE:I = 0x1fa266f

.field private static DEBUG:Z = false

.field private static final MSG_UPDATE_ASSISTANT_LIGHT_SENSOR_AMBIENT_LUX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DualSensorPolicy"


# instance fields
.field private mAmbientLightHorizonLong:I

.field private mAmbientLightHorizonShort:I

.field private mAssistAmbientLuxValid:Z

.field private mAssistBrighteningSmallThreshold:F

.field private mAssistBrighteningThreshold:F

.field private mAssistDarkeningThreshold:F

.field private mAssistFastAmbientLux:F

.field private mAssistFovAmplifyFactor:F

.field private mAssistLightSensor:Landroid/hardware/Sensor;

.field private mAssistLightSensorBrighteningDebounce:J

.field private mAssistLightSensorDarkeningDebounce:J

.field private mAssistLightSensorEnable:Z

.field private mAssistLightSensorEnableTime:J

.field private mAssistLightSensorRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

.field private mAssistLightSensorSmallBrighteningDebounce:J

.field private mAssistLightSensorWarmUpTime:I

.field private mAssistSlowAmbientLux:F

.field private mBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

.field private mCurrentAssistLightSensorRate:I

.field private mFovAmplifyFactor:F

.field private mHysteresisLevelsImpl:Lcom/android/server/display/HysteresisLevelsStub;

.field private mLightSensorRate:I

.field private mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

.field private mMainFastAmbientLux:F

.field private mMainSlowAmbientLux:F

.field private mPolicyHandler:Landroid/os/Handler;

.field private mSceneDetector:Lcom/android/server/display/SceneDetector;

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSupportAssistFovSensor:Z

.field private mSupportFovSensor:Z

.field private mUseLightSensorFlag:I


# direct methods
.method static bridge synthetic -$$Nest$mhandleAssistLightSensorEvent(Lcom/android/server/display/DualSensorPolicy;JF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DualSensorPolicy;->handleAssistLightSensorEvent(JF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAssistLightSensorAmbientLux(Lcom/android/server/display/DualSensorPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DualSensorPolicy;->updateAssistLightSensorAmbientLux()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/DualSensorPolicy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/hardware/SensorManager;IIJJIILcom/android/server/display/HysteresisLevelsStub;Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;Lcom/android/server/display/AutomaticBrightnessControllerImpl;ZZFF)V
    .registers 34
    .param p1, "looper"  # Landroid/os/Looper;
    .param p2, "sensormanager"  # Landroid/hardware/SensorManager;
    .param p3, "lightSensorWarmUpTime"  # I
    .param p4, "lightSensorRate"  # I
    .param p5, "brighteningLightDebounceConfig"  # J
    .param p7, "darkeningLightDebounceConfig"  # J
    .param p9, "ambientLightHorizonLong"  # I
    .param p10, "ambientLightHorizonShort"  # I
    .param p11, "hysteresisLevelsImpl"  # Lcom/android/server/display/HysteresisLevelsStub;
    .param p12, "listener"  # Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;
    .param p13, "brightnessControllerImpl"  # Lcom/android/server/display/AutomaticBrightnessControllerImpl;
    .param p14, "supportFov"  # Z
    .param p15, "supportAssistFov"  # Z
    .param p16, "fovAmplifyFactor"  # F
    .param p17, "assistFovAmplifyFactor"  # F

    .line 80
    move-object/from16 v0, p0

    move/from16 v7, p9

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/display/DualSensorPolicy;->mCurrentAssistLightSensorRate:I

    .line 60
    const/high16 v1, -0x40800000  # -1.0f

    iput v1, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    .line 61
    iput v1, v0, Lcom/android/server/display/DualSensorPolicy;->mMainSlowAmbientLux:F

    .line 63
    iput v1, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    .line 64
    iput v1, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistSlowAmbientLux:F

    .line 66
    iput v1, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningThreshold:F

    .line 67
    iput v1, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningSmallThreshold:F

    .line 68
    iput v1, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistDarkeningThreshold:F

    .line 122
    new-instance v1, Lcom/android/server/display/DualSensorPolicy$1;

    invoke-direct {v1, v0}, Lcom/android/server/display/DualSensorPolicy$1;-><init>(Lcom/android/server/display/DualSensorPolicy;)V

    iput-object v1, v0, Lcom/android/server/display/DualSensorPolicy;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 81
    new-instance v1, Lcom/android/server/display/DualSensorPolicy$DualSensorPolicyHandler;

    move-object/from16 v8, p1

    invoke-direct {v1, v0, v8}, Lcom/android/server/display/DualSensorPolicy$DualSensorPolicyHandler;-><init>(Lcom/android/server/display/DualSensorPolicy;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/display/DualSensorPolicy;->mPolicyHandler:Landroid/os/Handler;

    .line 82
    move-object/from16 v9, p2

    iput-object v9, v0, Lcom/android/server/display/DualSensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    .line 83
    iget-object v1, v0, Lcom/android/server/display/DualSensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x1fa266f

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    .line 84
    move/from16 v10, p14

    iput-boolean v10, v0, Lcom/android/server/display/DualSensorPolicy;->mSupportFovSensor:Z

    .line 85
    move/from16 v11, p15

    iput-boolean v11, v0, Lcom/android/server/display/DualSensorPolicy;->mSupportAssistFovSensor:Z

    .line 86
    move/from16 v12, p16

    iput v12, v0, Lcom/android/server/display/DualSensorPolicy;->mFovAmplifyFactor:F

    .line 87
    move/from16 v13, p17

    iput v13, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFovAmplifyFactor:F

    .line 89
    iget-boolean v1, v0, Lcom/android/server/display/DualSensorPolicy;->mSupportFovSensor:Z

    if-eqz v1, :cond_60

    iget v1, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFovAmplifyFactor:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_60

    .line 90
    iget-object v1, v0, Lcom/android/server/display/DualSensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x1fa2a90

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    .line 93
    :cond_60
    move-object/from16 v14, p12

    iput-object v14, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    .line 94
    move/from16 v15, p3

    iput v15, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorWarmUpTime:I

    .line 95
    move/from16 v1, p4

    iput v1, v0, Lcom/android/server/display/DualSensorPolicy;->mLightSensorRate:I

    .line 96
    move-wide/from16 v2, p5

    iput-wide v2, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorBrighteningDebounce:J

    .line 97
    iget-object v4, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v4}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->getSmallBrighteningDebounce()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorSmallBrighteningDebounce:J

    .line 98
    move-wide/from16 v4, p7

    iput-wide v4, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorDarkeningDebounce:J

    .line 99
    iput v7, v0, Lcom/android/server/display/DualSensorPolicy;->mAmbientLightHorizonLong:I

    .line 100
    move/from16 v6, p10

    iput v6, v0, Lcom/android/server/display/DualSensorPolicy;->mAmbientLightHorizonShort:I

    .line 101
    move-object/from16 v8, p11

    iput-object v8, v0, Lcom/android/server/display/DualSensorPolicy;->mHysteresisLevelsImpl:Lcom/android/server/display/HysteresisLevelsStub;

    .line 102
    new-instance v1, Lcom/android/server/display/AmbientLightRingBuffer;

    iget v2, v0, Lcom/android/server/display/DualSensorPolicy;->mLightSensorRate:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3, v7}, Lcom/android/server/display/AmbientLightRingBuffer;-><init>(JI)V

    iput-object v1, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    .line 103
    iget-wide v1, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorBrighteningDebounce:J

    iget-wide v3, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorDarkeningDebounce:J

    iget-wide v5, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorSmallBrighteningDebounce:J

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DualSensorPolicy;->setUpDebounceConfig(JJJ)V

    .line 105
    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/server/display/DualSensorPolicy;->mBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    .line 106
    return-void
.end method

.method private getAssistBrighteningThreshold()F
    .registers 3

    .line 463
    iget v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    iget v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    .line 464
    iget v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningSmallThreshold:F

    goto :goto_d

    :cond_b
    iget v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningThreshold:F

    .line 463
    :goto_d
    return v0
.end method

.method private getBrighteningThreshold()F
    .registers 3

    .line 468
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v0}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->getBrighteningThreshold()F

    move-result v0

    .line 469
    .local v0, "mainBrighteningThreshold":F
    iget v1, p0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_13

    .line 470
    iget-object v1, p0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v1}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->getSmallBrighteningThreshold()F

    move-result v1

    goto :goto_14

    :cond_13
    move v1, v0

    .line 469
    :goto_14
    return v1
.end method

.method private handleAssistLightSensorEvent(JF)V
    .registers 9
    .param p1, "time"  # J
    .param p3, "lux"  # F

    .line 142
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mPolicyHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientLightRingBuffer;->size()I

    move-result v0

    if-nez v0, :cond_2e

    .line 145
    iget v0, p0, Lcom/android/server/display/DualSensorPolicy;->mLightSensorRate:I

    iget v1, p0, Lcom/android/server/display/DualSensorPolicy;->mCurrentAssistLightSensorRate:I

    if-eq v0, v1, :cond_2e

    .line 146
    iget v0, p0, Lcom/android/server/display/DualSensorPolicy;->mLightSensorRate:I

    iput v0, p0, Lcom/android/server/display/DualSensorPolicy;->mCurrentAssistLightSensorRate:I

    .line 147
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DualSensorPolicy;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 148
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DualSensorPolicy;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/server/display/DualSensorPolicy;->mCurrentAssistLightSensorRate:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/android/server/display/DualSensorPolicy;->mPolicyHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 153
    :cond_2e
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getIsTorchOpen()Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->checkAssistSensorValid()Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_51

    .line 158
    :cond_3f
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    const-wide/16 v1, 0x1388

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/AmbientLightRingBuffer;->prune(J)V

    .line 159
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AmbientLightRingBuffer;->push(JF)V

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DualSensorPolicy;->updateAssistLightSensorAmbientLux(J)V

    .line 162
    return-void

    .line 154
    :cond_51
    :goto_51
    const-string v0, "DualSensorPolicy"

    const-string/jumbo v1, "handleAssistantLightSensorEvent: drop assistant light sensor lux due to flash events or within one second of turning off the torch."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method private setUpDebounceConfig(JJJ)V
    .registers 8
    .param p1, "brighteningDebounce"  # J
    .param p3, "darkeningDebounce"  # J
    .param p5, "smallBrighteningDebounce"  # J

    .line 195
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/AmbientLightRingBuffer;->setBrighteningDebounce(J)V

    .line 196
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0, p3, p4}, Lcom/android/server/display/AmbientLightRingBuffer;->setDarkeningDebounce(J)V

    .line 197
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0, p5, p6}, Lcom/android/server/display/AmbientLightRingBuffer;->setSmallBrighteningDebounce(J)V

    .line 198
    return-void
.end method

.method private updateAssistLightSensorAmbientLux()V
    .registers 6

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 202
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    const-wide/16 v3, 0x1388

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/AmbientLightRingBuffer;->prune(J)V

    .line 203
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DualSensorPolicy;->updateAssistLightSensorAmbientLux(J)V

    .line 204
    return-void
.end method

.method private updateAssistLightSensorAmbientLux(J)V
    .registers 8
    .param p1, "time"  # J

    .line 207
    iget-boolean v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistAmbientLuxValid:Z

    if-nez v0, :cond_2a

    .line 208
    iget v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorWarmUpTime:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorEnableTime:J

    add-long/2addr v0, v2

    .line 209
    .local v0, "timeWhenAssistSensorWarmedUp":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_15

    .line 210
    iget-object v2, p0, Lcom/android/server/display/DualSensorPolicy;->mPolicyHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 212
    return-void

    .line 215
    :cond_15
    iget-object v2, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    iget v3, p0, Lcom/android/server/display/DualSensorPolicy;->mAmbientLightHorizonShort:I

    int-to-long v3, v3

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/android/server/display/AmbientLightRingBuffer;->calculateAmbientLux(JJ)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    .line 216
    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerStub;->HANDLE_ASSIST_LUX_EVENT:I

    iget v3, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    invoke-virtual {p0, v2, v3}, Lcom/android/server/display/DualSensorPolicy;->setAmbientLuxWhenInvalid(IF)V

    .line 217
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistAmbientLuxValid:Z

    .line 219
    .end local v0  # "timeWhenAssistSensorWarmedUp":J
    :cond_2a
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerStub;->HANDLE_ASSIST_LUX_EVENT:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/display/DualSensorPolicy;->updateDualSensorPolicy(JI)Z

    .line 220
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 539
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 540
    const-string v0, "Dual Sensor Policy State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseLightSensorFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAssistAmbientLuxValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistAmbientLuxValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAssistFastAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAssistSlowAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistSlowAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAssistBrighteningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAssistBrighteningSmallThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningSmallThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAssistDarkeningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistDarkeningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAssistLightSensorRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    const-string v0, "Dual Sensor Policy Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAssistLightSensorBrighteningDebounce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorBrighteningDebounce:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAssistLightSensorSmallBrighteningDebounce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorSmallBrighteningDebounce:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAssistLightSensorDarkeningDebounce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorDarkeningDebounce:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_ABC:Z

    sput-boolean v0, Lcom/android/server/display/DualSensorPolicy;->DEBUG:Z

    .line 554
    return-void
.end method

.method protected getAmbientLux(FFZ)F
    .registers 5
    .param p1, "preLux"  # F
    .param p2, "updateLux"  # F
    .param p3, "needUpdateLux"  # Z

    .line 247
    if-eqz p3, :cond_4

    move v0, p2

    goto :goto_5

    :cond_4
    move v0, p1

    :goto_5
    return v0
.end method

.method protected getAssistFastAmbientLux()F
    .registers 2

    .line 564
    iget v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    return v0
.end method

.method protected getAssistLightSensor()Landroid/hardware/Sensor;
    .registers 2

    .line 557
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method protected getMainAmbientLux()F
    .registers 2

    .line 251
    iget v0, p0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    return v0
.end method

.method protected getMainFastAmbientLux()F
    .registers 2

    .line 578
    iget v0, p0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    return v0
.end method

.method setAmbientLuxWhenInvalid(IF)V
    .registers 8
    .param p1, "event"  # I
    .param p2, "lux"  # F

    .line 501
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerStub;->HANDLE_MAIN_LUX_EVENT:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_51

    .line 502
    iget v0, p0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_MAIN_LIGHT_SENSOR:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_43

    iget v0, p0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerStub;->DUAL_SENSOR_LUX_INVALID:I

    if-eq v0, v2, :cond_43

    iget v0, p0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_ASSIST_LIGHT_SENSOR:I

    if-ne v0, v2, :cond_1f

    iget v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1f

    goto :goto_43

    .line 511
    :cond_1f
    iput p2, p0, Lcom/android/server/display/DualSensorPolicy;->mMainSlowAmbientLux:F

    .line 512
    iput p2, p0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    .line 513
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v0, p1, p2, v3, v3}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateAmbientLux(IFZZ)V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAmbientLuxWhenInvalid: update brightness using assist light sensor in process, mMainFastAmbientLux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualSensorPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b8

    .line 506
    :cond_43
    :goto_43
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_MAIN_LIGHT_SENSOR:I

    iput v0, p0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    .line 507
    iput p2, p0, Lcom/android/server/display/DualSensorPolicy;->mMainSlowAmbientLux:F

    .line 508
    iput p2, p0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    .line 509
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v0, p1, p2, v1, v3}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateAmbientLux(IFZZ)V

    goto :goto_b8

    .line 516
    :cond_51
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerStub;->HANDLE_ASSIST_LUX_EVENT:I

    if-ne p1, v0, :cond_b8

    .line 517
    iput p2, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    .line 518
    iput p2, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistSlowAmbientLux:F

    .line 519
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v0}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->getBrighteningThreshold()F

    move-result v0

    .line 520
    .local v0, "mainBrighteningThreshold":F
    iget-object v2, p0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v2}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->useDaemonSensorPolicyInProgress()Z

    move-result v2

    .line 521
    .local v2, "useDaemonSensorPolicy":Z
    iget v3, p0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    sget v4, Lcom/android/server/display/AutomaticBrightnessControllerStub;->DUAL_SENSOR_LUX_INVALID:I

    if-ne v3, v4, :cond_6d

    if-nez v2, :cond_8f

    :cond_6d
    iget v3, p0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    sget v4, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_MAIN_LIGHT_SENSOR:I

    if-ne v3, v4, :cond_79

    iget v3, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    cmpl-float v3, v3, v0

    if-gtz v3, :cond_8f

    :cond_79
    iget v3, p0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    sget v4, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_ASSIST_LIGHT_SENSOR:I

    if-ne v3, v4, :cond_9a

    iget v3, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    iget v4, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningThreshold:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_9a

    iget v3, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    iget v4, p0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9a

    .line 528
    :cond_8f
    sget v3, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_ASSIST_LIGHT_SENSOR:I

    iput v3, p0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    .line 530
    iget-object v3, p0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    xor-int/lit8 v4, v2, 0x1

    invoke-interface {v3, p1, p2, v1, v4}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateAmbientLux(IFZZ)V

    .line 532
    :cond_9a
    iget-object v1, p0, Lcom/android/server/display/DualSensorPolicy;->mHysteresisLevelsImpl:Lcom/android/server/display/HysteresisLevelsStub;

    iget v3, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    invoke-virtual {v1, v3}, Lcom/android/server/display/HysteresisLevelsStub;->getBrighteningThreshold(F)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningThreshold:F

    .line 533
    iget-object v1, p0, Lcom/android/server/display/DualSensorPolicy;->mHysteresisLevelsImpl:Lcom/android/server/display/HysteresisLevelsStub;

    iget v3, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    invoke-virtual {v1, v3}, Lcom/android/server/display/HysteresisLevelsStub;->getDarkeningThreshold(F)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistDarkeningThreshold:F

    .line 534
    iget-object v1, p0, Lcom/android/server/display/DualSensorPolicy;->mHysteresisLevelsImpl:Lcom/android/server/display/HysteresisLevelsStub;

    iget v3, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    invoke-virtual {v1, v3}, Lcom/android/server/display/HysteresisLevelsStub;->getBrighteningSmallThreshold(F)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningSmallThreshold:F

    .line 536
    .end local v0  # "mainBrighteningThreshold":F
    .end local v2  # "useDaemonSensorPolicy":Z
    :cond_b8
    :goto_b8
    return-void
.end method

.method setSceneDetector(Lcom/android/server/display/SceneDetector;)V
    .registers 2
    .param p1, "sceneDetector"  # Lcom/android/server/display/SceneDetector;

    .line 109
    iput-object p1, p0, Lcom/android/server/display/DualSensorPolicy;->mSceneDetector:Lcom/android/server/display/SceneDetector;

    .line 110
    return-void
.end method

.method protected setSensorEnabled(Z)V
    .registers 8
    .param p1, "enable"  # Z

    .line 165
    const-string v0, "DualSensorPolicy"

    if-eqz p1, :cond_4a

    iget-boolean v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorEnable:Z

    if-nez v1, :cond_4a

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorEnable:Z

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorEnableTime:J

    .line 168
    iget v1, p0, Lcom/android/server/display/DualSensorPolicy;->mLightSensorRate:I

    iput v1, p0, Lcom/android/server/display/DualSensorPolicy;->mCurrentAssistLightSensorRate:I

    .line 169
    iget-object v1, p0, Lcom/android/server/display/DualSensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/DualSensorPolicy;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcom/android/server/display/DualSensorPolicy;->mCurrentAssistLightSensorRate:I

    mul-int/lit16 v4, v4, 0x3e8

    iget-object v5, p0, Lcom/android/server/display/DualSensorPolicy;->mPolicyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 171
    iget-object v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_43

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register the assist light sensor. type is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    :cond_43
    const-string/jumbo v1, "register the assist light sensor fail!"

    .line 171
    :goto_46
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 173
    :cond_4a
    if-nez p1, :cond_7f

    iget-boolean v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorEnable:Z

    if-eqz v1, :cond_7f

    .line 174
    const-string/jumbo v1, "setSensorEnabled: unregister the assist light sensor."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorEnable:Z

    .line 176
    iput-boolean v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistAmbientLuxValid:Z

    .line 177
    iget-object v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v1}, Lcom/android/server/display/AmbientLightRingBuffer;->clear()V

    .line 178
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/DualSensorPolicy;->mCurrentAssistLightSensorRate:I

    .line 179
    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerStub;->DUAL_SENSOR_LUX_INVALID:I

    iput v1, p0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    .line 180
    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    .line 181
    iput v1, p0, Lcom/android/server/display/DualSensorPolicy;->mMainSlowAmbientLux:F

    .line 182
    iput v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    .line 183
    iput v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistSlowAmbientLux:F

    .line 184
    iget-object v1, p0, Lcom/android/server/display/DualSensorPolicy;->mPolicyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 185
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DualSensorPolicy;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 187
    :cond_7f
    :goto_7f
    return-void
.end method

.method updateAssistLightSensor()V
    .registers 3

    .line 113
    iget-boolean v0, p0, Lcom/android/server/display/DualSensorPolicy;->mSupportFovSensor:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/server/display/DualSensorPolicy;->mFovAmplifyFactor:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_18

    .line 114
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2a8f

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    goto :goto_21

    .line 116
    :cond_18
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    .line 118
    :goto_21
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_40

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update assist light sensor for rear display, type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    :cond_40
    const-string/jumbo v0, "update assist light sensor fail!"

    .line 118
    :goto_43
    const-string v1, "DualSensorPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method protected updateBrightnessUsingMainLightSensor()Z
    .registers 3

    .line 270
    iget v0, p0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_MAIN_LIGHT_SENSOR:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected updateDualSensorPolicy(JI)Z
    .registers 28
    .param p1, "time"  # J
    .param p3, "event"  # I

    .line 307
    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move/from16 v7, p3

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerStub;->HANDLE_MAIN_LUX_EVENT:I

    const-string v8, ", mAssistSlowAmbientLux: "

    const-string v9, ", mMainSlowAmbientLux: "

    const-string v12, "DualSensorPolicy"

    if-ne v7, v1, :cond_2e0

    .line 308
    iget-object v1, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->calculateSlowAmbientLux(J)F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DualSensorPolicy;->mMainSlowAmbientLux:F

    .line 309
    iget-object v1, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->calculateFastAmbientLux(J)F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    .line 310
    invoke-direct {v0}, Lcom/android/server/display/DualSensorPolicy;->getBrighteningThreshold()F

    move-result v1

    .line 311
    .local v1, "mainBrighteningThreshold":F
    iget-object v4, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v4}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->getDarkeningThreshold()F

    move-result v4

    .line 312
    .local v4, "mainDarkeningThreshold":F
    iget-object v5, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    iget v6, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    invoke-interface {v5, v2, v3, v6}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateNextBrighteningTransition(JF)J

    move-result-wide v5

    .line 313
    .local v5, "nextBrightenTransition":J
    iget-object v13, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v13, v2, v3}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateNextDarkeningTransition(J)J

    move-result-wide v13

    .line 314
    .local v13, "nextDarkenTransition":J
    iget v15, v0, Lcom/android/server/display/DualSensorPolicy;->mMainSlowAmbientLux:F

    cmpl-float v15, v15, v1

    const-string v11, ", next small brightening threshold of main light sensor: "

    const-string v10, ", next darkening threshold of main light sensor: "

    move-wide/from16 v17, v5

    .end local v5  # "nextBrightenTransition":J
    .local v17, "nextBrightenTransition":J
    const-string/jumbo v5, "updateDualSensorPolicy: next brightening threshold of main light sensor: "

    const-string/jumbo v6, "updateDualSensorPolicy: update brightness using assist light sensor in process, mMainFastAmbientLux: "

    move-wide/from16 v19, v13

    .end local v13  # "nextDarkenTransition":J
    .local v19, "nextDarkenTransition":J
    const-string v13, ", mainDarkeningThreshold: "

    const-string v14, ", mainBrighteningThreshold: "

    move/from16 v21, v15

    const-string/jumbo v15, "updateDualSensorPolicy: update ambient lux using main light sensor, mMainFastAmbientLux: "

    move-object/from16 v22, v8

    const-string v8, ", mAssistFastAmbientLux: "

    if-ltz v21, :cond_13d

    move-object/from16 v21, v11

    iget v11, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    cmpl-float v11, v11, v1

    if-ltz v11, :cond_13b

    cmp-long v11, v17, v2

    if-gtz v11, :cond_13b

    .line 317
    iget v11, v0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    move-object/from16 v23, v10

    sget v10, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_MAIN_LIGHT_SENSOR:I

    if-eq v11, v10, :cond_a5

    iget v10, v0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    sget v11, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_ASSIST_LIGHT_SENSOR:I

    if-ne v10, v11, :cond_7c

    iget v10, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    iget v11, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_7c

    goto :goto_a5

    .line 333
    :cond_7c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    iget v8, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9, v9}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateAmbientLux(IFZZ)V

    goto :goto_f2

    .line 320
    :cond_a5
    :goto_a5
    sget v6, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_MAIN_LIGHT_SENSOR:I

    iput v6, v0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    .line 321
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v0, Lcom/android/server/display/DualSensorPolicy;->mMainSlowAmbientLux:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v6}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->isAonFlareEnabled()Z

    move-result v6

    if-eqz v6, :cond_ea

    .line 327
    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mSceneDetector:Lcom/android/server/display/SceneDetector;

    iget v8, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/display/SceneDetector;->updateAmbientLux(IFZ)V

    goto :goto_f2

    .line 329
    :cond_ea
    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    iget v8, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    const/4 v9, 0x1

    invoke-interface {v6, v7, v8, v9, v9}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateAmbientLux(IFZZ)V

    .line 338
    :goto_f2
    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v6, v2, v3}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateNextBrighteningTransition(J)J

    move-result-wide v8

    .line 339
    .end local v17  # "nextBrightenTransition":J
    .local v8, "nextBrightenTransition":J
    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v6, v2, v3}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateNextDarkeningTransition(J)J

    move-result-wide v13

    .line 340
    .end local v19  # "nextDarkenTransition":J
    .restart local v13  # "nextDarkenTransition":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v6}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->getBrighteningThreshold()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v10, v23

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    .line 341
    invoke-interface {v6}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->getDarkeningThreshold()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v11, v21

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    .line 342
    invoke-interface {v6}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->getSmallBrighteningThreshold()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 340
    invoke-static {v12, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v5, v8

    goto/16 :goto_2a8

    .line 314
    .end local v8  # "nextBrightenTransition":J
    .end local v13  # "nextDarkenTransition":J
    .restart local v17  # "nextBrightenTransition":J
    .restart local v19  # "nextDarkenTransition":J
    :cond_13b
    move-object/from16 v11, v21

    .line 343
    :cond_13d
    move-object/from16 v21, v11

    iget v11, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    cmpg-float v11, v11, v4

    if-gtz v11, :cond_2a4

    cmp-long v11, v19, v2

    if-gtz v11, :cond_2a4

    .line 344
    iget v11, v0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    move-object/from16 v23, v10

    sget v10, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_MAIN_LIGHT_SENSOR:I

    if-eq v11, v10, :cond_157

    iget v10, v0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    sget v11, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_ASSIST_LIGHT_SENSOR:I

    if-ne v10, v11, :cond_1b9

    :cond_157
    iget v10, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    iget v11, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_1b9

    .line 347
    sget v6, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_MAIN_LIGHT_SENSOR:I

    iput v6, v0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    .line 348
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v0, Lcom/android/server/display/DualSensorPolicy;->mMainSlowAmbientLux:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v6}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->isAonFlareEnabled()Z

    move-result v6

    if-nez v6, :cond_1af

    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mSceneDetector:Lcom/android/server/display/SceneDetector;

    .line 354
    invoke-virtual {v6}, Lcom/android/server/display/SceneDetector;->isNeedStreamProximitySensorEnabled()Z

    move-result v6

    if-eqz v6, :cond_1a5

    const/4 v9, 0x1

    goto :goto_1b0

    .line 357
    :cond_1a5
    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    iget v8, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    const/4 v9, 0x1

    invoke-interface {v6, v7, v8, v9, v9}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateAmbientLux(IFZZ)V

    goto/16 :goto_25c

    .line 353
    :cond_1af
    const/4 v9, 0x1

    .line 355
    :goto_1b0
    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mSceneDetector:Lcom/android/server/display/SceneDetector;

    iget v8, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/display/SceneDetector;->updateAmbientLux(IFZ)V

    goto/16 :goto_25c

    .line 359
    :cond_1b9
    iget v10, v0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    sget v11, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_MAIN_LIGHT_SENSOR:I

    if-ne v10, v11, :cond_234

    .line 360
    sget v6, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_ASSIST_LIGHT_SENSOR:I

    iput v6, v0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    .line 361
    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mHysteresisLevelsImpl:Lcom/android/server/display/HysteresisLevelsStub;

    iget v10, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    invoke-virtual {v6, v10}, Lcom/android/server/display/HysteresisLevelsStub;->getBrighteningThreshold(F)F

    move-result v6

    iput v6, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningThreshold:F

    .line 362
    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mHysteresisLevelsImpl:Lcom/android/server/display/HysteresisLevelsStub;

    iget v10, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    invoke-virtual {v6, v10}, Lcom/android/server/display/HysteresisLevelsStub;->getDarkeningThreshold(F)F

    move-result v6

    iput v6, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistDarkeningThreshold:F

    .line 363
    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mHysteresisLevelsImpl:Lcom/android/server/display/HysteresisLevelsStub;

    iget v10, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    invoke-virtual {v6, v10}, Lcom/android/server/display/HysteresisLevelsStub;->getBrighteningSmallThreshold(F)F

    move-result v6

    iput v6, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningSmallThreshold:F

    .line 364
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateDualSensorPolicy: switch assist light sensor for lux update from main light sensor, mMainFastAmbientLux: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mMainSlowAmbientLux:F

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v8, v22

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistSlowAmbientLux:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v6}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->isAonFlareEnabled()Z

    move-result v6

    if-eqz v6, :cond_22b

    .line 370
    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mSceneDetector:Lcom/android/server/display/SceneDetector;

    iget v8, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/display/SceneDetector;->updateAmbientLux(IFZ)V

    goto :goto_25c

    .line 372
    :cond_22b
    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    iget v8, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    const/4 v9, 0x1

    invoke-interface {v6, v7, v8, v9, v9}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateAmbientLux(IFZZ)V

    goto :goto_25c

    .line 375
    :cond_234
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    iget v8, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9, v9}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateAmbientLux(IFZZ)V

    .line 380
    :goto_25c
    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v6, v2, v3}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateNextBrighteningTransition(J)J

    move-result-wide v8

    .line 381
    .end local v17  # "nextBrightenTransition":J
    .restart local v8  # "nextBrightenTransition":J
    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v6, v2, v3}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateNextDarkeningTransition(J)J

    move-result-wide v13

    .line 382
    .end local v19  # "nextDarkenTransition":J
    .restart local v13  # "nextDarkenTransition":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v6}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->getBrighteningThreshold()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v10, v23

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    .line 383
    invoke-interface {v6}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->getDarkeningThreshold()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v11, v21

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    .line 384
    invoke-interface {v6}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->getSmallBrighteningThreshold()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 382
    invoke-static {v12, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v5, v8

    goto :goto_2a8

    .line 386
    .end local v8  # "nextBrightenTransition":J
    .end local v13  # "nextDarkenTransition":J
    .restart local v17  # "nextBrightenTransition":J
    .restart local v19  # "nextDarkenTransition":J
    :cond_2a4
    move-wide/from16 v5, v17

    move-wide/from16 v13, v19

    .end local v17  # "nextBrightenTransition":J
    .end local v19  # "nextDarkenTransition":J
    .restart local v5  # "nextBrightenTransition":J
    .restart local v13  # "nextDarkenTransition":J
    :goto_2a8
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 387
    .local v8, "nextTransitionTime":J
    cmp-long v10, v8, v2

    if-lez v10, :cond_2b2

    move-wide v10, v8

    goto :goto_2b6

    :cond_2b2
    iget v10, v0, Lcom/android/server/display/DualSensorPolicy;->mLightSensorRate:I

    int-to-long v10, v10

    add-long/2addr v10, v2

    .line 388
    .end local v8  # "nextTransitionTime":J
    .local v10, "nextTransitionTime":J
    :goto_2b6
    sget-boolean v8, Lcom/android/server/display/DualSensorPolicy;->DEBUG:Z

    if-eqz v8, :cond_2d9

    .line 389
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateDualSensorPolicy: next transition time of main light sensor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 390
    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 389
    invoke-static {v12, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_2d9
    iget-object v8, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v8, v10, v11}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->sendUpdateAmbientLuxMessage(J)V

    .end local v1  # "mainBrighteningThreshold":F
    .end local v4  # "mainDarkeningThreshold":F
    .end local v5  # "nextBrightenTransition":J
    .end local v10  # "nextTransitionTime":J
    .end local v13  # "nextDarkenTransition":J
    goto/16 :goto_4c3

    .line 393
    :cond_2e0
    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerStub;->HANDLE_ASSIST_LUX_EVENT:I

    if-ne v7, v1, :cond_4c3

    .line 394
    iget-object v1, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    iget v4, v0, Lcom/android/server/display/DualSensorPolicy;->mAmbientLightHorizonLong:I

    int-to-long v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/display/AmbientLightRingBuffer;->calculateAmbientLux(JJ)F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistSlowAmbientLux:F

    .line 395
    iget-object v1, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    iget v4, v0, Lcom/android/server/display/DualSensorPolicy;->mAmbientLightHorizonShort:I

    int-to-long v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/display/AmbientLightRingBuffer;->calculateAmbientLux(JJ)F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    .line 396
    iget-object v1, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    iget v4, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    iget v5, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningThreshold:F

    iget v6, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningSmallThreshold:F

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/AmbientLightRingBuffer;->nextAmbientLightBrighteningTransition(JFFF)J

    move-result-wide v4

    .line 398
    .local v4, "nextBrightenTransition":J
    iget-object v1, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    iget v6, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistDarkeningThreshold:F

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/display/AmbientLightRingBuffer;->nextAmbientLightDarkeningTransition(JF)J

    move-result-wide v10

    .line 400
    .local v10, "nextDarkenTransition":J
    iget-object v1, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v1}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->getBrighteningThreshold()F

    move-result v1

    .line 401
    .restart local v1  # "mainBrighteningThreshold":F
    invoke-direct {v0}, Lcom/android/server/display/DualSensorPolicy;->getAssistBrighteningThreshold()F

    move-result v6

    .line 402
    .local v6, "assistBrighteningThreshold":F
    iget v13, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistSlowAmbientLux:F

    cmpl-float v13, v13, v6

    if-ltz v13, :cond_328

    iget v13, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    cmpl-float v13, v13, v6

    if-ltz v13, :cond_328

    cmp-long v13, v4, v2

    if-lez v13, :cond_334

    :cond_328
    iget v13, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    iget v14, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistDarkeningThreshold:F

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_48b

    cmp-long v13, v10, v2

    if-gtz v13, :cond_48b

    .line 407
    :cond_334
    iget v13, v0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    sget v14, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_MAIN_LIGHT_SENSOR:I

    if-ne v13, v14, :cond_346

    iget v13, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistSlowAmbientLux:F

    cmpl-float v13, v13, v1

    if-lez v13, :cond_346

    iget v13, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    cmpl-float v13, v13, v1

    if-gtz v13, :cond_354

    :cond_346
    iget v13, v0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    sget v14, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_ASSIST_LIGHT_SENSOR:I

    if-ne v13, v14, :cond_3d0

    iget v13, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    iget v14, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_3d0

    .line 412
    :cond_354
    iget-object v9, v0, Lcom/android/server/display/DualSensorPolicy;->mBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v9}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->isRearScreenDevice()Z

    move-result v9

    if-eqz v9, :cond_36b

    iget-object v9, v0, Lcom/android/server/display/DualSensorPolicy;->mSceneDetector:Lcom/android/server/display/SceneDetector;

    .line 413
    invoke-virtual {v9}, Lcom/android/server/display/SceneDetector;->isReflectiveScene()Z

    move-result v9

    if-eqz v9, :cond_36b

    .line 414
    const-string v8, "drop this brightness because of is reflective scene!"

    invoke-static {v12, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42c

    .line 416
    :cond_36b
    sget v9, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_ASSIST_LIGHT_SENSOR:I

    iput v9, v0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    .line 417
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateDualSensorPolicy: update ambient lux using assist light sensor, mAssistFastAmbientLux: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v13, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistSlowAmbientLux:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mAssistBrighteningThreshold: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningThreshold:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mAssistBrighteningSmallThreshold: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningSmallThreshold:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mAssistDarkeningThreshold: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistDarkeningThreshold:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v8, v0, Lcom/android/server/display/DualSensorPolicy;->mBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v8}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->isAonFlareEnabled()Z

    move-result v8

    if-eqz v8, :cond_3c7

    .line 424
    iget-object v8, v0, Lcom/android/server/display/DualSensorPolicy;->mSceneDetector:Lcom/android/server/display/SceneDetector;

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    const/4 v13, 0x0

    invoke-virtual {v8, v7, v9, v13}, Lcom/android/server/display/SceneDetector;->updateAmbientLux(IFZ)V

    goto :goto_42c

    .line 426
    :cond_3c7
    iget-object v8, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    const/4 v13, 0x1

    invoke-interface {v8, v7, v9, v13, v13}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateAmbientLux(IFZZ)V

    goto :goto_42c

    .line 429
    :cond_3d0
    iget v13, v0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    sget v14, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_ASSIST_LIGHT_SENSOR:I

    if-ne v13, v14, :cond_42c

    .line 430
    sget v13, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_MAIN_LIGHT_SENSOR:I

    iput v13, v0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    .line 431
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateDualSensorPolicy: switch main light sensor for lux update from assist light sensor, mAssistFastAmbientLux: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v13, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistSlowAmbientLux:F

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, ", mMainFastAmbientLux: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v13, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mMainSlowAmbientLux:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v8, v0, Lcom/android/server/display/DualSensorPolicy;->mBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v8}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->isAonFlareEnabled()Z

    move-result v8

    if-eqz v8, :cond_424

    .line 437
    iget-object v8, v0, Lcom/android/server/display/DualSensorPolicy;->mSceneDetector:Lcom/android/server/display/SceneDetector;

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    const/4 v13, 0x0

    invoke-virtual {v8, v7, v9, v13}, Lcom/android/server/display/SceneDetector;->updateAmbientLux(IFZ)V

    goto :goto_42c

    .line 439
    :cond_424
    iget-object v8, v0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    const/4 v13, 0x1

    invoke-interface {v8, v7, v9, v13, v13}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateAmbientLux(IFZZ)V

    .line 442
    :cond_42c
    :goto_42c
    iget-object v8, v0, Lcom/android/server/display/DualSensorPolicy;->mHysteresisLevelsImpl:Lcom/android/server/display/HysteresisLevelsStub;

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    invoke-virtual {v8, v9}, Lcom/android/server/display/HysteresisLevelsStub;->getBrighteningThreshold(F)F

    move-result v8

    iput v8, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningThreshold:F

    .line 443
    iget-object v8, v0, Lcom/android/server/display/DualSensorPolicy;->mHysteresisLevelsImpl:Lcom/android/server/display/HysteresisLevelsStub;

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    invoke-virtual {v8, v9}, Lcom/android/server/display/HysteresisLevelsStub;->getDarkeningThreshold(F)F

    move-result v8

    iput v8, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistDarkeningThreshold:F

    .line 444
    iget-object v8, v0, Lcom/android/server/display/DualSensorPolicy;->mHysteresisLevelsImpl:Lcom/android/server/display/HysteresisLevelsStub;

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistFastAmbientLux:F

    invoke-virtual {v8, v9}, Lcom/android/server/display/HysteresisLevelsStub;->getBrighteningSmallThreshold(F)F

    move-result v8

    iput v8, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningSmallThreshold:F

    .line 445
    iget-object v8, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningThreshold:F

    invoke-virtual {v8, v2, v3, v9}, Lcom/android/server/display/AmbientLightRingBuffer;->nextAmbientLightBrighteningTransition(JF)J

    move-result-wide v4

    .line 446
    iget-object v8, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistLightSensorRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistDarkeningThreshold:F

    invoke-virtual {v8, v2, v3, v9}, Lcom/android/server/display/AmbientLightRingBuffer;->nextAmbientLightDarkeningTransition(JF)J

    move-result-wide v10

    .line 447
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateDualSensorPolicy: next brightening threshold of assist light sensor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningThreshold:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", next darkening threshold of assist light sensor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistDarkeningThreshold:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", next small brightening threshold of assist light sensor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/display/DualSensorPolicy;->mAssistBrighteningSmallThreshold:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_48b
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 452
    .restart local v8  # "nextTransitionTime":J
    cmp-long v13, v8, v2

    if-lez v13, :cond_495

    move-wide v13, v8

    goto :goto_499

    :cond_495
    iget v13, v0, Lcom/android/server/display/DualSensorPolicy;->mLightSensorRate:I

    int-to-long v13, v13

    add-long/2addr v13, v2

    .line 453
    .end local v8  # "nextTransitionTime":J
    .local v13, "nextTransitionTime":J
    :goto_499
    sget-boolean v8, Lcom/android/server/display/DualSensorPolicy;->DEBUG:Z

    if-eqz v8, :cond_4bc

    .line 454
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateDualSensorPolicy: next transition time of assist light sensor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 455
    invoke-static {v13, v14}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 454
    invoke-static {v12, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_4bc
    iget-object v8, v0, Lcom/android/server/display/DualSensorPolicy;->mPolicyHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v13, v14}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_4c4

    .line 393
    .end local v1  # "mainBrighteningThreshold":F
    .end local v4  # "nextBrightenTransition":J
    .end local v6  # "assistBrighteningThreshold":F
    .end local v10  # "nextDarkenTransition":J
    .end local v13  # "nextTransitionTime":J
    :cond_4c3
    :goto_4c3
    nop

    .line 459
    :goto_4c4
    const/16 v16, 0x1

    return v16
.end method

.method protected updateMainLightSensorAmbientThreshold(I)Z
    .registers 4
    .param p1, "event"  # I

    .line 260
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerStub;->HANDLE_MAIN_LUX_EVENT:I

    if-eq p1, v0, :cond_11

    iget v0, p0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_MAIN_LIGHT_SENSOR:I

    if-ne v0, v1, :cond_f

    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerStub;->HANDLE_ASSIST_LUX_EVENT:I

    if-ne p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method protected updateMainLuxStatus(F)V
    .registers 3
    .param p1, "currentLux"  # F

    .line 568
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerStub;->HANDLE_MAIN_LUX_EVENT:I

    iput v0, p0, Lcom/android/server/display/DualSensorPolicy;->mUseLightSensorFlag:I

    .line 569
    iput p1, p0, Lcom/android/server/display/DualSensorPolicy;->mMainSlowAmbientLux:F

    .line 570
    iput p1, p0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    .line 571
    return-void
.end method

.method public updateSingleSensorPolicy(J)Z
    .registers 15
    .param p1, "time"  # J

    .line 474
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->calculateSlowAmbientLux(J)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DualSensorPolicy;->mMainSlowAmbientLux:F

    .line 475
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->calculateFastAmbientLux(J)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    .line 476
    iget-object v0, p0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    iget v1, p0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    invoke-interface {v0, p1, p2, v1}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateNextBrighteningTransition(JF)J

    move-result-wide v0

    .line 477
    .local v0, "nextBrightenTransition":J
    iget-object v2, p0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v2, p1, p2}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateNextDarkeningTransition(J)J

    move-result-wide v2

    .line 478
    .local v2, "nextDarkenTransition":J
    invoke-direct {p0}, Lcom/android/server/display/DualSensorPolicy;->getBrighteningThreshold()F

    move-result v4

    .line 479
    .local v4, "mainBrighteningThreshold":F
    iget-object v5, p0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v5}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->getDarkeningThreshold()F

    move-result v5

    .line 480
    .local v5, "mainDarkeningThreshold":F
    iget v6, p0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    cmpl-float v6, v6, v4

    const/4 v7, 0x1

    if-ltz v6, :cond_39

    iget v6, p0, Lcom/android/server/display/DualSensorPolicy;->mMainSlowAmbientLux:F

    cmpl-float v6, v6, v4

    if-ltz v6, :cond_39

    cmp-long v6, v0, p1

    if-lez v6, :cond_43

    :cond_39
    iget v6, p0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_58

    cmp-long v6, v2, p1

    if-gtz v6, :cond_58

    .line 485
    :cond_43
    iget-object v6, p0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    sget v8, Lcom/android/server/display/AutomaticBrightnessControllerStub;->HANDLE_MAIN_LUX_EVENT:I

    iget v9, p0, Lcom/android/server/display/DualSensorPolicy;->mMainFastAmbientLux:F

    invoke-interface {v6, v8, v9, v7, v7}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateAmbientLux(IFZZ)V

    .line 486
    iget-object v6, p0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v6, p1, p2}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateNextBrighteningTransition(J)J

    move-result-wide v0

    .line 487
    iget-object v6, p0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v6, p1, p2}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->updateNextDarkeningTransition(J)J

    move-result-wide v2

    .line 489
    :cond_58
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 490
    .local v8, "nextTransitionTime":J
    cmp-long v6, v8, p1

    if-lez v6, :cond_62

    move-wide v10, v8

    goto :goto_66

    :cond_62
    iget v6, p0, Lcom/android/server/display/DualSensorPolicy;->mLightSensorRate:I

    int-to-long v10, v6

    add-long/2addr v10, p1

    .line 491
    .end local v8  # "nextTransitionTime":J
    .local v10, "nextTransitionTime":J
    :goto_66
    iget-object v6, p0, Lcom/android/server/display/DualSensorPolicy;->mListener:Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    invoke-interface {v6, v10, v11}, Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;->sendUpdateAmbientLuxMessage(J)V

    .line 492
    return v7
.end method
