# classes.dex

.class public Lcom/android/server/display/ManualMaxBrightnessController;
.super Ljava/lang/Object;
.source "ManualMaxBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ManualMaxBrightnessController$ManualMaxBrightnessHandler;
    }
.end annotation


# static fields
.field private static final ASSISTANT_LIGHT_SENSOR_TYPE:I = 0x1fa266f

.field private static final LIGHT_DEBOUNCE_CONFIG:I = 0x1388

.field private static final MANUAL_AMBIENT_LIGHT_HORIZON:I = 0x1388

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ManualMaxBrightnessController"


# instance fields
.field private mAmbientBrighteningThreshold:F

.field private mAmbientDarkeningThreshold:F

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private volatile mFactorFirstCurrent:D

.field private volatile mFactorFirstTarget:D

.field private volatile mFactorSecondCurrent:D

.field private volatile mFactorSecondTarget:D

.field private mHandler:Lcom/android/server/display/ManualMaxBrightnessController$ManualMaxBrightnessHandler;

.field private volatile mIsSliderMax:Z

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorRate:I

.field private mLightSensorWarmUpTimeConfig:J

.field private mLuxFactor:F

.field private volatile mMaxBrightness:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSupportDynamicBrightnessRange:Z

.field private final mTag:Ljava/lang/String;

