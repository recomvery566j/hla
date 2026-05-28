# classes.dex

.class public Lcom/android/server/display/SunlightController;
.super Ljava/lang/Object;
.source "SunlightController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/SunlightController$Callback;,
        Lcom/android/server/display/SunlightController$SunlightModeHandler;,
        Lcom/android/server/display/SunlightController$NotificationHelper;,
        Lcom/android/server/display/SunlightController$SettingsObserver;,
        Lcom/android/server/display/SunlightController$ScreenOnReceiver;,
        Lcom/android/server/display/SunlightController$ScreenHangUpReceiver;,
        Lcom/android/server/display/SunlightController$UserSwitchObserver;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final ENABLE_SENSOR_REASON_DEFAULT:Ljava/lang/String; = "sunlight_mode"

.field private static final ENABLE_SENSOR_REASON_NOTIFICATION:Ljava/lang/String; = "prepare_for_notifaction"

.field private static final MSG_INITIALIZE:I = 0x4

.field private static final MSG_SCREEN_HANG_UP_RECEIVE:I = 0x3

.field private static final MSG_SCREEN_ON_OFF_RECEIVE:I = 0x2

.field private static final MSG_UPDATE_SUNLIGHT_MODE:I = 0x1

.field private static final RESET_USER_DISABLE_DURATION:I = 0x493e0

.field private static final SUNLIGHT_AMBIENT_LIGHT_HORIZON:I = 0x2710

.field private static final SUNLIGHT_LIGHT_SENSOR_RATE:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "SunlightController"

.field private static final THRESHOLD_ENTER_SUNLIGHT_DURATION:I = 0x1388

.field private static final THRESHOLD_EXIT_SUNLIGHT_DURATION:I = 0x7d0

.field private static final THRESHOLD_SUNLIGHT_LUX:I = 0x2ee0

.field private static final THRESHOLD_SUNLIGHT_NIT_DEFAULT:F = 160.0f


# instance fields
.field private mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

.field private mAutoBrightnessSettingsEnable:Z

.field private mBelowThresholdNit:Z

.field private mCallback:Lcom/android/server/display/SunlightController$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrentAmbientLux:F

.field private mCurrentScreenBrightnessSettings:I

.field private mDisplayId:I

.field private mHandler:Lcom/android/server/display/SunlightController$SunlightModeHandler;

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastScreenOffTime:J

.field private mLastSunlightSettingsEnable:Z

.field private mLightSensor:Landroid/hardware/Sensor;

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLowPowerState:Z

.field private mNotificationHelper:Lcom/android/server/display/SunlightController$NotificationHelper;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreparedForNotification:Z

.field private mScreenBrightnessDefaultSettings:I

.field private mScreenIsHangUp:Z

.field private mScreenOn:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Lcom/android/server/display/SunlightController$SettingsObserver;

.field private mSunlightModeActive:Z

.field private mSunlightModeDisabledByUser:Z

.field private mSunlightModeEnable:Z

.field private mSunlightSensorEnableTime:J

.field private mSunlightSensorEnabled:Z

.field private mSunlightSensorEnabledReason:Ljava/lang/String;

.field private mSunlightSettingsEnable:Z

