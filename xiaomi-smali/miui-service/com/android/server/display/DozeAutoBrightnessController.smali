# classes.dex

.class public Lcom/android/server/display/DozeAutoBrightnessController;
.super Ljava/lang/Object;
.source "DozeAutoBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;,
        Lcom/android/server/display/DozeAutoBrightnessController$Callback;
    }
.end annotation


# static fields
.field private static final ASSISTANT_LIGHT_SENSOR_TYPE:I = 0x1fa266f

.field private static final BACK_DISPLAY:I = 0x1

.field private static final DARK_LIGHT_CURVE_THRESHOLD:F = 50.0f

.field private static final DEFAULT_DISPLAY:I = 0x0

.field private static final DOZE_AMBIENT_LIGHT_HORIZON:I = 0x3e8

.field private static final INDOOR_LIGHT_CURVE_THRESHOLD:F = 600.0f

.field private static final LIGHT_DEBOUNCE_CONFIG:I = 0x3e8

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final OUTDOOR_LIGHT_CURVE_THRESHOLD:F = 4000.0f

.field private static final SPECIAL_POINT_NIT:F = 30.0f

.field private static final SUB_SCREEN_ON_ACTION:Ljava/lang/String; = "miui.intent.action.SUB_SCREEN_ON"

.field private static final TAG:Ljava/lang/String; = "DozeAutoBrightnessController"


# instance fields
.field private final DEBUG:Z

.field private final IS_WAKEUP:Z

.field private final brightnessLock:Ljava/lang/Object;

.field private mAmbientBrighteningThreshold:F

.field private mAmbientDarkeningThreshold:F

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private final mCallbacks:Lcom/android/server/display/DozeAutoBrightnessController$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrentBrightness:F

.field private final mDefaultDozeSpline:Landroid/util/Spline;