.field private final mThresholdLevels:[I

.field private final mThresholdsConstant:[I

.field private mUseBackLightSensor:Z

.field private mshouldOpenLightSensor:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmLightSensorEnabled(Lcom/android/server/display/ManualMaxBrightnessController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLightSensorEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLuxFactor(Lcom/android/server/display/ManualMaxBrightnessController;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLuxFactor:F

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleLightSensorEvent(Lcom/android/server/display/ManualMaxBrightnessController;JF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/ManualMaxBrightnessController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAmbientLux(Lcom/android/server/display/ManualMaxBrightnessController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/ManualMaxBrightnessController;->updateAmbientLux()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Looper;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "displayId"  # I
    .param p3, "looper"  # Landroid/os/Looper;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLuxFactor:F

    .line 50
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLux:F

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mIsSliderMax:Z

    .line 57
    const/high16 v1, 0x44160000  # 600.0f

    iput v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mMaxBrightness:F

    .line 58
    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    iput-wide v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorFirstTarget:D

    .line 59
    iput-wide v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorFirstCurrent:D

    .line 60
    const-wide v1, 0x3fe21cac00000000L  # 0.5659999847412109

    iput-wide v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorSecondTarget:D

    .line 61
    iput-wide v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorSecondCurrent:D

    .line 350
    new-instance v1, Lcom/android/server/display/ManualMaxBrightnessController$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/ManualMaxBrightnessController$1;-><init>(Lcom/android/server/display/ManualMaxBrightnessController;)V

    iput-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 64
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 65
    const v2, 0x111022a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mSupportDynamicBrightnessRange:Z

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLightSensorRate:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLightSensorWarmUpTimeConfig:J

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110300f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mThresholdLevels:[I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110300f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mThresholdsConstant:[I

    .line 74
    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 75
    iget-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 76
    new-instance v1, Lcom/android/server/display/ManualMaxBrightnessController$ManualMaxBrightnessHandler;

    invoke-direct {v1, p0, p3}, Lcom/android/server/display/ManualMaxBrightnessController$ManualMaxBrightnessHandler;-><init>(Lcom/android/server/display/ManualMaxBrightnessController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mHandler:Lcom/android/server/display/ManualMaxBrightnessController$ManualMaxBrightnessHandler;

    .line 77
    new-instance v1, Lcom/android/server/display/AmbientLightRingBuffer;

    iget v2, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLightSensorRate:I

    int-to-long v2, v2

    const/16 v4, 0x1388

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/display/AmbientLightRingBuffer;-><init>(JI)V

    iput-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    .line 78
    iput-object p1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mContext:Landroid/content/Context;

    .line 79
    iput p2, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mDisplayId:I

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ManualMaxBrightnessController["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mTag:Ljava/lang/String;

    .line 81
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isIndependentRearDevice()Z

    move-result v1

    if-eqz v1, :cond_be

    iget v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mDisplayId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_be

    move v0, v2

    :cond_be
    iput-boolean v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mUseBackLightSensor:Z

    .line 82
    iget-boolean v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mUseBackLightSensor:Z

    invoke-direct {p0, v0}, Lcom/android/server/display/ManualMaxBrightnessController;->loadSensorConfig(Z)V

    .line 83
    iget-boolean v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mUseBackLightSensor:Z

    invoke-direct {p0, v0}, Lcom/android/server/display/ManualMaxBrightnessController;->getLightSensor(Z)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 84
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .registers 7
    .param p1, "time"  # J
    .param p3, "lux"  # F

    .line 149
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    const-wide/16 v1, 0x1388

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/AmbientLightRingBuffer;->prune(J)V

    .line 150
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AmbientLightRingBuffer;->push(JF)V

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ManualMaxBrightnessController;->updateAmbientLux(J)V

    .line 152
    return-void
.end method

.method private getBrighteningThreshold(F)F
    .registers 4
    .param p1, "value"  # F

    .line 297
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mThresholdLevels:[I

    iget-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mThresholdsConstant:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/display/ManualMaxBrightnessController;->getReferenceLevel(F[I[I)F

    move-result v0

    .line 299
    .local v0, "brightConstant":F
    add-float v1, p1, v0

    .line 300
    .local v1, "brightThreshold":F
    return v1
.end method

.method private getDarkeningThreshold(F)F
    .registers 6
    .param p1, "value"  # F

    .line 304
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mThresholdLevels:[I

    iget-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mThresholdsConstant:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/display/ManualMaxBrightnessController;->getReferenceLevel(F[I[I)F

    move-result v0

    .line 306
    .local v0, "darkenConstant":F
    sub-float v1, p1, v0

    .line 307
    .local v1, "darkThreshold":F
    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_10

    goto :goto_11

    :cond_10
    move v2, v1

    :goto_11
    return v2
.end method

.method private getLightSensor(Z)Landroid/hardware/Sensor;
    .registers 4
    .param p1, "useBackLightSensor"  # Z

    .line 88
    if-eqz p1, :cond_c

    .line 89
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa266f

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .local v0, "sensor":Landroid/hardware/Sensor;
    goto :goto_13

    .line 91
    .end local v0  # "sensor":Landroid/hardware/Sensor;
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 93
    .restart local v0  # "sensor":Landroid/hardware/Sensor;
    :goto_13
    return-object v0
.end method

.method private getReferenceLevel(F[I[I)F
    .registers 6
    .param p1, "value"  # F
    .param p2, "thresholdLevels"  # [I
    .param p3, "thresholdPercentages"  # [I

    .line 312
    if-eqz p2, :cond_24

    array-length v0, p2

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    aget v0, p2, v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_e

    goto :goto_24

    .line 315
    :cond_e
    const/4 v0, 0x0

    .line 316
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

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 319
    :cond_20
    aget v1, p3, v0

    int-to-float v1, v1

    return v1

    .line 313
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

    .line 144
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mHandler:Lcom/android/server/display/ManualMaxBrightnessController$ManualMaxBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/ManualMaxBrightnessController$ManualMaxBrightnessHandler;->removeMessages(I)V

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/ManualMaxBrightnessController;->applyLightSensorMeasurement(JF)V

    .line 146
    return-void
.end method

.method private loadSensorConfig(Z)V
    .registers 6
    .param p1, "useBackLightSensor"  # Z

    .line 98
    const-string v0, "1.0"

    if-eqz p1, :cond_16

    .line 99
    :try_start_4
    const-string/jumbo v1, "ro.miui.sensor.fov_back.factor"

    .line 100
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLuxFactor:F

    goto :goto_27

    .line 102
    :cond_16
    const-string/jumbo v1, "ro.miui.sensor.fov.factor"

    .line 103
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLuxFactor:F
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_27} :catch_28

    .line 107
    :goto_27
    goto :goto_41

    .line 105
    :catch_28
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0  # "e":Ljava/lang/NumberFormatException;
    :goto_41
    return-void
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .registers 9
    .param p1, "time"  # J

    .line 323
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientLightRingBuffer;->size()I

    move-result v0

    .line 324
    .local v0, "N":I
    move-wide v1, p1

    .line 325
    .local v1, "earliestValidTime":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_9
    if-ltz v3, :cond_21

    .line 326
    iget-object v4, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientBrighteningThreshold:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_18

    .line 327
    goto :goto_21

    .line 329
    :cond_18
    iget-object v4, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 325
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 331
    .end local v3  # "i":I
    :cond_21
    :goto_21
    const-wide/16 v3, 0x1388

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .registers 9
    .param p1, "time"  # J

    .line 335
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientLightRingBuffer;->size()I

    move-result v0

    .line 336
    .local v0, "N":I
    move-wide v1, p1

    .line 337
    .local v1, "earliestValidTime":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_9
    if-ltz v3, :cond_21

    .line 338
    iget-object v4, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientDarkeningThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_18

    .line 339
    goto :goto_21

    .line 341
    :cond_18
    iget-object v4, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 337
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 343
    .end local v3  # "i":I
    :cond_21
    :goto_21
    const-wide/16 v3, 0x1388

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private recalculateMaxBrightness(Z)V
    .registers 7
    .param p1, "isManualFirstLux"  # Z

    .line 202
    iget-boolean v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLuxValid:Z

    if-nez v0, :cond_5

    .line 203
    return-void

    .line 205
    :cond_5
    const/high16 v0, 0x3f800000  # 1.0f

    .line 206
    .local v0, "foundMaxBrightness":F
    iget v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLux:F

    invoke-static {v1}, Lcom/android/server/display/RefactorBrightnessUtil;->getManualFirstFactor(F)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorFirstTarget:D

    .line 207
    iget v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLux:F

    invoke-static {v1}, Lcom/android/server/display/RefactorBrightnessUtil;->getManualSecondFactor(F)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorSecondTarget:D

    .line 208
    iget-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FactorFirstTarget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorFirstTarget:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,FactorSecondTarget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorSecondTarget:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mIsSliderMax: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mIsSliderMax:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-boolean v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mIsSliderMax:Z

    if-nez v1, :cond_4f

    if-eqz p1, :cond_52

    .line 212
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/display/ManualMaxBrightnessController;->updateManualFactor()Z

    .line 214
    :cond_52
    iget-wide v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorFirstCurrent:D

    iget-wide v3, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorSecondCurrent:D

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/display/RefactorBrightnessUtil;->getManualMaxNit(DD)F

    move-result v0

    .line 215
    iget v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mMaxBrightness:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_a5

    .line 216
    iget-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MaxBrightnessChange from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mMaxBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iput v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mMaxBrightness:F

    .line 218
    iget-boolean v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mIsSliderMax:Z

    if-eqz v1, :cond_a5

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/server/display/ManualMaxBrightnessController;->autoSetManualMaxBrightness(F)V

    .line 220
    iget-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManualMaxBrightnessAutoChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_a5
    return-void
.end method

.method private setAmbientLux(F)V
    .registers 5
    .param p1, "lux"  # F

    .line 189
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_d

    .line 190
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mTag:Ljava/lang/String;

    const-string v1, "Ambient lux was negative, ignoring and setting to 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 p1, 0x0

    .line 193
    :cond_d
    iput p1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLux:F

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/display/ManualMaxBrightnessController;->getBrighteningThreshold(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientBrighteningThreshold:F

    .line 195
    invoke-direct {p0, p1}, Lcom/android/server/display/ManualMaxBrightnessController;->getDarkeningThreshold(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientDarkeningThreshold:F

    .line 196
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mTag:Ljava/lang/String;

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

    iget v2, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientDarkeningThreshold:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAmbientBrighteningThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method private updateAmbientLux()V
    .registers 6

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 184
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    const-wide/16 v3, 0x1388

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/AmbientLightRingBuffer;->prune(J)V

    .line 185
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ManualMaxBrightnessController;->updateAmbientLux(J)V

    .line 186
    return-void
.end method

.method private updateAmbientLux(J)V
    .registers 12
    .param p1, "time"  # J

    .line 155
    iget-boolean v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLuxValid:Z

    const-wide/16 v1, 0x1388

    const/4 v3, 0x1

    if-nez v0, :cond_24

    .line 156
    iget-wide v4, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLightSensorWarmUpTimeConfig:J

    iget-wide v6, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLightSensorEnableTime:J

    add-long/2addr v4, v6

    .line 158
    .local v4, "timeWhenSensorWarmedUp":J
    cmp-long v0, p1, v4

    if-gez v0, :cond_16

    .line 159
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mHandler:Lcom/android/server/display/ManualMaxBrightnessController$ManualMaxBrightnessHandler;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/display/ManualMaxBrightnessController$ManualMaxBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 160
    return-void

    .line 162
    :cond_16
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/display/AmbientLightRingBuffer;->calculateAmbientLux(JJ)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/ManualMaxBrightnessController;->setAmbientLux(F)V

    .line 163
    iput-boolean v3, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLuxValid:Z

    .line 164
    invoke-direct {p0, v3}, Lcom/android/server/display/ManualMaxBrightnessController;->recalculateMaxBrightness(Z)V

    .line 166
    .end local v4  # "timeWhenSensorWarmedUp":J
    :cond_24
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ManualMaxBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v4

    .line 167
    .local v4, "nextBrightenTransition":J
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ManualMaxBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v6

    .line 168
    .local v6, "nextDarkenTransition":J
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/display/AmbientLightRingBuffer;->calculateAmbientLux(JJ)F

    move-result v0

    .line 169
    .local v0, "ambientLux":F
    iget v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientBrighteningThreshold:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3c

    cmp-long v1, v4, p1

    if-lez v1, :cond_46

    :cond_3c
    iget v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientDarkeningThreshold:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_55

    cmp-long v1, v6, p1

    if-gtz v1, :cond_55

    .line 173
    :cond_46
    invoke-direct {p0, v0}, Lcom/android/server/display/ManualMaxBrightnessController;->setAmbientLux(F)V

    .line 174
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/ManualMaxBrightnessController;->recalculateMaxBrightness(Z)V

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ManualMaxBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v4

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ManualMaxBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v6

    .line 178
    :cond_55
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 179
    .local v1, "nextTransitionTime":J
    iget-object v8, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mHandler:Lcom/android/server/display/ManualMaxBrightnessController$ManualMaxBrightnessHandler;

    invoke-virtual {v8, v3, v1, v2}, Lcom/android/server/display/ManualMaxBrightnessController$ManualMaxBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 180
    return-void
.end method


# virtual methods
.method public autoSetManualMaxBrightness(F)V
    .registers 7
    .param p1, "maxBrightness"  # F

    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 263
    .local v0, "data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 264
    iget v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 266
    const-string v1, "display"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 267
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_24

    .line 268
    iget-object v2, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mTag:Ljava/lang/String;

    const-string v3, "Display service is not available, autoSetManualMaxBrightness failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_20} :catch_30
    .catchall {:try_start_4 .. :try_end_20} :catchall_2e

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 269
    return-void

    .line 271
    :cond_24
    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0xffffee

    :try_start_29
    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_30
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2e

    .line 276
    nop

    .end local v1  # "binder":Landroid/os/IBinder;
    goto :goto_39

    :catchall_2e
    move-exception v1

    goto :goto_3e

    .line 273
    :catch_30
    move-exception v1

    .line 274
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_31
    iget-object v2, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mTag:Ljava/lang/String;

    const-string v3, "autoSetManualMaxBrightness failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2e

    .line 276
    nop

    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    nop

    .line 278
    return-void

    .line 276
    :goto_3e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    throw v1
.end method

.method public getManualFactorFirst()D
    .registers 3

    .line 289
    iget-wide v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorFirstCurrent:D

    return-wide v0
.end method

.method public getManualFactorSecond()D
    .registers 3

    .line 293
    iget-wide v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorSecondCurrent:D

    return-wide v0
.end method

.method public getManualLightSensorState()Z
    .registers 2

    .line 123
    iget-boolean v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mshouldOpenLightSensor:Z

    return v0
.end method

.method public getManualMaxBrightness()F
    .registers 2

    .line 281
    iget v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mMaxBrightness:F

    return v0
.end method

.method public isSupportManualDynamicRange()Z
    .registers 2

    .line 285
    iget-boolean v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mSupportDynamicBrightnessRange:Z

    return v0
.end method

.method public recalculateMaxBrightness2()Z
    .registers 5

    .line 226
    iget-boolean v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mSupportDynamicBrightnessRange:Z

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/android/server/display/ManualMaxBrightnessController;->updateManualFactor()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 227
    iget-wide v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorFirstCurrent:D

    iget-wide v2, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorSecondCurrent:D

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/display/RefactorBrightnessUtil;->getManualMaxNit(DD)F

    move-result v0

    .line 228
    .local v0, "foundMaxBrightness":F
    iget v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mMaxBrightness:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_40

    .line 229
    iget-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MaxBrightnessChange from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mMaxBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iput v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mMaxBrightness:F

    .line 231
    const/4 v1, 0x1

    return v1

    .line 234
    .end local v0  # "foundMaxBrightness":F
    :cond_40
    const/4 v0, 0x0

    return v0
.end method

.method public setLightSensorEnabled(Z)V
    .registers 7
    .param p1, "enable"  # Z

    .line 127
    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    .line 128
    iget-boolean v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLightSensorEnabled:Z

    if-nez v1, :cond_39

    .line 129
    iput-boolean v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLightSensorEnabled:Z

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLightSensorEnableTime:J

    .line 131
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLightSensorRate:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mHandler:Lcom/android/server/display/ManualMaxBrightnessController$ManualMaxBrightnessHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_39

    .line 134
    :cond_1f
    iget-boolean v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLightSensorEnabled:Z

    if-eqz v1, :cond_39

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLightSensorEnabled:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLuxValid:Z

    .line 137
    iget-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mHandler:Lcom/android/server/display/ManualMaxBrightnessController$ManualMaxBrightnessHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/ManualMaxBrightnessController$ManualMaxBrightnessHandler;->removeMessages(I)V

    .line 138
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientLightRingBuffer;->clear()V

    .line 141
    :cond_39
    :goto_39
    return-void
.end method

.method public setManualAmbientLuxEnabled(ZZZ)V
    .registers 6
    .param p1, "isManualEnabled"  # Z
    .param p2, "isManualAmbientLuxEnabled"  # Z
    .param p3, "isManualAmbientLuxDisabledDueToDisplayOff"  # Z

    .line 115
    iget-boolean v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mSupportDynamicBrightnessRange:Z

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 116
    .local v0, "isEnabled":Z
    :goto_9
    iget-boolean v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mshouldOpenLightSensor:Z

    if-eq v0, v1, :cond_14

    .line 117
    iput-boolean v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mshouldOpenLightSensor:Z

    .line 118
    iget-boolean v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mshouldOpenLightSensor:Z

    invoke-virtual {p0, v1}, Lcom/android/server/display/ManualMaxBrightnessController;->setLightSensorEnabled(Z)V

    .line 120
    :cond_14
    return-void
.end method

.method public stop()V
    .registers 2

    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ManualMaxBrightnessController;->setLightSensorEnabled(Z)V

    .line 348
    return-void
.end method

.method public updateManualFactor()Z
    .registers 5

    .line 238
    iget-wide v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorFirstCurrent:D

    iget-wide v2, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorFirstTarget:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_12

    iget-wide v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorSecondCurrent:D

    iget-wide v2, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorSecondTarget:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_12

    .line 239
    const/4 v0, 0x0

    return v0

    .line 241
    :cond_12
    iget-wide v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorFirstTarget:D

    iput-wide v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorFirstCurrent:D

    .line 242
    iget-wide v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorSecondTarget:D

    iput-wide v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorSecondCurrent:D

    .line 243
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FactorFirstCurrent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorFirstCurrent:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,FactorSecondCurrent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorSecondCurrent:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mIsSliderMax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mIsSliderMax:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public updateSliderState(F)V
    .registers 7
    .param p1, "logicalNit"  # F

    .line 250
    const v0, 0x44848000  # 1060.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 251
    .local v0, "isSliderMax":Z
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/display/ManualMaxBrightnessController;->recalculateMaxBrightness2()Z

    .line 252
    iget-boolean v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mIsSliderMax:Z

    if-eq v1, v0, :cond_45

    .line 253
    iput-boolean v0, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mIsSliderMax:Z

    .line 254
    iget-object v1, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FactorFirstCurrent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorFirstCurrent:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,FactorSecondCurrent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mFactorSecondCurrent:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mIsSliderMax: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/ManualMaxBrightnessController;->mIsSliderMax:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_45
    return-void
.end method