.field private mThresholdSunlightNit:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/SunlightController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/SunlightController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/SunlightController;)Lcom/android/server/display/SunlightController$SunlightModeHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/SunlightController;->mHandler:Lcom/android/server/display/SunlightController$SunlightModeHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSunlightSensorEnabled(Lcom/android/server/display/SunlightController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/SunlightController;->mSunlightSensorEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleLightSensorEvent(Lcom/android/server/display/SunlightController;JF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/SunlightController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregister(Lcom/android/server/display/SunlightController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->register()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAmbientLux(Lcom/android/server/display/SunlightController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->updateAmbientLux()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateHangUpState(Lcom/android/server/display/SunlightController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/SunlightController;->updateHangUpState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLowPowerState(Lcom/android/server/display/SunlightController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->updateLowPowerState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateScreenState(Lcom/android/server/display/SunlightController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/SunlightController;->updateScreenState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSunlightModeSettings(Lcom/android/server/display/SunlightController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->updateSunlightModeSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/SunlightController;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/SunlightController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/SunlightController$Callback;Landroid/os/Looper;I)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "callback"  # Lcom/android/server/display/SunlightController$Callback;
    .param p3, "looper"  # Landroid/os/Looper;
    .param p4, "displayId"  # I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/SunlightController;->mScreenOn:Z

    .line 107
    const/high16 v0, 0x43200000  # 160.0f

    iput v0, p0, Lcom/android/server/display/SunlightController;->mThresholdSunlightNit:F

    .line 301
    new-instance v0, Lcom/android/server/display/SunlightController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/SunlightController$1;-><init>(Lcom/android/server/display/SunlightController;)V

    iput-object v0, p0, Lcom/android/server/display/SunlightController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 112
    if-nez p4, :cond_6f

    .line 116
    iput-object p1, p0, Lcom/android/server/display/SunlightController;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/android/server/display/SunlightController;->mCallback:Lcom/android/server/display/SunlightController$Callback;

    .line 118
    iput p4, p0, Lcom/android/server/display/SunlightController;->mDisplayId:I

    .line 119
    new-instance v0, Lcom/android/server/display/SunlightController$SunlightModeHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/display/SunlightController$SunlightModeHandler;-><init>(Lcom/android/server/display/SunlightController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/SunlightController;->mHandler:Lcom/android/server/display/SunlightController$SunlightModeHandler;

    .line 120
    new-instance v0, Lcom/android/server/display/SunlightController$NotificationHelper;

    invoke-direct {v0, p0}, Lcom/android/server/display/SunlightController$NotificationHelper;-><init>(Lcom/android/server/display/SunlightController;)V

    iput-object v0, p0, Lcom/android/server/display/SunlightController;->mNotificationHelper:Lcom/android/server/display/SunlightController$NotificationHelper;

    .line 121
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/android/server/display/SunlightController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/SunlightController;->mHandler:Lcom/android/server/display/SunlightController$SunlightModeHandler;

    invoke-virtual {v2}, Lcom/android/server/display/SunlightController$SunlightModeHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/SunlightController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 122
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/SunlightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 123
    new-instance v0, Lcom/android/server/display/AmbientLightRingBuffer;

    const-wide/16 v1, 0xfa

    const/16 v3, 0x2710

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/AmbientLightRingBuffer;-><init>(JI)V

    iput-object v0, p0, Lcom/android/server/display/SunlightController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    .line 124
    new-instance v0, Lcom/android/server/display/SunlightController$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/display/SunlightController;->mHandler:Lcom/android/server/display/SunlightController$SunlightModeHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/SunlightController$SettingsObserver;-><init>(Lcom/android/server/display/SunlightController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/SunlightController;->mSettingsObserver:Lcom/android/server/display/SunlightController$SettingsObserver;

    .line 125
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/display/SunlightController;->mPowerManager:Landroid/os/PowerManager;

    .line 126
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/SunlightController;->mScreenBrightnessDefaultSettings:I

    .line 127
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mHandler:Lcom/android/server/display/SunlightController$SunlightModeHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/SunlightController$SunlightModeHandler;->sendEmptyMessage(I)Z

    .line 128
    return-void

    .line 113
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sunlight mode can only be used on the default display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private applyLightSensorMeasurement(JF)V
    .registers 7
    .param p1, "time"  # J
    .param p3, "lux"  # F

    .line 369
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    const-wide/16 v1, 0x2710

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/AmbientLightRingBuffer;->prune(J)V

    .line 370
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AmbientLightRingBuffer;->push(JF)V

    .line 372
    iput p3, p0, Lcom/android/server/display/SunlightController;->mLastObservedLux:F

    .line 373
    iput-wide p1, p0, Lcom/android/server/display/SunlightController;->mLastObservedLuxTime:J

    .line 374
    return-void
.end method

.method private clearAmbientLightRingBuffer()V
    .registers 2

    .line 486
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientLightRingBuffer;->clear()V

    .line 487
    return-void
.end method

.method private handleLightSensorEvent(JF)V
    .registers 6
    .param p1, "time"  # J
    .param p3, "lux"  # F

    .line 318
    sget-boolean v0, Lcom/android/server/display/SunlightController;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleLightSensorEvent: lux = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SunlightController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_1d
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mHandler:Lcom/android/server/display/SunlightController$SunlightModeHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/SunlightController$SunlightModeHandler;->removeMessages(I)V

    .line 322
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/SunlightController;->applyLightSensorMeasurement(JF)V

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/SunlightController;->updateAmbientLux(J)V

    .line 324
    return-void
.end method

.method private nextEnterSunlightModeTransition(J)J
    .registers 9
    .param p1, "time"  # J

    .line 377
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientLightRingBuffer;->size()I

    move-result v0

    .line 378
    .local v0, "N":I
    move-wide v1, p1

    .line 379
    .local v1, "earliestValidTime":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_9
    if-ltz v3, :cond_22

    .line 380
    iget-object v4, p0, Lcom/android/server/display/SunlightController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    const v5, 0x463b8000  # 12000.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_19

    .line 381
    goto :goto_22

    .line 383
    :cond_19
    iget-object v4, p0, Lcom/android/server/display/SunlightController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 379
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 385
    .end local v3  # "i":I
    :cond_22
    :goto_22
    const-wide/16 v3, 0x1388

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private nextExitSunlightModeTransition(J)J
    .registers 9
    .param p1, "time"  # J

    .line 389
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientLightRingBuffer;->size()I

    move-result v0

    .line 390
    .local v0, "N":I
    move-wide v1, p1

    .line 391
    .local v1, "earliestValidTime":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_9
    if-ltz v3, :cond_22

    .line 392
    iget-object v4, p0, Lcom/android/server/display/SunlightController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    const v5, 0x463b8000  # 12000.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_19

    .line 393
    goto :goto_22

    .line 395
    :cond_19
    iget-object v4, p0, Lcom/android/server/display/SunlightController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 391
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 397
    .end local v3  # "i":I
    :cond_22
    :goto_22
    const-wide/16 v3, 0x7d0

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private register()V
    .registers 1

    .line 132
    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->registerSettingsObserver()V

    .line 133
    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->registerScreenOnReceiver()V

    .line 134
    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->registerHangUpReceiver()V

    .line 135
    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->registerUserSwitchObserver()V

    .line 136
    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->updateSunlightModeSettings()V

    .line 137
    return-void
.end method

.method private registerHangUpReceiver()V
    .registers 5

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "miui.intent.action.HANG_UP_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/server/display/SunlightController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/display/SunlightController$ScreenHangUpReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/SunlightController$ScreenHangUpReceiver;-><init>(Lcom/android/server/display/SunlightController;Lcom/android/server/display/SunlightController-IA;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    return-void
.end method

.method private registerScreenOnReceiver()V
    .registers 5

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 163
    iget-object v1, p0, Lcom/android/server/display/SunlightController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/display/SunlightController$ScreenOnReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/SunlightController$ScreenOnReceiver;-><init>(Lcom/android/server/display/SunlightController;Lcom/android/server/display/SunlightController-IA;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    return-void
.end method

.method private registerSettingsObserver()V
    .registers 6

    .line 140
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    const-string/jumbo v1, "sunlight_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/SunlightController;->mSettingsObserver:Lcom/android/server/display/SunlightController$SettingsObserver;

    .line 140
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 144
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 145
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/SunlightController;->mSettingsObserver:Lcom/android/server/display/SunlightController$SettingsObserver;

    .line 144
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 148
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 149
    const-string/jumbo v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/SunlightController;->mSettingsObserver:Lcom/android/server/display/SunlightController$SettingsObserver;

    .line 148
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 152
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    const-string/jumbo v1, "low_power_level_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/SunlightController;->mSettingsObserver:Lcom/android/server/display/SunlightController$SettingsObserver;

    .line 152
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 156
    return-void
.end method

.method private registerUserSwitchObserver()V
    .registers 4

    .line 174
    :try_start_0
    new-instance v0, Lcom/android/server/display/SunlightController$UserSwitchObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/SunlightController$UserSwitchObserver;-><init>(Lcom/android/server/display/SunlightController;Lcom/android/server/display/SunlightController-IA;)V

    .line 175
    .local v0, "observer":Lcom/android/server/display/SunlightController$UserSwitchObserver;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "SunlightController"

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 178
    .end local v0  # "observer":Lcom/android/server/display/SunlightController$UserSwitchObserver;
    goto :goto_11

    .line 176
    :catch_10
    move-exception v0

    .line 179
    :goto_11
    return-void
.end method

.method private resetUserDisableTemporaryData()V
    .registers 3

    .line 478
    iget-boolean v0, p0, Lcom/android/server/display/SunlightController;->mSunlightModeDisabledByUser:Z

    if-eqz v0, :cond_11

    .line 479
    const-string v0, "SunlightController"

    const-string v1, "Reset user slide operation."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/SunlightController;->mSunlightModeDisabledByUser:Z

    .line 481
    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->updateSunlightModeCondition()Z

    .line 483
    :cond_11
    return-void
.end method

.method private setLightSensorEnabled(Z)Z
    .registers 3
    .param p1, "enabled"  # Z

    .line 267
    const-string/jumbo v0, "sunlight_mode"

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/SunlightController;->setLightSensorEnabled(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setLightSensorEnabled(ZLjava/lang/String;)Z
    .registers 9
    .param p1, "enabled"  # Z
    .param p2, "reason"  # Ljava/lang/String;

    .line 271
    sget-boolean v0, Lcom/android/server/display/SunlightController;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLightSensorEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enabled reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SunlightController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_27
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4e

    .line 275
    iget-object v2, p0, Lcom/android/server/display/SunlightController;->mSunlightSensorEnabledReason:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 276
    iput-object p2, p0, Lcom/android/server/display/SunlightController;->mSunlightSensorEnabledReason:Ljava/lang/String;

    .line 278
    :cond_35
    iget-boolean v2, p0, Lcom/android/server/display/SunlightController;->mSunlightSensorEnabled:Z

    if-nez v2, :cond_4d

    .line 279
    iput-boolean v0, p0, Lcom/android/server/display/SunlightController;->mSunlightSensorEnabled:Z

    .line 280
    iget-object v2, p0, Lcom/android/server/display/SunlightController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/display/SunlightController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/display/SunlightController;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v5, p0, Lcom/android/server/display/SunlightController;->mHandler:Lcom/android/server/display/SunlightController$SunlightModeHandler;

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/SunlightController;->mSunlightSensorEnableTime:J

    .line 283
    return v0

    .line 285
    :cond_4d
    return v1

    .line 287
    :cond_4e
    iget-boolean v2, p0, Lcom/android/server/display/SunlightController;->mSunlightSensorEnabled:Z

    if-eqz v2, :cond_6c

    .line 288
    iput-boolean v1, p0, Lcom/android/server/display/SunlightController;->mSunlightSensorEnabled:Z

    .line 289
    iput-boolean v1, p0, Lcom/android/server/display/SunlightController;->mPreparedForNotification:Z

    .line 290
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/SunlightController;->mSunlightSensorEnableTime:J

    .line 291
    iget-object v2, p0, Lcom/android/server/display/SunlightController;->mHandler:Lcom/android/server/display/SunlightController$SunlightModeHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/display/SunlightController$SunlightModeHandler;->removeMessages(I)V

    .line 292
    iget-object v2, p0, Lcom/android/server/display/SunlightController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/display/SunlightController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 294
    invoke-direct {p0, v1}, Lcom/android/server/display/SunlightController;->setSunLightModeActive(Z)V

    .line 295
    return v0

    .line 297
    :cond_6c
    return v1
.end method

.method private setLightSensorEnabledForNotification(Z)V
    .registers 3
    .param p1, "enable"  # Z

    .line 219
    iget-boolean v0, p0, Lcom/android/server/display/SunlightController;->mPreparedForNotification:Z

    if-eq p1, v0, :cond_c

    .line 220
    iput-boolean p1, p0, Lcom/android/server/display/SunlightController;->mPreparedForNotification:Z

    .line 221
    const-string/jumbo v0, "prepare_for_notifaction"

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/SunlightController;->setLightSensorEnabled(ZLjava/lang/String;)Z

    .line 223
    :cond_c
    return-void
.end method

.method private setSunLightModeActive(Z)V
    .registers 4
    .param p1, "active"  # Z

    .line 361
    iget-boolean v0, p0, Lcom/android/server/display/SunlightController;->mSunlightModeActive:Z

    if-eq p1, v0, :cond_24

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSunLightModeActive: active: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SunlightController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iput-boolean p1, p0, Lcom/android/server/display/SunlightController;->mSunlightModeActive:Z

    .line 364
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mCallback:Lcom/android/server/display/SunlightController$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/display/SunlightController$Callback;->notifySunlightStateChange(Z)V

    .line 366
    :cond_24
    return-void
.end method

.method private shouldPrepareToNotify()V
    .registers 2

    .line 212
    iget-boolean v0, p0, Lcom/android/server/display/SunlightController;->mSunlightSettingsEnable:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/server/display/SunlightController;->mAutoBrightnessSettingsEnable:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/server/display/SunlightController;->mBelowThresholdNit:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/server/display/SunlightController;->mScreenOn:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/server/display/SunlightController;->mScreenIsHangUp:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mNotificationHelper:Lcom/android/server/display/SunlightController$NotificationHelper;

    invoke-static {v0}, Lcom/android/server/display/SunlightController$NotificationHelper;->-$$Nest$fgetmHasReachedLimitTimes(Lcom/android/server/display/SunlightController$NotificationHelper;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 215
    .local v0, "enable":Z
    :goto_1f
    invoke-direct {p0, v0}, Lcom/android/server/display/SunlightController;->setLightSensorEnabledForNotification(Z)V

    .line 216
    return-void
.end method

.method private updateAmbientLux()V
    .registers 6

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 328
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/SunlightController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    const-wide/16 v3, 0x2710

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/AmbientLightRingBuffer;->prune(J)V

    .line 329
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/SunlightController;->updateAmbientLux(J)V

    .line 330
    return-void
.end method

.method private updateAmbientLux(J)V
    .registers 12
    .param p1, "time"  # J

    .line 333
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/display/AmbientLightRingBuffer;->calculateAmbientLux(JJ)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/SunlightController;->mCurrentAmbientLux:F

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/SunlightController;->nextEnterSunlightModeTransition(J)J

    move-result-wide v0

    .line 335
    .local v0, "nextEnterSunlightModeTime":J
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/SunlightController;->nextExitSunlightModeTransition(J)J

    move-result-wide v2

    .line 337
    .local v2, "nextExitSunlightModeTime":J
    iget-boolean v4, p0, Lcom/android/server/display/SunlightController;->mPreparedForNotification:Z

    if-eqz v4, :cond_22

    iget-boolean v4, p0, Lcom/android/server/display/SunlightController;->mSunlightModeEnable:Z

    if-nez v4, :cond_22

    .line 338
    iget-boolean v4, p0, Lcom/android/server/display/SunlightController;->mLowPowerState:Z

    if-nez v4, :cond_21

    .line 339
    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->updateNotificationState()V

    .line 341
    :cond_21
    return-void

    .line 344
    :cond_22
    iget v4, p0, Lcom/android/server/display/SunlightController;->mCurrentAmbientLux:F

    const v5, 0x463b8000  # 12000.0f

    cmpl-float v4, v4, v5

    const/4 v6, 0x1

    if-ltz v4, :cond_3c

    cmp-long v4, v0, p1

    if-gtz v4, :cond_3c

    iget-boolean v4, p0, Lcom/android/server/display/SunlightController;->mBelowThresholdNit:Z

    if-eqz v4, :cond_3c

    iget-boolean v4, p0, Lcom/android/server/display/SunlightController;->mSunlightModeEnable:Z

    if-eqz v4, :cond_3c

    .line 346
    invoke-direct {p0, v6}, Lcom/android/server/display/SunlightController;->setSunLightModeActive(Z)V

    goto :goto_4a

    .line 347
    :cond_3c
    iget v4, p0, Lcom/android/server/display/SunlightController;->mCurrentAmbientLux:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4a

    cmp-long v4, v2, p1

    if-gtz v4, :cond_4a

    .line 348
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/display/SunlightController;->setSunLightModeActive(Z)V

    .line 350
    :cond_4a
    :goto_4a
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 352
    .local v4, "nextTransitionTime":J
    cmp-long v7, v4, p1

    if-lez v7, :cond_54

    move-wide v7, v4

    goto :goto_57

    :cond_54
    const-wide/16 v7, 0x3e8

    add-long/2addr v7, p1

    .line 353
    .end local v4  # "nextTransitionTime":J
    .local v7, "nextTransitionTime":J
    :goto_57
    sget-boolean v4, Lcom/android/server/display/SunlightController;->DEBUG:Z

    if-eqz v4, :cond_78

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAmbientLux: Scheduling lux update for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 355
    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 354
    const-string v5, "SunlightController"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_78
    iget-object v4, p0, Lcom/android/server/display/SunlightController;->mHandler:Lcom/android/server/display/SunlightController$SunlightModeHandler;

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/display/SunlightController$SunlightModeHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 358
    return-void
.end method

.method private updateHangUpState(Z)V
    .registers 3
    .param p1, "screenIsHangUp"  # Z

    .line 440
    iget-boolean v0, p0, Lcom/android/server/display/SunlightController;->mScreenIsHangUp:Z

    if-eq p1, v0, :cond_9

    .line 441
    iput-boolean p1, p0, Lcom/android/server/display/SunlightController;->mScreenIsHangUp:Z

    .line 442
    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->updateSunlightModeCondition()Z

    .line 444
    :cond_9
    return-void
.end method

.method private updateLowPowerState()V
    .registers 6

    .line 464
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mContext:Landroid/content/Context;

    .line 465
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 464
    const-string/jumbo v1, "low_power_level_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    iput-boolean v0, p0, Lcom/android/server/display/SunlightController;->mLowPowerState:Z

    .line 466
    iget-boolean v0, p0, Lcom/android/server/display/SunlightController;->mLowPowerState:Z

    const-string/jumbo v3, "sunlight_mode"

    if-eqz v0, :cond_2b

    .line 467
    iget-boolean v0, p0, Lcom/android/server/display/SunlightController;->mSunlightSettingsEnable:Z

    iput-boolean v0, p0, Lcom/android/server/display/SunlightController;->mLastSunlightSettingsEnable:Z

    .line 468
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3b

    .line 471
    :cond_2b
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 472
    iget-boolean v4, p0, Lcom/android/server/display/SunlightController;->mLastSunlightSettingsEnable:Z

    if-eqz v4, :cond_37

    move v2, v1

    goto :goto_38

    .line 473
    :cond_37
    nop

    .line 471
    :goto_38
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 475
    :goto_3b
    return-void
.end method

.method private updateNotificationState()V
    .registers 3

    .line 248
    iget v0, p0, Lcom/android/server/display/SunlightController;->mCurrentAmbientLux:F

    const v1, 0x463b8000  # 12000.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_15

    .line 249
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mNotificationHelper:Lcom/android/server/display/SunlightController$NotificationHelper;

    invoke-static {v0}, Lcom/android/server/display/SunlightController$NotificationHelper;->-$$Nest$mshowNotificationIfNecessary(Lcom/android/server/display/SunlightController$NotificationHelper;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/SunlightController;->setLightSensorEnabledForNotification(Z)V

    .line 253
    :cond_15
    return-void
.end method

.method private updateScreenState(Z)V
    .registers 8
    .param p1, "screenOn"  # Z

    .line 447
    iget-boolean v0, p0, Lcom/android/server/display/SunlightController;->mScreenOn:Z

    if-eq p1, v0, :cond_28

    .line 448
    iput-boolean p1, p0, Lcom/android/server/display/SunlightController;->mScreenOn:Z

    .line 449
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 450
    .local v0, "currentTime":J
    iget-boolean v2, p0, Lcom/android/server/display/SunlightController;->mScreenOn:Z

    if-eqz v2, :cond_1d

    .line 451
    iget-wide v2, p0, Lcom/android/server/display/SunlightController;->mLastScreenOffTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_22

    .line 452
    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->resetUserDisableTemporaryData()V

    goto :goto_22

    .line 455
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->clearAmbientLightRingBuffer()V

    .line 456
    iput-wide v0, p0, Lcom/android/server/display/SunlightController;->mLastScreenOffTime:J

    .line 458
    :cond_22
    :goto_22
    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->updateSunlightModeCondition()Z

    .line 459
    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->shouldPrepareToNotify()V

    .line 461
    .end local v0  # "currentTime":J
    :cond_28
    return-void
.end method

.method private updateSunlightModeCondition()Z
    .registers 6

    .line 226
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mCallback:Lcom/android/server/display/SunlightController$Callback;

    iget v1, p0, Lcom/android/server/display/SunlightController;->mCurrentScreenBrightnessSettings:I

    iget-object v2, p0, Lcom/android/server/display/SunlightController;->mContext:Landroid/content/Context;

    .line 227
    invoke-static {v1, v2}, Lcom/android/internal/display/BrightnessSynchronizerStub;->brightnessIntToFloatForLowLevel(ILandroid/content/Context;)F

    move-result v1

    .line 226
    invoke-interface {v0, v1}, Lcom/android/server/display/SunlightController$Callback;->convertBrightnessToNit(F)F

    move-result v0

    .line 229
    .local v0, "currentScreenNit":F
    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    iget v1, p0, Lcom/android/server/display/SunlightController;->mThresholdSunlightNit:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1e

    move v1, v2

    goto :goto_1f

    :cond_1e
    move v1, v3

    :goto_1f
    iput-boolean v1, p0, Lcom/android/server/display/SunlightController;->mBelowThresholdNit:Z

    .line 230
    iget-boolean v1, p0, Lcom/android/server/display/SunlightController;->mAutoBrightnessSettingsEnable:Z

    if-nez v1, :cond_36

    iget-boolean v1, p0, Lcom/android/server/display/SunlightController;->mSunlightSettingsEnable:Z

    if-eqz v1, :cond_36

    iget-boolean v1, p0, Lcom/android/server/display/SunlightController;->mScreenOn:Z

    if-eqz v1, :cond_36

    iget-boolean v1, p0, Lcom/android/server/display/SunlightController;->mSunlightModeDisabledByUser:Z

    if-nez v1, :cond_36

    iget-boolean v1, p0, Lcom/android/server/display/SunlightController;->mScreenIsHangUp:Z

    if-nez v1, :cond_36

    goto :goto_37

    :cond_36
    move v2, v3

    .line 232
    .local v2, "enable":Z
    :goto_37
    sget-boolean v1, Lcom/android/server/display/SunlightController;->DEBUG:Z

    if-eqz v1, :cond_90

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSunlightModeCondition: mSunlightModeEnable: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/server/display/SunlightController;->mSunlightModeEnable:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", enable: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mScreenOn: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/server/display/SunlightController;->mScreenOn:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mSunlightModeDisabledByUser: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/server/display/SunlightController;->mSunlightModeDisabledByUser:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mBelowThresholdNit: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/server/display/SunlightController;->mBelowThresholdNit:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mScreenIsHangUp"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/server/display/SunlightController;->mScreenIsHangUp:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SunlightController"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_90
    iget-boolean v1, p0, Lcom/android/server/display/SunlightController;->mSunlightModeEnable:Z

    if-eq v2, v1, :cond_9d

    .line 240
    iput-boolean v2, p0, Lcom/android/server/display/SunlightController;->mSunlightModeEnable:Z

    .line 241
    iput-boolean v3, p0, Lcom/android/server/display/SunlightController;->mPreparedForNotification:Z

    .line 242
    iget-boolean v1, p0, Lcom/android/server/display/SunlightController;->mSunlightModeEnable:Z

    invoke-direct {p0, v1}, Lcom/android/server/display/SunlightController;->setLightSensorEnabled(Z)Z

    .line 244
    :cond_9d
    return v2
.end method

.method private updateSunlightModeSettings()V
    .registers 7

    .line 182
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sunlight_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 186
    .local v0, "sunlightSettingsChanged":Z
    :goto_15
    iget-object v4, p0, Lcom/android/server/display/SunlightController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_brightness_mode"

    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_25

    move v2, v1

    :cond_25
    iput-boolean v2, p0, Lcom/android/server/display/SunlightController;->mAutoBrightnessSettingsEnable:Z

    .line 190
    iget-object v1, p0, Lcom/android/server/display/SunlightController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    iget v4, p0, Lcom/android/server/display/SunlightController;->mScreenBrightnessDefaultSettings:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/SunlightController;->mCurrentScreenBrightnessSettings:I

    .line 194
    if-nez v0, :cond_41

    iget-boolean v1, p0, Lcom/android/server/display/SunlightController;->mSunlightSettingsEnable:Z

    if-eqz v1, :cond_41

    .line 195
    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->resetUserDisableTemporaryData()V

    .line 197
    :cond_41
    iput-boolean v0, p0, Lcom/android/server/display/SunlightController;->mSunlightSettingsEnable:Z

    .line 198
    sget-boolean v1, Lcom/android/server/display/SunlightController;->DEBUG:Z

    if-eqz v1, :cond_7a

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSunlightModeSettings: mSunlightSettingsEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/SunlightController;->mSunlightSettingsEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAutoBrightnessSettingsEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/SunlightController;->mAutoBrightnessSettingsEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentScreenBrightnessSettings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/SunlightController;->mCurrentScreenBrightnessSettings:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SunlightController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_7a
    iget-object v1, p0, Lcom/android/server/display/SunlightController;->mCallback:Lcom/android/server/display/SunlightController$Callback;

    iget-boolean v2, p0, Lcom/android/server/display/SunlightController;->mSunlightSettingsEnable:Z

    invoke-interface {v1, v2}, Lcom/android/server/display/SunlightController$Callback;->notifySunlightModeChanged(Z)V

    .line 206
    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->updateSunlightModeCondition()Z

    move-result v1

    if-nez v1, :cond_8a

    .line 207
    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->shouldPrepareToNotify()V

    .line 209
    :cond_8a
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 696
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 697
    const-string v0, "Sunlight Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSunlightSettingsEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/SunlightController;->mSunlightSettingsEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSunlightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/SunlightController;->mSunlightSensorEnableTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/SunlightController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/SunlightController;->mLastObservedLuxTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/SunlightController;->mCurrentAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSunlightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/SunlightController;->mSunlightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    iget-boolean v0, p0, Lcom/android/server/display/SunlightController;->mSunlightSensorEnabled:Z

    if-eqz v0, :cond_b4

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSunlightSensorEnabledReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/SunlightController;->mSunlightSensorEnabledReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    :cond_b4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBelowThresholdNit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/SunlightController;->mBelowThresholdNit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSunlightModeActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/SunlightController;->mSunlightModeActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSunlightModeDisabledByUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/SunlightController;->mSunlightModeDisabledByUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/SunlightController;->mAmbientLightRingBuffer:Lcom/android/server/display/AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenIsHangUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/SunlightController;->mScreenIsHangUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThresholdSunlightNit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/SunlightController;->mThresholdSunlightNit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mNotificationHelper:Lcom/android/server/display/SunlightController$NotificationHelper;

    invoke-static {v0, p1}, Lcom/android/server/display/SunlightController$NotificationHelper;->-$$Nest$mdump(Lcom/android/server/display/SunlightController$NotificationHelper;Ljava/io/PrintWriter;)V

    .line 714
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_SC:Z

    sput-boolean v0, Lcom/android/server/display/SunlightController;->DEBUG:Z

    .line 715
    return-void
.end method

.method public isSunlightModeDisabledByUser()Z
    .registers 2

    .line 409
    iget-boolean v0, p0, Lcom/android/server/display/SunlightController;->mSunlightModeDisabledByUser:Z

    return v0
.end method

.method public setSunlightModeDisabledByUserTemporary()V
    .registers 3

    .line 401
    iget-boolean v0, p0, Lcom/android/server/display/SunlightController;->mSunlightModeDisabledByUser:Z

    if-nez v0, :cond_11

    .line 402
    const-string v0, "SunlightController"

    const-string v1, "Disable sunlight mode temporarily due to user slide bar."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/SunlightController;->mSunlightModeDisabledByUser:Z

    .line 404
    invoke-direct {p0}, Lcom/android/server/display/SunlightController;->updateSunlightModeCondition()Z

    .line 406
    :cond_11
    return-void
.end method

.method public updateAmbientLightSensor(Landroid/hardware/Sensor;)V
    .registers 7
    .param p1, "sensor"  # Landroid/hardware/Sensor;

    .line 256
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mLightSensor:Landroid/hardware/Sensor;

    if-eq v0, p1, :cond_1d

    .line 257
    iput-object p1, p0, Lcom/android/server/display/SunlightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 258
    iget-boolean v0, p0, Lcom/android/server/display/SunlightController;->mSunlightSensorEnabled:Z

    if-eqz v0, :cond_1d

    .line 259
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/SunlightController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 260
    iget-object v0, p0, Lcom/android/server/display/SunlightController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/SunlightController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/SunlightController;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/display/SunlightController;->mHandler:Lcom/android/server/display/SunlightController$SunlightModeHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 264
    :cond_1d
    return-void
.end method

.method public updateThresholdSunlightNit(Ljava/lang/Float;)V
    .registers 3
    .param p1, "thresholdSunlightNit"  # Ljava/lang/Float;

    .line 560
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/SunlightController;->mThresholdSunlightNit:F

    .line 561
    return-void
.end method