.field private final mDefaultLuxLevels:[F

.field private final mDefaultNitsLevels:[F

.field private mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field private mDisplayId:I

.field private mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

.field private final mDozeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDynamicDozeSpline:Landroid/util/Spline;

.field private mDynamicLuxLevels:[F

.field private mDynamicNitsLevels:[F

.field private mHandler:Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;

.field private mIsDimming:Z

.field private mIsFirstBrightness:Z

.field private mIsFirstLux:Z

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorRate:I

.field private mLightSensorWarmUpTimeConfig:J

.field private mNormalBrightness:F

.field private mScreenAutoBrightness:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mSubDisplayThresholdLevels:[I

.field private final mSubDisplayThresholdsConstant:[I

.field private mSupportDifferentSensor:Z

.field private final mTag:Ljava/lang/String;

.field private final mThresholdLevels:[I

.field private final mThresholdsConstant:[I

.field private mUseDynamicDozeCurve:Z


# direct methods
.method public static synthetic $r8$lambda$QhJ8SU1jO2VGM21kf7te6p9MNHw(Lcom/android/server/display/DozeAutoBrightnessController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DozeAutoBrightnessController;->lambda$stop$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZaBaHbOvXUfNxliEFWIuL_fCTQs(Lcom/android/server/display/DozeAutoBrightnessController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DozeAutoBrightnessController;->registerDozeBroadcastReceiver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbrightnessLock(Lcom/android/server/display/DozeAutoBrightnessController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->brightnessLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLightSensorEnabled(Lcom/android/server/display/DozeAutoBrightnessController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensorEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/display/DozeAutoBrightnessController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDynamicDozeSpline(Lcom/android/server/display/DozeAutoBrightnessController;Landroid/util/Spline;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDynamicDozeSpline:Landroid/util/Spline;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFirstLux(Lcom/android/server/display/DozeAutoBrightnessController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mIsFirstLux:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScreenAutoBrightness(Lcom/android/server/display/DozeAutoBrightnessController;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mScreenAutoBrightness:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUseDynamicDozeCurve(Lcom/android/server/display/DozeAutoBrightnessController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mUseDynamicDozeCurve:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleLightSensorEvent(Lcom/android/server/display/DozeAutoBrightnessController;JF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DozeAutoBrightnessController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAmbientLux(Lcom/android/server/display/DozeAutoBrightnessController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DozeAutoBrightnessController;->updateAmbientLux()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/DozeAutoBrightnessController$Callback;Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 11
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "looper"  # Landroid/os/Looper;
    .param p3, "displayDeviceConfig"  # Lcom/android/server/display/DisplayDeviceConfig;
    .param p4, "callbacks"  # Lcom/android/server/display/DozeAutoBrightnessController$Callback;
    .param p5, "displayPowerControllerImpl"  # Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, "persist.doze.auto.brightness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->DEBUG:Z

    .line 34
    const-string/jumbo v0, "persist.doze.wakeup.sensor"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->IS_WAKEUP:Z

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->brightnessLock:Ljava/lang/Object;

    .line 68
    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mScreenAutoBrightness:F

    .line 69
    iput v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mCurrentBrightness:F

    .line 70
    iput v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mNormalBrightness:F

    .line 143
    new-instance v0, Lcom/android/server/display/DozeAutoBrightnessController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DozeAutoBrightnessController$1;-><init>(Lcom/android/server/display/DozeAutoBrightnessController;)V

    iput-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDozeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 539
    new-instance v0, Lcom/android/server/display/DozeAutoBrightnessController$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/DozeAutoBrightnessController$2;-><init>(Lcom/android/server/display/DozeAutoBrightnessController;)V

    iput-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensorRate:I

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e00c4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensorWarmUpTimeConfig:J

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x110300f9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mThresholdLevels:[I

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11030103

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mSubDisplayThresholdLevels:[I

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x110300f8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mThresholdsConstant:[I

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11030102

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mSubDisplayThresholdsConstant:[I

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x110300f5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DozeAutoBrightnessController;->getLuxLevels([I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x110300f6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DozeAutoBrightnessController;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultNitsLevels:[F

    .line 99
    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 100
    new-instance v0, Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;-><init>(Lcom/android/server/display/DozeAutoBrightnessController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mHandler:Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;

    .line 101
    iput-object p3, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 102
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    iget-object v2, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultNitsLevels:[F

    invoke-static {v0, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultDozeSpline:Landroid/util/Spline;

    .line 103
    new-instance v0, Lcom/android/server/display/AmbientLightRingBuffer;

    iget v2, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensorRate:I

    int-to-long v2, v2

    const/16 v4, 0x3e8

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/display/AmbientLightRingBuffer;-><init>(JI)V

    iput-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    .line 104
    iput-object p4, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mCallbacks:Lcom/android/server/display/DozeAutoBrightnessController$Callback;

    .line 105
    iput-object p1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mContext:Landroid/content/Context;

    .line 106
    iput-object p5, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 107
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getDisplayID()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDisplayId:I

    .line 108
    iput-boolean v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mUseDynamicDozeCurve:Z

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mIsFirstLux:Z

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DozeAutoBrightnessController["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isRearScreenDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mSupportDifferentSensor:Z

    .line 112
    iget-boolean v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mSupportDifferentSensor:Z

    iget v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDisplayId:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DozeAutoBrightnessController;->getLightSensor(ZI)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 114
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mHandler:Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;

    new-instance v1, Lcom/android/server/display/DozeAutoBrightnessController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/display/DozeAutoBrightnessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DozeAutoBrightnessController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .registers 7
    .param p1, "time"  # J
    .param p3, "lux"  # F

    .line 229
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    const-wide/16 v1, 0x3e8

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/AmbientLightRingBuffer;->prune(J)V

    .line 230
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AmbientLightRingBuffer;->push(JF)V

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DozeAutoBrightnessController;->updateAmbientLux(J)V

    .line 232
    return-void
.end method

.method private getBrighteningThreshold(F)F
    .registers 4
    .param p1, "value"  # F

    .line 433
    iget v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDisplayId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 434
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mSubDisplayThresholdLevels:[I

    iget-object v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mSubDisplayThresholdsConstant:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/display/DozeAutoBrightnessController;->getReferenceLevel(F[I[I)F

    move-result v0

    .local v0, "brightConstant":F
    goto :goto_16

    .line 437
    .end local v0  # "brightConstant":F
    :cond_e
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mThresholdLevels:[I

    iget-object v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mThresholdsConstant:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/display/DozeAutoBrightnessController;->getReferenceLevel(F[I[I)F

    move-result v0

    .line 440
    .restart local v0  # "brightConstant":F
    :goto_16
    add-float v1, p1, v0

    .line 441
    .local v1, "brightThreshold":F
    return v1
.end method

.method private getDarkeningThreshold(F)F
    .registers 6
    .param p1, "value"  # F

    .line 446
    iget v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDisplayId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 447
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mSubDisplayThresholdLevels:[I

    iget-object v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mSubDisplayThresholdsConstant:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/display/DozeAutoBrightnessController;->getReferenceLevel(F[I[I)F

    move-result v0

    .local v0, "darkenConstant":F
    goto :goto_16

    .line 450
    .end local v0  # "darkenConstant":F
    :cond_e
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mThresholdLevels:[I

    iget-object v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mThresholdsConstant:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/display/DozeAutoBrightnessController;->getReferenceLevel(F[I[I)F

    move-result v0

    .line 453
    .restart local v0  # "darkenConstant":F
    :goto_16
    sub-float v1, p1, v0

    .line 454
    .local v1, "darkThreshold":F
    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v1

    :goto_1f
    return v2
.end method

.method private getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 6
    .param p1, "array"  # Landroid/content/res/TypedArray;

    .line 503
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 504
    .local v0, "N":I
    new-array v1, v0, [F

    .line 505
    .local v1, "values":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_14

    .line 506
    const/high16 v3, -0x40800000  # -1.0f

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 505
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 508
    .end local v2  # "i":I
    :cond_14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 509
    return-object v1
.end method

.method private getLightSensor(ZI)Landroid/hardware/Sensor;
    .registers 8
    .param p1, "supportDifferentSensor"  # Z
    .param p2, "displayId"  # I

    .line 119
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1e

    if-ne p2, v1, :cond_1e

    .line 120
    iget-object v2, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v3, p0, Lcom/android/server/display/DozeAutoBrightnessController;->IS_WAKEUP:Z

    const v4, 0x1fa266f

    invoke-virtual {v2, v4, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v2

    .line 121
    .local v2, "sensor":Landroid/hardware/Sensor;
    if-nez v2, :cond_33

    iget-boolean v3, p0, Lcom/android/server/display/DozeAutoBrightnessController;->IS_WAKEUP:Z

    if-ne v3, v1, :cond_33

    .line 122
    iget-object v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v4, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v2

    goto :goto_33

    .line 125
    .end local v2  # "sensor":Landroid/hardware/Sensor;
    :cond_1e
    iget-object v2, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v3, p0, Lcom/android/server/display/DozeAutoBrightnessController;->IS_WAKEUP:Z

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v2

    .line 126
    .restart local v2  # "sensor":Landroid/hardware/Sensor;
    if-nez v2, :cond_33

    iget-boolean v3, p0, Lcom/android/server/display/DozeAutoBrightnessController;->IS_WAKEUP:Z

    if-ne v3, v1, :cond_33

    .line 127
    iget-object v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v4, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v2

    .line 130
    :cond_33
    :goto_33
    return-object v2
.end method

.method private getLuxLevels([I)[F
    .registers 6
    .param p1, "lux"  # [I

    .line 495
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    .line 496
    .local v0, "levels":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_13

    .line 497
    add-int/lit8 v2, v1, 0x1

    aget v3, p1, v1

    int-to-float v3, v3

    aput v3, v0, v2

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 499
    .end local v1  # "i":I
    :cond_13
    return-object v0
.end method

.method private getReferenceLevel(F[I[I)F
    .registers 6
    .param p1, "value"  # F
    .param p2, "thresholdLevels"  # [I
    .param p3, "thresholdPercentages"  # [I

    .line 459
    if-eqz p2, :cond_24

    array-length v0, p2

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    aget v0, p2, v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_e

    goto :goto_24

    .line 462
    :cond_e
    const/4 v0, 0x0

    .line 463
    .local v0, "index":I
    :goto_f
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_20

    add-int/lit8 v1, v0, 0x1

    aget v1, p2, v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_20

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 466
    :cond_20
    aget v1, p3, v0

    int-to-float v1, v1

    return v1

    .line 460
    .end local v0  # "index":I
    :cond_24
    :goto_24
    const/4 v0, 0x0

    return v0
.end method

.method private handleLightSensorEvent(JF)V
    .registers 6
    .param p1, "time"  # J
    .param p3, "lux"  # F

    .line 224
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mHandler:Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;->removeMessages(I)V

    .line 225
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DozeAutoBrightnessController;->applyLightSensorMeasurement(JF)V

    .line 226
    return-void
.end method

.method public static isAutoBrightnessEnabled(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"  # Landroid/content/Context;

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "mAutoBrightnessEnable":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    move v4, v2

    .line 169
    .end local v0  # "mAutoBrightnessEnable":Z
    .local v4, "mAutoBrightnessEnable":Z
    :cond_12
    return v4
.end method

.method private synthetic lambda$stop$0()V
    .registers 3

    .line 532
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDozeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .registers 9
    .param p1, "time"  # J

    .line 470
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientLightRingBuffer;->size()I

    move-result v0

    .line 471
    .local v0, "N":I
    move-wide v1, p1

    .line 472
    .local v1, "earliestValidTime":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_9
    if-ltz v3, :cond_21

    .line 473
    iget-object v4, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientBrighteningThreshold:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_18

    .line 474
    goto :goto_21

    .line 476
    :cond_18
    iget-object v4, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 472
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 478
    .end local v3  # "i":I
    :cond_21
    :goto_21
    const-wide/16 v3, 0x3e8

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .registers 9
    .param p1, "time"  # J

    .line 482
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientLightRingBuffer;->size()I

    move-result v0

    .line 483
    .local v0, "N":I
    move-wide v1, p1

    .line 484
    .local v1, "earliestValidTime":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_9
    if-ltz v3, :cond_21

    .line 485
    iget-object v4, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientDarkeningThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_18

    .line 486
    goto :goto_21

    .line 488
    :cond_18
    iget-object v4, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 484
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 490
    .end local v3  # "i":I
    :cond_21
    :goto_21
    const-wide/16 v3, 0x3e8

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private registerDozeBroadcastReceiver()V
    .registers 4

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-boolean v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mSupportDifferentSensor:Z

    if-eqz v1, :cond_15

    iget v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDisplayId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 136
    const-string/jumbo v1, "miui.intent.action.SUB_SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1a

    .line 138
    :cond_15
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    :goto_1a
    iget-object v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDozeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    return-void
.end method

.method private setAmbientLux(F)V
    .registers 5
    .param p1, "lux"  # F

    .line 269
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_d

    .line 270
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    const-string v1, "Ambient lux was negative, ignoring and setting to 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 p1, 0x0

    .line 273
    :cond_d
    iput p1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    .line 274
    invoke-direct {p0, p1}, Lcom/android/server/display/DozeAutoBrightnessController;->getBrighteningThreshold(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientBrighteningThreshold:F

    .line 275
    invoke-direct {p0, p1}, Lcom/android/server/display/DozeAutoBrightnessController;->getDarkeningThreshold(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientDarkeningThreshold:F

    .line 276
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AmbientLux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAmbientDarkeningThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientDarkeningThreshold:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAmbientBrighteningThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void
.end method

.method private updateAmbientLux()V
    .registers 6

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 264
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    const-wide/16 v3, 0x3e8

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/AmbientLightRingBuffer;->prune(J)V

    .line 265
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DozeAutoBrightnessController;->updateAmbientLux(J)V

    .line 266
    return-void
.end method

.method private updateAmbientLux(J)V
    .registers 12
    .param p1, "time"  # J

    .line 235
    iget-boolean v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLuxValid:Z

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    if-nez v0, :cond_24

    .line 236
    iget-wide v4, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensorWarmUpTimeConfig:J

    iget-wide v6, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensorEnableTime:J

    add-long/2addr v4, v6

    .line 238
    .local v4, "timeWhenSensorWarmedUp":J
    cmp-long v0, p1, v4

    if-gez v0, :cond_16

    .line 239
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mHandler:Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 240
    return-void

    .line 242
    :cond_16
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/display/AmbientLightRingBuffer;->calculateAmbientLux(JJ)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DozeAutoBrightnessController;->setAmbientLux(F)V

    .line 243
    iput-boolean v3, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLuxValid:Z

    .line 244
    invoke-direct {p0}, Lcom/android/server/display/DozeAutoBrightnessController;->updateAutoBrightness()V

    .line 246
    .end local v4  # "timeWhenSensorWarmedUp":J
    :cond_24
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DozeAutoBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v4

    .line 247
    .local v4, "nextBrightenTransition":J
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DozeAutoBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v6

    .line 248
    .local v6, "nextDarkenTransition":J
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/display/AmbientLightRingBuffer;->calculateAmbientLux(JJ)F

    move-result v0

    .line 249
    .local v0, "ambientLux":F
    iget v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientBrighteningThreshold:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3c

    cmp-long v1, v4, p1

    if-lez v1, :cond_46

    :cond_3c
    iget v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientDarkeningThreshold:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_54

    cmp-long v1, v6, p1

    if-gtz v1, :cond_54

    .line 253
    :cond_46
    invoke-direct {p0, v0}, Lcom/android/server/display/DozeAutoBrightnessController;->setAmbientLux(F)V

    .line 254
    invoke-direct {p0}, Lcom/android/server/display/DozeAutoBrightnessController;->updateAutoBrightness()V

    .line 255
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DozeAutoBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v4

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DozeAutoBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v6

    .line 258
    :cond_54
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 259
    .local v1, "nextTransitionTime":J
    iget-object v8, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mHandler:Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;

    invoke-virtual {v8, v3, v1, v2}, Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 260
    return-void
.end method

.method private updateAutoBrightness()V
    .registers 20

    .line 282
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLuxValid:Z

    if-nez v1, :cond_7

    .line 283
    return-void

    .line 285
    :cond_7
    iget-boolean v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mUseDynamicDozeCurve:Z

    if-eqz v1, :cond_6a

    .line 286
    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v2, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDynamicDozeSpline:Landroid/util/Spline;

    iget v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    .line 287
    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    .line 286
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mCurrentBrightness:F

    .line 288
    iget-boolean v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->DEBUG:Z

    if-eqz v1, :cond_7a

    .line 289
    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump lux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDynamicDozeSpline:Landroid/util/Spline;

    iget v4, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump mDynamicDozeSpline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDynamicDozeSpline:Landroid/util/Spline;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 293
    :cond_6a
    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v2, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultDozeSpline:Landroid/util/Spline;

    iget v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    .line 294
    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    .line 293
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mCurrentBrightness:F

    .line 297
    :cond_7a
    :goto_7a
    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mContext:Landroid/content/Context;

    .line 298
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    .line 300
    .local v1, "mMaxScreenBrightness":F
    iget v2, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mCurrentBrightness:F

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float v4, v1, v3

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    .line 301
    .local v2, "mCurDbv":F
    iget v4, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mNormalBrightness:F

    sub-float v5, v1, v3

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    .line 302
    .local v4, "mNormalDbv":F
    iget-object v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAodAutoBrightness: mScreenAodAutoBrightness="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mScreenAutoBrightness:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newAodScreenAutoBrightness="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mCurrentBrightness:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCurrentDbv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mNormalBrightness="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mNormalBrightness:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mNormalDbv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mUseDynamicDozeCurve="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mUseDynamicDozeCurve:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsFirstLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mIsFirstLux:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsDimming="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mIsDimming:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/display/DozeAutoBrightnessController;->isAutoBrightnessEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_119

    iget-boolean v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mIsDimming:Z

    if-eqz v3, :cond_130

    .line 314
    :cond_119
    iget v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mCurrentBrightness:F

    iget v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mNormalBrightness:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_124

    iget v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mCurrentBrightness:F

    goto :goto_126

    :cond_124
    iget v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mNormalBrightness:F

    :goto_126
    iput v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mCurrentBrightness:F

    .line 315
    iget-object v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "use manual brightness mode"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_130
    iget-boolean v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mIsFirstLux:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_462

    iget v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mCurrentBrightness:F

    iget v6, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mNormalBrightness:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_462

    iget-boolean v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mUseDynamicDozeCurve:Z

    if-nez v3, :cond_462

    iget-object v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mContext:Landroid/content/Context;

    .line 320
    invoke-static {v3}, Lcom/android/server/display/DozeAutoBrightnessController;->isAutoBrightnessEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_45d

    iget-boolean v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mIsDimming:Z

    if-nez v3, :cond_45d

    .line 321
    iget-object v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v6, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mNormalBrightness:F

    invoke-virtual {v3, v6}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromBrightness(F)F

    move-result v3

    .line 322
    .local v3, "mCurrentBacklight":F
    iget-object v6, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v6, v3}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v6

    .line 323
    .local v6, "mCurrentNit":F
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v7, "mLuxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v8, "mNitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v9, 0x0

    .line 326
    .local v9, "mFirstLux":F
    iget v10, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    const/high16 v11, 0x42480000  # 50.0f

    if-lez v10, :cond_242

    iget v10, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_242

    .line 327
    iget-object v10, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    const-string/jumbo v11, "use dark light curve"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/high16 v10, 0x42480000  # 50.0f

    .line 329
    .local v10, "mLux1":F
    const/high16 v11, 0x44160000  # 600.0f

    .line 330
    .local v11, "mLux2":F
    iget-object v13, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultNitsLevels:[F

    aget v13, v13, v5

    sub-float v13, v6, v13

    iget v14, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    sub-float/2addr v14, v9

    div-float/2addr v13, v14

    .line 331
    .local v13, "slope":F
    iget-object v14, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultNitsLevels:[F

    aget v14, v14, v5

    .line 332
    .local v14, "intercept":F
    mul-float v15, v10, v13

    add-float/2addr v15, v14

    .line 333
    .local v15, "mLux1Nit":F
    move/from16 v16, v5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultNitsLevels:[F

    aget v5, v5, v16

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultDozeSpline:Landroid/util/Spline;

    invoke-virtual {v5, v11}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-boolean v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->DEBUG:Z

    if-eqz v5, :cond_20e

    .line 342
    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v1

    .end local v1  # "mMaxScreenBrightness":F
    .local v18, "mMaxScreenBrightness":F
    const-string/jumbo v1, "mCurrentBacklight="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, "mCurrentNit="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, "mLux1Nit="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_210

    .line 341
    .end local v18  # "mMaxScreenBrightness":F
    .restart local v1  # "mMaxScreenBrightness":F
    :cond_20e
    move/from16 v18, v1

    .line 343
    .end local v1  # "mMaxScreenBrightness":F
    .restart local v18  # "mMaxScreenBrightness":F
    :goto_210
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_211
    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    array-length v5, v5

    if-ge v1, v5, :cond_23d

    .line 344
    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    aget v5, v5, v1

    cmpl-float v5, v5, v11

    if-lez v5, :cond_23a

    .line 345
    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultDozeSpline:Landroid/util/Spline;

    iget-object v12, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    aget v12, v12, v1

    invoke-virtual {v5, v12}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_23a
    add-int/lit8 v1, v1, 0x1

    goto :goto_211

    .line 349
    .end local v1  # "i":I
    :cond_23d
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mUseDynamicDozeCurve:Z

    .line 350
    .end local v10  # "mLux1":F
    .end local v11  # "mLux2":F
    .end local v13  # "slope":F
    .end local v14  # "intercept":F
    .end local v15  # "mLux1Nit":F
    goto/16 :goto_3b1

    .line 326
    .end local v18  # "mMaxScreenBrightness":F
    .local v1, "mMaxScreenBrightness":F
    :cond_242
    move/from16 v18, v1

    move/from16 v16, v5

    .line 350
    .end local v1  # "mMaxScreenBrightness":F
    .restart local v18  # "mMaxScreenBrightness":F
    iget v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    cmpl-float v1, v1, v11

    const/high16 v5, 0x44160000  # 600.0f

    if-lez v1, :cond_2a4

    iget v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_2a4

    .line 351
    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "use indoor light curve"

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    array-length v5, v5

    const/16 v17, 0x1

    add-int/lit8 v5, v5, -0x1

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultNitsLevels:[F

    aget v1, v1, v16

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultNitsLevels:[F

    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultNitsLevels:[F

    array-length v5, v5

    const/4 v10, 0x1

    sub-int/2addr v5, v10

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iput-boolean v10, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mUseDynamicDozeCurve:Z

    goto/16 :goto_3b1

    .line 359
    :cond_2a4
    iget v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    cmpl-float v1, v1, v5

    const/high16 v5, 0x457a0000  # 4000.0f

    if-lez v1, :cond_36a

    iget v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_36a

    .line 360
    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "use outdoor light curve"

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/high16 v1, 0x41f00000  # 30.0f

    cmpl-float v1, v6, v1

    if-lez v1, :cond_323

    .line 362
    const/high16 v1, 0x42480000  # 50.0f

    .line 363
    .local v1, "mLux":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2c3
    iget-object v10, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    array-length v10, v10

    if-ge v5, v10, :cond_2ef

    .line 364
    iget-object v10, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    aget v10, v10, v5

    cmpg-float v10, v10, v1

    if-gtz v10, :cond_2ec

    .line 365
    iget-object v10, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    aget v10, v10, v5

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v10, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultDozeSpline:Landroid/util/Spline;

    iget-object v11, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    aget v11, v11, v5

    invoke-virtual {v10, v11}, Landroid/util/Spline;->interpolate(F)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_2ec
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c3

    .line 369
    .end local v5  # "i":I
    :cond_2ef
    iget v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    iget-object v10, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    array-length v10, v10

    const/16 v17, 0x1

    add-int/lit8 v10, v10, -0x1

    aget v5, v5, v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultNitsLevels:[F

    iget-object v10, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultNitsLevels:[F

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget v5, v5, v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v1  # "mLux":F
    const/4 v10, 0x1

    goto :goto_367

    .line 374
    :cond_323
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    array-length v5, v5

    const/16 v17, 0x1

    add-int/lit8 v5, v5, -0x1

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultNitsLevels:[F

    aget v1, v1, v16

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultNitsLevels:[F

    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultNitsLevels:[F

    array-length v5, v5

    const/4 v10, 0x1

    sub-int/2addr v5, v10

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :goto_367
    iput-boolean v10, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mUseDynamicDozeCurve:Z

    goto :goto_3b1

    .line 382
    :cond_36a
    iget v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_3b1

    .line 383
    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "use outdoor high light curve"

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/high16 v1, 0x42a00000  # 80.0f

    cmpg-float v5, v6, v1

    if-gez v5, :cond_3b1

    .line 386
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_37f
    iget-object v10, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    array-length v10, v10

    if-ge v5, v10, :cond_3ae

    .line 387
    iget-object v10, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    aget v10, v10, v5

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v10, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultDozeSpline:Landroid/util/Spline;

    iget-object v11, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultLuxLevels:[F

    aget v11, v11, v5

    invoke-virtual {v10, v11}, Landroid/util/Spline;->interpolate(F)F

    move-result v10

    div-float v11, v6, v1

    mul-float/2addr v10, v11

    .line 389
    .local v10, "mNewNit":F
    const/high16 v11, 0x40000000  # 2.0f

    cmpg-float v11, v10, v11

    if-gez v11, :cond_3a4

    .line 390
    const/high16 v10, 0x40000000  # 2.0f

    .line 391
    :cond_3a4
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v5, v5, 0x1

    goto :goto_37f

    .line 393
    .end local v5  # "i":I
    .end local v10  # "mNewNit":F
    :cond_3ae
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mUseDynamicDozeCurve:Z

    .line 397
    :cond_3b1
    :goto_3b1
    iget-boolean v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mUseDynamicDozeCurve:Z

    if-eqz v1, :cond_466

    .line 398
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDynamicLuxLevels:[F

    .line 399
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDynamicNitsLevels:[F

    .line 400
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3eb

    .line 401
    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDynamicLuxLevels:[F

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v5, v1

    .line 402
    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDynamicNitsLevels:[F

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v5, v1

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c6

    .line 404
    .end local v1  # "i":I
    :cond_3eb
    iget-boolean v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->DEBUG:Z

    if-eqz v1, :cond_423

    .line 405
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_3f0
    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDynamicLuxLevels:[F

    array-length v5, v5

    if-ge v1, v5, :cond_423

    .line 406
    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mDynamicLuxLevels: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDynamicLuxLevels:[F

    aget v11, v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mDynamicNitsLevels: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDynamicNitsLevels:[F

    aget v11, v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f0

    .line 409
    .end local v1  # "i":I
    :cond_423
    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDynamicLuxLevels:[F

    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDynamicNitsLevels:[F

    invoke-static {v1, v5}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDynamicDozeSpline:Landroid/util/Spline;

    .line 410
    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v5, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mDynamicDozeSpline:Landroid/util/Spline;

    iget v10, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLux:F

    .line 411
    invoke-virtual {v5, v10}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    .line 410
    invoke-virtual {v1, v5}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mCurrentBrightness:F

    .line 412
    iget-boolean v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->DEBUG:Z

    if-eqz v1, :cond_466

    .line 413
    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mCurrentBrightness: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mCurrentBrightness:F

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_466

    .line 320
    .end local v3  # "mCurrentBacklight":F
    .end local v6  # "mCurrentNit":F
    .end local v7  # "mLuxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v8  # "mNitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v9  # "mFirstLux":F
    .end local v18  # "mMaxScreenBrightness":F
    .local v1, "mMaxScreenBrightness":F
    :cond_45d
    move/from16 v18, v1

    move/from16 v16, v5

    .end local v1  # "mMaxScreenBrightness":F
    .restart local v18  # "mMaxScreenBrightness":F
    goto :goto_466

    .line 319
    .end local v18  # "mMaxScreenBrightness":F
    .restart local v1  # "mMaxScreenBrightness":F
    :cond_462
    move/from16 v18, v1

    move/from16 v16, v5

    .line 417
    .end local v1  # "mMaxScreenBrightness":F
    .restart local v18  # "mMaxScreenBrightness":F
    :cond_466
    :goto_466
    iget-boolean v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mIsDimming:Z

    if-nez v1, :cond_46e

    .line 418
    move/from16 v1, v16

    iput-boolean v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mIsFirstLux:Z

    .line 420
    :cond_46e
    iget v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mCurrentBrightness:F

    iget v3, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mScreenAutoBrightness:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_47f

    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mCallbacks:Lcom/android/server/display/DozeAutoBrightnessController$Callback;

    if-eqz v1, :cond_47f

    .line 421
    iget-object v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mCallbacks:Lcom/android/server/display/DozeAutoBrightnessController$Callback;

    invoke-interface {v1}, Lcom/android/server/display/DozeAutoBrightnessController$Callback;->updateBrightness()V

    .line 423
    :cond_47f
    iget v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mCurrentBrightness:F

    iput v1, v0, Lcom/android/server/display/DozeAutoBrightnessController;->mScreenAutoBrightness:F

    .line 424
    return-void
.end method


# virtual methods
.method public getDozeAutoBrightnessThreshold()[F
    .registers 7

    .line 516
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultNitsLevels:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultNitsLevels:[F

    array-length v0, v0

    if-eqz v0, :cond_36

    .line 517
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v2, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultNitsLevels:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v0

    .line 519
    .local v0, "minBrightnessFloat":F
    iget-object v2, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v3, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultNitsLevels:[F

    iget-object v4, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDefaultNitsLevels:[F

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v2

    .line 521
    .local v2, "maxBrightnessFloat":F
    iget-object v3, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    const/high16 v4, 0x41f00000  # 30.0f

    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v3

    .line 523
    .local v3, "specialBrightnessFloat":F
    const/4 v4, 0x3

    new-array v4, v4, [F

    aput v2, v4, v1

    aput v0, v4, v5

    const/4 v1, 0x2

    aput v3, v4, v1

    return-object v4

    .line 525
    .end local v0  # "minBrightnessFloat":F
    .end local v2  # "maxBrightnessFloat":F
    .end local v3  # "specialBrightnessFloat":F
    :cond_36
    new-array v0, v1, [F

    return-object v0
.end method

.method public getDozeBrightness()F
    .registers 4

    .line 427
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDozeBrightness :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mScreenAutoBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mScreenAutoBrightness:F

    return v0
.end method

.method public isFirstBrightness()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mIsFirstBrightness:Z

    return v0
.end method

.method public setDimmingStateToDoze(Z)V
    .registers 5
    .param p1, "state"  # Z

    .line 202
    iget-boolean v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mIsDimming:Z

    if-eq v0, p1, :cond_21

    .line 203
    iput-boolean p1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mIsDimming:Z

    .line 204
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDimmingStateToDoze:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mIsDimming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_21
    return-void
.end method

.method public setFirstBrightness(Z)V
    .registers 2
    .param p1, "isFirstBrightness"  # Z

    .line 220
    iput-boolean p1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mIsFirstBrightness:Z

    .line 221
    return-void
.end method

.method public setLightSensorEnabled(Z)V
    .registers 7
    .param p1, "enable"  # Z

    .line 173
    const/4 v0, 0x1

    if-eqz p1, :cond_4c

    .line 174
    iget-boolean v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensorEnabled:Z

    if-nez v1, :cond_81

    .line 175
    iput-boolean v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensorEnabled:Z

    .line 176
    iput-boolean v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mIsFirstBrightness:Z

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensorEnableTime:J

    .line 178
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensorRate:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mHandler:Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 180
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_44

    .line 181
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLightSensorEnabled true, isWakeUpSensor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 183
    :cond_44
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    const-string v1, "LightSensor is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 186
    :cond_4c
    iget-boolean v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensorEnabled:Z

    if-eqz v1, :cond_81

    .line 187
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensorEnabled:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLuxValid:Z

    .line 189
    iget-object v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mHandler:Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;->removeMessages(I)V

    .line 190
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 191
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientLightRingBuffer;->clear()V

    .line 192
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->brightnessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_69
    iget v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mScreenAutoBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_74

    .line 194
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mScreenAutoBrightness:F

    .line 196
    :cond_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_69 .. :try_end_75} :catchall_7e

    .line 197
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "setLightSensorEnabled false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 196
    :catchall_7e
    move-exception v1

    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v1

    .line 199
    :cond_81
    :goto_81
    return-void
.end method

.method public stop()V
    .registers 3

    .line 530
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DozeAutoBrightnessController;->setLightSensorEnabled(Z)V

    .line 531
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mHandler:Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;

    new-instance v1, Lcom/android/server/display/DozeAutoBrightnessController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/DozeAutoBrightnessController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DozeAutoBrightnessController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;->post(Ljava/lang/Runnable;)Z

    .line 533
    return-void
.end method

.method public updateNormalBrightness(F)V
    .registers 5
    .param p1, "brightness"  # F

    .line 209
    iget v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mNormalBrightness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_23

    .line 210
    iput p1, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mNormalBrightness:F

    .line 211
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNormalBrightness brightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DozeAutoBrightnessController;->mNormalBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_23
    return-void
.end method
