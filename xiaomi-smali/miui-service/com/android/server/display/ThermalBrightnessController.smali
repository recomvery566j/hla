# classes.dex

.class public Lcom/android/server/display/ThermalBrightnessController;
.super Lcom/android/server/display/ThermalBrightnessControllerNative;
.source "ThermalBrightnessController.java"

# interfaces
.implements Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;,
        Lcom/android/server/display/ThermalBrightnessController$Callback;,
        Lcom/android/server/display/ThermalBrightnessController$SettingsObserver;,
        Lcom/android/server/display/ThermalBrightnessController$ThermalListener;
    }
.end annotation


# static fields
.field private static final CAMERA_HDR_DESC:Ljava/lang/String; = "CAMERA-DOLBY"

.field private static final CLOUD_BACKUP_CONFIG_FILE:Ljava/lang/String; = "cloud_multi_factor_thermal_brightness_control.xml"

.field private static final CLOUD_BACKUP_FILE_NAME:Ljava/lang/String; = "display_cloud_backup.xml"

.field private static final CLOUD_BAKUP_FILE_TEMP_GAP_VALUE:Ljava/lang/String; = "temperature-gap-value"

.field private static final COMMON_CONFIG_FILE:Ljava/lang/String; = "common_multi_factor_thermal_brightness_control.xml"

.field private static final CONDITION_ID_FOR_NTC_THERMAL:I = -0x3

.field protected static DEBUG:Z = false

.field private static final DEFAULT_THERMAL_AMBIENT_LUX:F = 6000.0f

.field private static final DOLBY_OVERRIDE_DESC:Ljava/lang/String; = "DOLBY-VISION"

.field private static final ETC_DIR:Ljava/lang/String; = "etc"

.field private static final EVENT_AMBIENT_LUX_CHANGE:I = 0x10

.field private static final EVENT_CONDITION_CHANGE:I = 0x2

.field private static final EVENT_NTC_TEMPERATURE_CHANGE:I = 0x8

.field private static final EVENT_SAFETY_BRIGHTNESS_CHANGE:I = 0x4

.field private static final EVENT_TEMPERATURE_CHANGE:I = 0x1

.field private static final FILE_NTC_TEMPERATURE:Ljava/lang/String; = "display_therm_temp"

.field private static final FILE_SAFETY_BRIGHTNESS:Ljava/lang/String; = "thermal_max_brightness"

.field private static final FILE_SKIN_TEMPERATURE:Ljava/lang/String; = "board_sensor_temp"

.field private static final FILE_THERMAL_CONDITION_ID:Ljava/lang/String; = "sconfig"

.field private static final LOCAL_CONFIG_FILE:Ljava/lang/String; = "multi_factor_thermal_brightness_control.xml"

.field private static final MAX_BRIGHTNESS_FILE:Ljava/lang/String; = "/sys/class/thermal/thermal_message/board_sensor_temp"

.field private static final NTC_TEMPERATURE_GAP:I = 0x1

.field private static final SENSOR_NTC_FLAG:Ljava/lang/String; = "persist.vendor.ntc.flag"

.field private static final TAG:Ljava/lang/String; = "ThermalBrightnessController"

.field private static final THERMAL_BRIGHTNESS_CONFIG_DIR:Ljava/lang/String; = "displayconfig"

.field private static final THERMAL_CONFIG_DIR:Ljava/lang/String; = "/sys/class/thermal/thermal_message"


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mCacheInfo:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/server/display/ThermalBrightnessController$Callback;

.field private mCameraHdrCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

.field private mConditionIdMaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private volatile mCurrentActualThermalConditionId:I

.field private volatile mCurrentAmbientLux:F

.field private mCurrentAppliedLuxPair:Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;

.field private volatile mCurrentAppliedNtcTemperature:F

.field private volatile mCurrentAppliedTemperature:F

.field private volatile mCurrentAppliedThermalConditionId:I

.field private mCurrentCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

.field private mCurrentMaxThermalBrightness:F

.field private volatile mCurrentNtcTemperature:F

.field private volatile mCurrentTemperature:F

.field private mDefaultCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

.field private mDisplayId:I

.field private mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

.field private volatile mIsCameraHdrPresent:Z

.field private mIsDisableOutdoorDueToHighTemperature:Z

.field private volatile mIsDolbyEnabled:Z

.field private volatile mIsHdrLayerPresent:Z

.field private final mLoadFileRunnable:Ljava/lang/Runnable;

.field private mLoadedFileFrom:Ljava/lang/String;

.field private mLuxPairThresholds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMiniTemperatureThresholds:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNeedOverrideCondition:Z

.field private mOverrideCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

.field private final mSensorNtcFlag:Z

.field private final mSettingsObserver:Lcom/android/server/display/ThermalBrightnessController$SettingsObserver;

.field private mTemperatureGap:F

.field private final mTemperatureLevelCritical:F

.field private final mTemperatureLevelEmergency:F

.field private final mThermalBrightnessControlNtcAvailable:Z

.field protected mThermalConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mThermalListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/ThermalBrightnessController$ThermalListener;",
            ">;"
        }
    .end annotation
.end field

.field private mThermalSafetyBrightness:F

.field private final mUpdateAmbientLuxRunnable:Ljava/lang/Runnable;

.field private final mUpdateConditionRunnable:Ljava/lang/Runnable;

.field private final mUpdateNtcTemperatureRunnable:Ljava/lang/Runnable;

.field private final mUpdateOverrideConditionRunnable:Ljava/lang/Runnable;

.field private final mUpdateSafetyBrightnessRunnable:Ljava/lang/Runnable;

.field private final mUpdateTemperatureRunnable:Ljava/lang/Runnable;

.field private mUseAutoBrightness:Z


# direct methods
.method public static synthetic $r8$lambda$BY_O7afix8_WC6PPnfGSqgpH0Fs(Lcom/android/server/display/ThermalBrightnessController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$DvnPcFfkEeqQsgKF7ywjqKXY-X0(Lcom/android/server/display/ThermalBrightnessController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->loadThermalConfig()V

    return-void
.end method

.method public static synthetic $r8$lambda$PMa8bqLsX-zbI43OmNEibyKItaQ(Lcom/android/server/display/ThermalBrightnessController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->updateOverrideCondition()V

    return-void
.end method

.method public static synthetic $r8$lambda$W2RIPda8K8MlVpLThWFbMdB2Kyw(Lcom/android/server/display/ThermalBrightnessController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$_P6wsrgCqTZsKkZZV8U6RnpjaLM(Lcom/android/server/display/ThermalBrightnessController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$eDQhaKAlYCXvHPnmqavTUE1LHLg(Lcom/android/server/display/ThermalBrightnessController;Lcom/android/server/display/ThermalBrightnessController$ThermalListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/ThermalBrightnessController;->lambda$loadThermalConfig$0(Lcom/android/server/display/ThermalBrightnessController$ThermalListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kvpTi6qyI5KST1LI4acywgfEwGY(Lcom/android/server/display/ThermalBrightnessController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$lkKYP5girGl1P5IzXnefPLUy6bM(Lcom/android/server/display/ThermalBrightnessController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->lambda$new$5()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/ThermalBrightnessController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/ThermalBrightnessController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUseAutoBrightness(Lcom/android/server/display/ThermalBrightnessController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/ThermalBrightnessController;->mUseAutoBrightness:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmUseAutoBrightness(Lcom/android/server/display/ThermalBrightnessController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/ThermalBrightnessController;->mUseAutoBrightness:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetDefaultAmbientLux(Lcom/android/server/display/ThermalBrightnessController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->resetDefaultAmbientLux()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/display/ThermalBrightnessController$Callback;Lcom/android/server/display/DisplayPowerControllerImpl;I)V
    .registers 12
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "looper"  # Landroid/os/Looper;
    .param p3, "callback"  # Lcom/android/server/display/ThermalBrightnessController$Callback;
    .param p4, "displayPowerControllerImpl"  # Lcom/android/server/display/DisplayPowerControllerImpl;
    .param p5, "displayId"  # I

    .line 178
    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessControllerNative;-><init>()V

    .line 90
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mLoadedFileFrom:Ljava/lang/String;

    .line 111
    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentMaxThermalBrightness:F

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mThermalConditions:Ljava/util/List;

    .line 131
    new-instance v1, Landroid/util/SparseArrayMap;

    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mCacheInfo:Landroid/util/SparseArrayMap;

    .line 133
    new-instance v1, Landroid/util/SparseArrayMap;

    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mMiniTemperatureThresholds:Landroid/util/SparseArrayMap;

    .line 135
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mLuxPairThresholds:Landroid/util/SparseArray;

    .line 137
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mConditionIdMaps:Landroid/util/SparseArray;

    .line 139
    new-instance v1, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;

    invoke-direct {v1}, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedLuxPair:Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;

    .line 157
    iput v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mThermalSafetyBrightness:F

    .line 164
    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mTemperatureGap:F

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mThermalListener:Ljava/util/ArrayList;

    .line 171
    const-string/jumbo v0, "persist.vendor.ntc.flag"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mSensorNtcFlag:Z

    .line 492
    new-instance v0, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/ThermalBrightnessController;)V

    iput-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mLoadFileRunnable:Ljava/lang/Runnable;

    .line 494
    new-instance v0, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/ThermalBrightnessController;)V

    iput-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateOverrideConditionRunnable:Ljava/lang/Runnable;

    .line 495
    new-instance v0, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/ThermalBrightnessController;)V

    iput-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateConditionRunnable:Ljava/lang/Runnable;

    .line 496
    new-instance v0, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/ThermalBrightnessController;)V

    iput-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateTemperatureRunnable:Ljava/lang/Runnable;

    .line 497
    new-instance v0, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/ThermalBrightnessController;)V

    iput-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateSafetyBrightnessRunnable:Ljava/lang/Runnable;

    .line 498
    new-instance v0, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/ThermalBrightnessController;)V

    iput-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateNtcTemperatureRunnable:Ljava/lang/Runnable;

    .line 499
    new-instance v0, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/ThermalBrightnessController;)V

    iput-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateAmbientLuxRunnable:Ljava/lang/Runnable;

    .line 179
    iput-object p1, p0, Lcom/android/server/display/ThermalBrightnessController;->mContext:Landroid/content/Context;

    .line 180
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 181
    iput-object p3, p0, Lcom/android/server/display/ThermalBrightnessController;->mCallback:Lcom/android/server/display/ThermalBrightnessController$Callback;

    .line 182
    iput p5, p0, Lcom/android/server/display/ThermalBrightnessController;->mDisplayId:I

    .line 183
    iput-object p4, p0, Lcom/android/server/display/ThermalBrightnessController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 184
    new-instance v0, Lcom/android/server/display/ThermalBrightnessController$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/display/ThermalBrightnessController$SettingsObserver;-><init>(Lcom/android/server/display/ThermalBrightnessController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mSettingsObserver:Lcom/android/server/display/ThermalBrightnessController$SettingsObserver;

    .line 186
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 187
    const v2, 0x11070038

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mTemperatureLevelEmergency:F

    .line 188
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 189
    const v2, 0x11070037

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mTemperatureLevelCritical:F

    .line 190
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 191
    const v2, 0x11050088

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_d3

    iget-boolean v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mSensorNtcFlag:Z

    if-eqz v0, :cond_d1

    goto :goto_d3

    :cond_d1
    move v0, v1

    goto :goto_d4

    :cond_d3
    :goto_d3
    move v0, v2

    :goto_d4
    iput-boolean v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mThermalBrightnessControlNtcAvailable:Z

    .line 194
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mContext:Landroid/content/Context;

    .line 195
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 194
    const-string/jumbo v3, "screen_brightness_mode"

    const/4 v4, -0x2

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 197
    .local v0, "screenBrightnessModeSetting":I
    if-ne v0, v2, :cond_e7

    goto :goto_e8

    :cond_e7
    move v2, v1

    :goto_e8
    iput-boolean v2, p0, Lcom/android/server/display/ThermalBrightnessController;->mUseAutoBrightness:Z

    .line 200
    iget-object v2, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/ThermalBrightnessController;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    iget-object v2, p0, Lcom/android/server/display/ThermalBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 202
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/ThermalBrightnessController;->mSettingsObserver:Lcom/android/server/display/ThermalBrightnessController$SettingsObserver;

    .line 201
    const/4 v5, -0x1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 204
    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->resetDefaultAmbientLux()V

    .line 206
    invoke-virtual {p0, p5}, Lcom/android/server/display/ThermalBrightnessController;->nativeInit(I)V

    .line 207
    return-void
.end method

.method private formatDumpTemperatureBrightnessPair(Ljava/util/List;Ljava/io/PrintWriter;)V
    .registers 21
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .line 868
    .local p1, "luxPairs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;>;"
    move-object/from16 v0, p2

    const-string v1, "  lux-temperature pair: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 869
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_117

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;

    .line 870
    .local v2, "luxPair":Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    lux range: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->getMinInclusive()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 871
    invoke-virtual {v2}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->getMaxExclusive()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 870
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 872
    const-string v3, "    temperature-brightness pair: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 873
    const/4 v3, 0x0

    .line 874
    .local v3, "sbTemperature":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 875
    .local v5, "sbNit":Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    .line 876
    .local v6, "needsHeaders":Z
    const-string v7, ""

    .line 877
    .local v7, "separator":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->getTemperatureBrightnessPair()Ljava/util/List;

    move-result-object v8

    .line 878
    .local v8, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 879
    .local v9, "size":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_58
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_113

    .line 880
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;

    .line 881
    .local v11, "pair":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    if-eqz v6, :cond_77

    .line 882
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "      temperature: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 883
    .end local v3  # "sbTemperature":Ljava/lang/StringBuilder;
    .local v12, "sbTemperature":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v13, "              nit: "

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 884
    .end local v5  # "sbNit":Ljava/lang/StringBuilder;
    .local v3, "sbNit":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    move-object v5, v3

    move-object v3, v12

    .line 887
    .end local v12  # "sbTemperature":Ljava/lang/StringBuilder;
    .local v3, "sbTemperature":Ljava/lang/StringBuilder;
    .restart local v5  # "sbNit":Ljava/lang/StringBuilder;
    :cond_77
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 888
    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 889
    invoke-virtual {v11}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->getMinInclusive()F

    move-result v13

    invoke-static {v13}, Lcom/android/server/display/ThermalBrightnessController;->toStrFloatForDump(F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 890
    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 891
    invoke-virtual {v11}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->getMaxExclusive()F

    move-result v13

    invoke-static {v13}, Lcom/android/server/display/ThermalBrightnessController;->toStrFloatForDump(F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 892
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 893
    .local v12, "strTemperature":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->getNit()F

    move-result v13

    invoke-static {v13}, Lcom/android/server/display/ThermalBrightnessController;->toStrFloatForDump(F)Ljava/lang/String;

    move-result-object v13

    .line 894
    .local v13, "strNit":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 895
    .local v14, "maxLen":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    const-string v1, "%"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v15, "s"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, "format":Ljava/lang/String;
    const-string v7, ", "

    .line 897
    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    move-object/from16 v17, v1

    .end local v1  # "format":Ljava/lang/String;
    .local v17, "format":Ljava/lang/String;
    const/16 v1, 0x50

    if-gt v15, v1, :cond_102

    add-int/lit8 v1, v9, -0x1

    if-ne v10, v1, :cond_10d

    .line 901
    :cond_102
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 902
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 903
    const/4 v1, 0x1

    .line 904
    .end local v6  # "needsHeaders":Z
    .local v1, "needsHeaders":Z
    const-string v6, ""

    move-object v7, v6

    move v6, v1

    .line 879
    .end local v1  # "needsHeaders":Z
    .end local v11  # "pair":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    .end local v12  # "strTemperature":Ljava/lang/String;
    .end local v13  # "strNit":Ljava/lang/String;
    .end local v14  # "maxLen":I
    .end local v17  # "format":Ljava/lang/String;
    .restart local v6  # "needsHeaders":Z
    :cond_10d
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_58

    :cond_113
    move-object/from16 v16, v1

    .line 907
    .end local v2  # "luxPair":Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;
    .end local v3  # "sbTemperature":Ljava/lang/StringBuilder;
    .end local v5  # "sbNit":Ljava/lang/StringBuilder;
    .end local v6  # "needsHeaders":Z
    .end local v7  # "separator":Ljava/lang/String;
    .end local v8  # "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    .end local v9  # "size":I
    .end local v10  # "i":I
    goto/16 :goto_b

    .line 908
    :cond_117
    return-void
.end method

.method private getTemperatureBrightnessPairs(Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;)Ljava/util/List;
    .registers 10
    .param p1, "conditionItem"  # Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;",
            ">;"
        }
    .end annotation

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v0, "temperaturePairs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    invoke-virtual {p1}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getLuxTemperaturePair()Ljava/util/List;

    move-result-object v1

    .line 596
    .local v1, "luxPairs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;>;"
    const/4 v2, 0x0

    .line 597
    .local v2, "maxLuxPair":Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;

    .line 598
    .local v4, "luxPair":Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;
    invoke-virtual {v4}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->getMinInclusive()F

    move-result v5

    .line 599
    .local v5, "minLux":F
    invoke-virtual {v4}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->getMaxExclusive()F

    move-result v6

    .line 600
    .local v6, "maxLux":F
    iget v7, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAmbientLux:F

    cmpl-float v7, v7, v5

    if-ltz v7, :cond_33

    iget v7, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAmbientLux:F

    cmpg-float v7, v7, v6

    if-gez v7, :cond_33

    .line 601
    invoke-virtual {v4}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->getTemperatureBrightnessPair()Ljava/util/List;

    move-result-object v0

    .line 602
    goto :goto_3f

    .line 604
    :cond_33
    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->getMaxExclusive()F

    move-result v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_3e

    .line 605
    :cond_3d
    move-object v2, v4

    .line 607
    .end local v4  # "luxPair":Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;
    .end local v5  # "minLux":F
    .end local v6  # "maxLux":F
    :cond_3e
    goto :goto_e

    .line 608
    :cond_3f
    :goto_3f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_55

    if-eqz v2, :cond_55

    iget v3, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAmbientLux:F

    invoke-virtual {v2}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->getMaxExclusive()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_55

    .line 609
    invoke-virtual {v2}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->getTemperatureBrightnessPair()Ljava/util/List;

    move-result-object v0

    .line 611
    :cond_55
    return-object v0
.end method

.method private synthetic lambda$loadThermalConfig$0(Lcom/android/server/display/ThermalBrightnessController$ThermalListener;)V
    .registers 5
    .param p1, "l"  # Lcom/android/server/display/ThermalBrightnessController$ThermalListener;

    .line 222
    if-eqz p1, :cond_11

    .line 224
    :try_start_2
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mThermalConditions:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/android/server/display/ThermalBrightnessController$ThermalListener;->thermalConfigChanged(Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_8

    .line 227
    goto :goto_11

    .line 225
    :catch_8
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ThermalBrightnessController"

    const-string/jumbo v2, "thermalConfigChanged error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_11
    :goto_11
    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 2

    .line 495
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/display/ThermalBrightnessController;->updateConditionState(I)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .registers 2

    .line 496
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/ThermalBrightnessController;->updateConditionState(I)V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .registers 2

    .line 497
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/display/ThermalBrightnessController;->updateConditionState(I)V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .registers 2

    .line 498
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/display/ThermalBrightnessController;->updateConditionState(I)V

    return-void
.end method

.method private synthetic lambda$new$5()V
    .registers 2

    .line 499
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/display/ThermalBrightnessController;->updateConditionState(I)V

    return-void
.end method

.method private loadConfigFromFile()Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;
    .registers 6

    .line 685
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "common_multi_factor_thermal_brightness_control.xml"

    const-string v2, "etc"

    const-string v3, "displayconfig"

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 684
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 689
    .local v0, "commonFile":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v4, "multi_factor_thermal_brightness_control.xml"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 688
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 693
    .local v1, "localFile":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v4, "cloud_multi_factor_thermal_brightness_control.xml"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 692
    invoke-static {v2, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 695
    .local v2, "cloudFile":Ljava/io/File;
    invoke-direct {p0, v2}, Lcom/android/server/display/ThermalBrightnessController;->parseConfig(Ljava/io/File;)Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;

    move-result-object v3

    .line 696
    .local v3, "config":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;
    if-eqz v3, :cond_3a

    .line 697
    const-string v4, "cloud_file"

    iput-object v4, p0, Lcom/android/server/display/ThermalBrightnessController;->mLoadedFileFrom:Ljava/lang/String;

    .line 698
    return-object v3

    .line 701
    :cond_3a
    invoke-direct {p0, v1}, Lcom/android/server/display/ThermalBrightnessController;->parseConfig(Ljava/io/File;)Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;

    move-result-object v3

    .line 702
    if-eqz v3, :cond_46

    .line 703
    const-string/jumbo v4, "local_file"

    iput-object v4, p0, Lcom/android/server/display/ThermalBrightnessController;->mLoadedFileFrom:Ljava/lang/String;

    .line 704
    return-object v3

    .line 707
    :cond_46
    invoke-direct {p0, v0}, Lcom/android/server/display/ThermalBrightnessController;->parseConfig(Ljava/io/File;)Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;

    move-result-object v3

    .line 708
    if-eqz v3, :cond_51

    .line 709
    const-string v4, "common_file"

    iput-object v4, p0, Lcom/android/server/display/ThermalBrightnessController;->mLoadedFileFrom:Ljava/lang/String;

    .line 710
    return-object v3

    .line 712
    :cond_51
    const/4 v4, 0x0

    return-object v4
.end method

.method private loadThermalConfig()V
    .registers 20

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/ThermalBrightnessController;->mThermalConditions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 211
    invoke-direct {v0}, Lcom/android/server/display/ThermalBrightnessController;->loadConfigFromFile()Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;

    move-result-object v1

    .line 212
    .local v1, "config":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;
    const-string v2, "ThermalBrightnessController"

    if-nez v1, :cond_15

    .line 213
    const-string v3, "config file was not found!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void

    .line 216
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "load thermal config from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/display/ThermalBrightnessController;->mLoadedFileFrom:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v3, v0, Lcom/android/server/display/ThermalBrightnessController;->mThermalConditions:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;->getThermalConditionItem()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    iget-object v3, v0, Lcom/android/server/display/ThermalBrightnessController;->mThermalListener:Ljava/util/ArrayList;

    if-eqz v3, :cond_45

    .line 221
    iget-object v3, v0, Lcom/android/server/display/ThermalBrightnessController;->mThermalListener:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda7;

    invoke-direct {v4, v0}, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/ThermalBrightnessController;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 231
    :cond_45
    iget-object v3, v0, Lcom/android/server/display/ThermalBrightnessController;->mThermalConditions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    .line 233
    .local v4, "condition":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;
    invoke-virtual {v4}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getIdentifier()I

    move-result v5

    .line 234
    .local v5, "id":I
    invoke-virtual {v4}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, "description":Ljava/lang/String;
    if-nez v5, :cond_63

    .line 237
    iput-object v4, v0, Lcom/android/server/display/ThermalBrightnessController;->mDefaultCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    .line 241
    :cond_63
    const-string v7, "DOLBY-VISION"

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 242
    iput-object v4, v0, Lcom/android/server/display/ThermalBrightnessController;->mOverrideCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    .line 245
    :cond_6d
    const-string v7, "CAMERA-DOLBY"

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 246
    const-string v7, "The current project includes camera hdr condition!"

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iput-object v4, v0, Lcom/android/server/display/ThermalBrightnessController;->mCameraHdrCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    .line 250
    :cond_7c
    iget-object v7, v0, Lcom/android/server/display/ThermalBrightnessController;->mConditionIdMaps:Landroid/util/SparseArray;

    invoke-virtual {v7, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 252
    invoke-virtual {v4}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getLuxTemperaturePair()Ljava/util/List;

    move-result-object v7

    .line 253
    .local v7, "luxPairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v8, "luxThresholdPairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;>;"
    const/high16 v9, 0x7fc00000  # Float.NaN

    .line 256
    .local v9, "miniTemperature":F
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_90
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;

    .line 257
    .local v11, "luxPair":Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;
    invoke-virtual {v11}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->getMinInclusive()F

    move-result v12

    .line 258
    .local v12, "minLux":F
    invoke-virtual {v11}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->getMaxExclusive()F

    move-result v13

    .line 259
    .local v13, "maxLux":F
    nop

    .line 260
    invoke-virtual {v11}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->getTemperatureBrightnessPair()Ljava/util/List;

    move-result-object v14

    .line 261
    .local v14, "temperaturePairs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_ad
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_ca

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;

    .line 262
    .local v16, "temperaturePair":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->getMinInclusive()F

    move-result v17

    .line 263
    .local v17, "minTemp":F
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-nez v18, :cond_c7

    cmpg-float v18, v17, v9

    if-gez v18, :cond_c9

    .line 264
    :cond_c7
    move/from16 v9, v17

    .line 266
    .end local v16  # "temperaturePair":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    .end local v17  # "minTemp":F
    :cond_c9
    goto :goto_ad

    .line 267
    :cond_ca
    iget-object v15, v0, Lcom/android/server/display/ThermalBrightnessController;->mMiniTemperatureThresholds:Landroid/util/SparseArrayMap;

    move-object/from16 v16, v1

    .end local v1  # "config":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;
    .local v16, "config":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object/from16 v17, v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v15, v5, v1, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance v1, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;

    invoke-direct {v1, v12, v13}, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;-><init>(FF)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v11  # "luxPair":Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;
    .end local v12  # "minLux":F
    .end local v13  # "maxLux":F
    .end local v14  # "temperaturePairs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto :goto_90

    .line 270
    .end local v16  # "config":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;
    .restart local v1  # "config":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;
    :cond_e8
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1  # "config":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;
    .restart local v16  # "config":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;
    iget-object v1, v0, Lcom/android/server/display/ThermalBrightnessController;->mLuxPairThresholds:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 271
    .end local v4  # "condition":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;
    .end local v5  # "id":I
    .end local v6  # "description":Ljava/lang/String;
    .end local v7  # "luxPairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;>;"
    .end local v8  # "luxThresholdPairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;>;"
    .end local v9  # "miniTemperature":F
    move-object/from16 v1, v16

    goto/16 :goto_4b

    .line 272
    .end local v16  # "config":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;
    .restart local v1  # "config":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;
    :cond_f5
    move-object/from16 v16, v1

    .end local v1  # "config":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;
    .restart local v16  # "config":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/display/ThermalBrightnessController;->updateConditionState(I)V

    .line 273
    return-void
.end method

.method private notifyHighTemperatureForOutdoorMode()V
    .registers 7

    .line 348
    iget v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentTemperature:F

    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mTemperatureLevelEmergency:F

    cmpl-float v0, v0, v1

    const-string/jumbo v1, "high_temperature_state"

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-ltz v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mIsDisableOutdoorDueToHighTemperature:Z

    if-nez v0, :cond_2a

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mIsDisableOutdoorDueToHighTemperature:Z

    .line 351
    iget-object v4, p0, Lcom/android/server/display/ThermalBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "outdoor_mode"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 353
    iget-object v3, p0, Lcom/android/server/display/ThermalBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_41

    .line 355
    :cond_2a
    iget v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentTemperature:F

    iget v4, p0, Lcom/android/server/display/ThermalBrightnessController;->mTemperatureLevelEmergency:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_41

    iget-boolean v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mIsDisableOutdoorDueToHighTemperature:Z

    if-eqz v0, :cond_41

    .line 357
    iput-boolean v3, p0, Lcom/android/server/display/ThermalBrightnessController;->mIsDisableOutdoorDueToHighTemperature:Z

    .line 358
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 361
    :cond_41
    :goto_41
    return-void
.end method

.method private parseConfig(Ljava/io/File;)Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;
    .registers 6
    .param p1, "configFile"  # Ljava/io/File;

    .line 719
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 720
    return-object v1

    .line 722
    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_12} :catch_24
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_8 .. :try_end_12} :catch_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_12} :catch_24

    .line 723
    .local v0, "in":Ljava/io/InputStream;
    :try_start_12
    invoke-static {v0}, Lcom/android/server/display/thermalbrightnesscondition/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1a

    .line 724
    :try_start_16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_24
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_16 .. :try_end_19} :catch_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_19} :catch_24

    .line 723
    return-object v2

    .line 722
    :catchall_1a
    move-exception v2

    :try_start_1b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception v3

    :try_start_20
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/display/ThermalBrightnessController;
    .end local p1  # "configFile":Ljava/io/File;
    :goto_23
    throw v2
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_24} :catch_24
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_20 .. :try_end_24} :catch_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_24} :catch_24

    .line 724
    .end local v0  # "in":Ljava/io/InputStream;
    .restart local p0  # "this":Lcom/android/server/display/ThermalBrightnessController;
    .restart local p1  # "configFile":Ljava/io/File;
    :catch_24
    move-exception v0

    .line 725
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 727
    .end local v0  # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private readThermalConfigFromNode(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "file"  # Ljava/lang/String;

    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    .local v1, "builder":Ljava/lang/StringBuilder;
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/thermal/thermal_message"

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    .line 657
    :goto_18
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "info":Ljava/lang/String;
    if-eqz v2, :cond_23

    .line 658
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 660
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_27} :catch_43
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_27} :catch_33
    .catchall {:try_start_6 .. :try_end_27} :catchall_31

    .line 667
    nop

    .line 668
    :try_start_28
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 672
    goto :goto_30

    .line 670
    :catch_2c
    move-exception v4

    .line 671
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 660
    .end local v4  # "e":Ljava/io/IOException;
    :goto_30
    return-object v2

    .line 666
    .end local v3  # "info":Ljava/lang/String;
    :catchall_31
    move-exception v2

    goto :goto_4f

    .line 663
    :catch_33
    move-exception v2

    .line 664
    .local v2, "e":Ljava/io/IOException;
    :try_start_34
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_31

    .line 667
    .end local v2  # "e":Ljava/io/IOException;
    if-eqz v0, :cond_42

    .line 668
    :try_start_39
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_42

    .line 670
    :catch_3d
    move-exception v2

    .line 671
    .restart local v2  # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 673
    .end local v2  # "e":Ljava/io/IOException;
    goto :goto_4d

    .line 672
    :cond_42
    :goto_42
    goto :goto_4d

    .line 661
    :catch_43
    move-exception v2

    .line 662
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_31

    .line 667
    .end local v2  # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_42

    .line 668
    :try_start_49
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_3d

    goto :goto_42

    .line 674
    :goto_4d
    const/4 v2, 0x0

    return-object v2

    .line 667
    :goto_4f
    if-eqz v0, :cond_5a

    .line 668
    :try_start_51
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_5a

    .line 670
    :catch_55
    move-exception v3

    .line 671
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    .line 672
    .end local v3  # "e":Ljava/io/IOException;
    :cond_5a
    :goto_5a
    nop

    .line 673
    :goto_5b
    throw v2
.end method

.method private resetDefaultAmbientLux()V
    .registers 2

    .line 618
    iget-boolean v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mUseAutoBrightness:Z

    if-nez v0, :cond_e

    .line 619
    const v0, 0x45bb8000  # 6000.0f

    iput v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAmbientLux:F

    .line 620
    iget v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAmbientLux:F

    invoke-virtual {p0, v0}, Lcom/android/server/display/ThermalBrightnessController;->onAmbientLuxChange(F)V

    .line 622
    :cond_e
    return-void
.end method

.method private static toStrFloatForDump(F)Ljava/lang/String;
    .registers 4
    .param p0, "value"  # F

    .line 924
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_8

    .line 925
    const-string v0, "0"

    return-object v0

    .line 926
    :cond_8
    const v0, 0x3dcccccd  # 0.1f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_20

    .line 927
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.3f"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 928
    :cond_20
    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_37

    .line 929
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.2f"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 930
    :cond_37
    const/high16 v0, 0x41200000  # 10.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_4e

    .line 931
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.1f"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 933
    :cond_4e
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toStringCondition(Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;)Ljava/lang/String;
    .registers 4
    .param p0, "condition"  # Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    .line 911
    if-nez p0, :cond_6

    .line 912
    const-string/jumbo v0, "null"

    return-object v0

    .line 914
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 915
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{identifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 916
    invoke-virtual {p0}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 917
    const-string v2, ", description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 918
    invoke-virtual {p0}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 919
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateAmbientLuxThreshold()Z
    .registers 11

    .line 790
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mLuxPairThresholds:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedThermalConditionId:I

    .line 791
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 792
    .local v0, "luxThresholdPairs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;>;"
    const-string v1, "ThermalBrightnessController"

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    .line 793
    sget-boolean v3, Lcom/android/server/display/ThermalBrightnessController;->DEBUG:Z

    if-eqz v3, :cond_19

    .line 794
    const-string/jumbo v3, "updateAmbientLuxThreshold: ambient lux threshold corresponding to current applied thermal condition does not exist"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_19
    return v2

    .line 799
    :cond_1a
    const/4 v3, 0x0

    .line 800
    .local v3, "targetLuxPair":Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;
    const/4 v4, 0x0

    .line 801
    .local v4, "maxLuxPair":Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;

    .line 802
    .local v6, "luxThresholdPair":Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;
    invoke-static {v6}, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->-$$Nest$mgetMinAmbientLuxThreshold(Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;)F

    move-result v7

    .line 803
    .local v7, "minLuxThreshold":F
    invoke-static {v6}, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->-$$Nest$mgetMaxAmbientLuxThreshold(Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;)F

    move-result v8

    .line 804
    .local v8, "maxLuxThreshold":F
    iget v9, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAmbientLux:F

    cmpl-float v9, v9, v7

    if-ltz v9, :cond_42

    iget v9, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAmbientLux:F

    cmpg-float v9, v9, v8

    if-gez v9, :cond_42

    .line 805
    move-object v3, v6

    .line 806
    goto :goto_4e

    .line 808
    :cond_42
    if-eqz v4, :cond_4c

    invoke-static {v4}, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->-$$Nest$mgetMaxAmbientLuxThreshold(Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;)F

    move-result v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_4d

    .line 809
    :cond_4c
    move-object v4, v6

    .line 811
    .end local v6  # "luxThresholdPair":Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;
    .end local v7  # "minLuxThreshold":F
    .end local v8  # "maxLuxThreshold":F
    :cond_4d
    goto :goto_20

    .line 812
    :cond_4e
    :goto_4e
    if-nez v3, :cond_5d

    if-eqz v4, :cond_5d

    iget v5, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAmbientLux:F

    invoke-static {v4}, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->-$$Nest$mgetMaxAmbientLuxThreshold(Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5d

    .line 813
    move-object v3, v4

    .line 815
    :cond_5d
    if-eqz v3, :cond_a0

    .line 816
    invoke-static {v3}, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->-$$Nest$mgetMinAmbientLuxThreshold(Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;)F

    move-result v2

    .line 817
    .local v2, "minLuxThreshold":F
    invoke-static {v3}, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->-$$Nest$mgetMaxAmbientLuxThreshold(Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;)F

    move-result v5

    .line 818
    .local v5, "maxLuxThreshold":F
    iget-object v6, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedLuxPair:Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;

    invoke-static {v6, v2}, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->-$$Nest$msetMinAmbientLuxThreshold(Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;F)V

    .line 819
    iget-object v6, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedLuxPair:Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;

    invoke-static {v6, v5}, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->-$$Nest$msetMaxAmbientLuxThreshold(Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;F)V

    .line 820
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAmbientLuxThreshold: current ambient lux: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAmbientLux:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", applied min ambient lux threshold: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", max ambient lux threshold: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v1, 0x1

    return v1

    .line 825
    .end local v2  # "minLuxThreshold":F
    .end local v5  # "maxLuxThreshold":F
    :cond_a0
    return v2
.end method

.method private updateConditionState(I)V
    .registers 7
    .param p1, "event"  # I

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "changed":Z
    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    .line 370
    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->updateSkinTemperature()Z

    move-result v0

    goto :goto_2e

    .line 371
    :cond_9
    const/4 v1, 0x2

    if-ne p1, v1, :cond_12

    .line 372
    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->updateThermalCondition()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_2e

    .line 373
    :cond_12
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1b

    .line 374
    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->updateSafetyBrightness()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_2e

    .line 375
    :cond_1b
    const/16 v1, 0x8

    if-ne p1, v1, :cond_25

    .line 376
    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->updateNtcTemperature()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_2e

    .line 377
    :cond_25
    const/16 v1, 0x10

    if-ne p1, v1, :cond_2e

    .line 378
    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->updateAmbientLuxThreshold()Z

    move-result v1

    or-int/2addr v0, v1

    .line 380
    :cond_2e
    :goto_2e
    if-eqz v0, :cond_46

    .line 381
    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->updateThermalBrightnessIfNeeded()Z

    move-result v1

    .line 383
    .local v1, "thermalBrightnessChanged":Z
    iget-object v2, p0, Lcom/android/server/display/ThermalBrightnessController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    iget v3, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedThermalConditionId:I

    iget v4, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedTemperature:F

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->startDetailThermalUsageStatsOnThermalChanged(IFZ)V

    .line 388
    if-eqz v1, :cond_46

    .line 389
    iget-object v2, p0, Lcom/android/server/display/ThermalBrightnessController;->mCallback:Lcom/android/server/display/ThermalBrightnessController$Callback;

    iget v3, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentMaxThermalBrightness:F

    invoke-interface {v2, v3}, Lcom/android/server/display/ThermalBrightnessController$Callback;->onThermalBrightnessChanged(F)V

    .line 392
    .end local v1  # "thermalBrightnessChanged":Z
    :cond_46
    return-void
.end method

.method private updateMaxNtcTempBrightness()F
    .registers 10

    .line 629
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mConditionIdMaps:Landroid/util/SparseArray;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    .line 630
    .local v0, "ntcTempCondition":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;
    const/high16 v1, 0x7fc00000  # Float.NaN

    if-nez v0, :cond_e

    .line 631
    return v1

    .line 633
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/server/display/ThermalBrightnessController;->getTemperatureBrightnessPairs(Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;)Ljava/util/List;

    move-result-object v2

    .line 634
    .local v2, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    const/4 v3, 0x0

    .line 635
    .local v3, "target":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;

    .line 636
    .local v5, "pair":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    invoke-virtual {v5}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->getMinInclusive()F

    move-result v6

    .line 637
    .local v6, "minTemp":F
    invoke-virtual {v5}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->getMaxExclusive()F

    move-result v7

    .line 638
    .local v7, "maxTemp":F
    iget v8, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedNtcTemperature:F

    cmpl-float v8, v8, v6

    if-ltz v8, :cond_39

    iget v8, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedNtcTemperature:F

    cmpg-float v8, v8, v7

    if-gez v8, :cond_39

    .line 639
    move-object v3, v5

    .line 640
    goto :goto_3a

    .line 642
    .end local v5  # "pair":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    .end local v6  # "minTemp":F
    .end local v7  # "maxTemp":F
    :cond_39
    goto :goto_17

    .line 643
    :cond_3a
    :goto_3a
    if-nez v3, :cond_3d

    .line 644
    return v1

    .line 646
    :cond_3d
    invoke-virtual {v3}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->getNit()F

    move-result v1

    .line 647
    .local v1, "value":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMaxNtcTempBrightness: get brightness threshold: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ThermalBrightnessController"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return v1
.end method

.method private updateMaxThermalBrightness()F
    .registers 15

    .line 537
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    const/high16 v1, 0x7fc00000  # Float.NaN

    const-string v2, "ThermalBrightnessController"

    if-nez v0, :cond_1e

    .line 538
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mDefaultCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    if-eqz v0, :cond_17

    .line 539
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mDefaultCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    iput-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    .line 540
    const-string/jumbo v0, "updateMaxThermalBrightness: mCurrentCondition is null, initialized with default condition."

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 543
    :cond_17
    const-string/jumbo v0, "updateMaxThermalBrightness: no valid conditions!"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return v1

    .line 547
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    invoke-virtual {v0}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getIdentifier()I

    move-result v0

    .line 549
    .local v0, "conditionId":I
    iget-object v3, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedLuxPair:Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;

    invoke-static {v3}, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->-$$Nest$mgetMinAmbientLuxThreshold(Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;)F

    move-result v3

    .line 550
    .local v3, "luxKey":F
    iget-object v4, p0, Lcom/android/server/display/ThermalBrightnessController;->mMiniTemperatureThresholds:Landroid/util/SparseArrayMap;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 551
    .local v4, "miniTemperature":Ljava/lang/Float;
    if-eqz v4, :cond_5e

    iget v5, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedTemperature:F

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5e

    .line 552
    sget-boolean v5, Lcom/android/server/display/ThermalBrightnessController;->DEBUG:Z

    if-eqz v5, :cond_5d

    .line 553
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateMaxThermalBrightness: Current skin temperature is less than the minimum temperature threshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_5d
    return v1

    .line 557
    :cond_5e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedTemperature:F

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 558
    .local v5, "luxTemperatureKey":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/display/ThermalBrightnessController;->mCacheInfo:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v0, v5}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 559
    .local v6, "cachedNit":Ljava/lang/Float;
    if-eqz v6, :cond_a2

    .line 560
    sget-boolean v1, Lcom/android/server/display/ThermalBrightnessController;->DEBUG:Z

    if-eqz v1, :cond_9d

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateMaxThermalBrightness: Max thermal brightness already cached: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_9d
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 566
    :cond_a2
    iget-object v7, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    invoke-direct {p0, v7}, Lcom/android/server/display/ThermalBrightnessController;->getTemperatureBrightnessPairs(Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;)Ljava/util/List;

    move-result-object v7

    .line 567
    .local v7, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    const/4 v8, 0x0

    .line 568
    .local v8, "target":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_ad
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;

    .line 569
    .local v10, "pair":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    invoke-virtual {v10}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->getMinInclusive()F

    move-result v11

    .line 570
    .local v11, "minTemp":F
    invoke-virtual {v10}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->getMaxExclusive()F

    move-result v12

    .line 571
    .local v12, "maxTemp":F
    iget v13, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedTemperature:F

    cmpl-float v13, v13, v11

    if-ltz v13, :cond_cf

    iget v13, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedTemperature:F

    cmpg-float v13, v13, v12

    if-gez v13, :cond_cf

    .line 572
    move-object v8, v10

    .line 573
    goto :goto_d0

    .line 575
    .end local v10  # "pair":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    .end local v11  # "minTemp":F
    .end local v12  # "maxTemp":F
    :cond_cf
    goto :goto_ad

    .line 577
    :cond_d0
    :goto_d0
    if-nez v8, :cond_101

    .line 578
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current temperature "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedTemperature:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and ambient lux "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAmbientLux:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " do not match in config: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return v1

    .line 583
    :cond_101
    invoke-virtual {v8}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->getNit()F

    move-result v1

    .line 584
    .local v1, "value":F
    iget-object v9, p0, Lcom/android/server/display/ThermalBrightnessController;->mCacheInfo:Landroid/util/SparseArrayMap;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v0, v5, v10}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateMaxThermalBrightness: get brightness threshold: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return v1
.end method

.method private updateNtcTemperature()Z
    .registers 7

    .line 460
    const-string v0, "display_therm_temp"

    invoke-direct {p0, v0}, Lcom/android/server/display/ThermalBrightnessController;->readThermalConfigFromNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_64

    .line 463
    :try_start_8
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x447a0000  # 1000.0f

    div-float/2addr v1, v2

    .line 464
    .local v1, "temperature":F
    sget-boolean v2, Lcom/android/server/display/ThermalBrightnessController;->DEBUG:Z
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_11} :catch_5f

    const-string v3, "ThermalBrightnessController"

    if-eqz v2, :cond_2c

    .line 465
    :try_start_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNtcTemperature: temperature: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_2c
    iput v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentNtcTemperature:F

    .line 468
    iget v2, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedNtcTemperature:F

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/display/ThermalBrightnessController;->asSameTemperature(FFZ)Z

    move-result v2

    if-nez v2, :cond_64

    .line 469
    iput v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedNtcTemperature:F

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNtcTemperature: actual temperature: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentNtcTemperature:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", applied temperature: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedNtcTemperature:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_5e} :catch_5f

    .line 472
    return v4

    .line 475
    .end local v1  # "temperature":F
    :catch_5f
    move-exception v1

    .line 476
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_65

    .line 477
    .end local v1  # "e":Ljava/lang/NumberFormatException;
    :cond_64
    nop

    .line 478
    :goto_65
    const/4 v1, 0x0

    return v1
.end method

.method private updateOverrideCondition()V
    .registers 3

    .line 763
    iget-boolean v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mIsHdrLayerPresent:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mIsDolbyEnabled:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 764
    .local v0, "needOverride":Z
    :goto_c
    iget-boolean v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mNeedOverrideCondition:Z

    if-eq v1, v0, :cond_16

    .line 765
    iput-boolean v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mNeedOverrideCondition:Z

    .line 766
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/display/ThermalBrightnessController;->updateConditionState(I)V

    .line 768
    :cond_16
    return-void
.end method

.method private updateSafetyBrightness()Z
    .registers 4

    .line 445
    const-string/jumbo v0, "thermal_max_brightness"

    invoke-direct {p0, v0}, Lcom/android/server/display/ThermalBrightnessController;->readThermalConfigFromNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_20

    .line 447
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 448
    .local v1, "nit":F
    iget v2, p0, Lcom/android/server/display/ThermalBrightnessController;->mThermalSafetyBrightness:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_20

    .line 449
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1b

    const/high16 v2, 0x7fc00000  # Float.NaN

    goto :goto_1c

    :cond_1b
    move v2, v1

    :goto_1c
    iput v2, p0, Lcom/android/server/display/ThermalBrightnessController;->mThermalSafetyBrightness:F

    .line 450
    const/4 v2, 0x1

    return v2

    .line 453
    .end local v1  # "nit":F
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method private updateSkinTemperature()Z
    .registers 7

    .line 323
    const-string v0, "board_sensor_temp"

    invoke-direct {p0, v0}, Lcom/android/server/display/ThermalBrightnessController;->readThermalConfigFromNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_7c

    .line 326
    :try_start_9
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x447a0000  # 1000.0f

    div-float/2addr v2, v3

    .line 327
    .local v2, "temperature":F
    sget-boolean v3, Lcom/android/server/display/ThermalBrightnessController;->DEBUG:Z
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_12} :catch_77

    const-string v4, "ThermalBrightnessController"

    if-eqz v3, :cond_2d

    .line 328
    :try_start_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSkinTemperature: temperature: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_2d
    iput v2, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentTemperature:F

    .line 331
    iget v3, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedTemperature:F

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/display/ThermalBrightnessController;->asSameTemperature(FFZ)Z

    move-result v3

    if-nez v3, :cond_7c

    .line 332
    iput v2, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedTemperature:F

    .line 333
    iget-object v3, p0, Lcom/android/server/display/ThermalBrightnessController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerControllerImpl;->isSupportOutdoorMode()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 334
    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->notifyHighTemperatureForOutdoorMode()V

    .line 336
    :cond_44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSkinTemperature: actual temperature: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentTemperature:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", applied temperature: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedTemperature:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", displayId:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/display/ThermalBrightnessController;->mDisplayId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_75} :catch_77

    .line 338
    const/4 v1, 0x1

    return v1

    .line 341
    .end local v2  # "temperature":F
    :catch_77
    move-exception v2

    .line 342
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_7d

    .line 343
    .end local v2  # "e":Ljava/lang/NumberFormatException;
    :cond_7c
    nop

    .line 344
    :goto_7d
    return v1
.end method

.method private updateThermalBrightnessIfNeeded()Z
    .registers 5

    .line 502
    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->updateMaxThermalBrightness()F

    move-result v0

    .line 503
    .local v0, "restrictedBrightness":F
    iget-boolean v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mThermalBrightnessControlNtcAvailable:Z

    if-eqz v1, :cond_1f

    .line 504
    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->updateMaxNtcTempBrightness()F

    move-result v1

    .line 505
    .local v1, "restrictedNtcBrightness":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 506
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v2, v1

    goto :goto_1e

    .line 507
    :cond_1a
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :goto_1e
    move v0, v2

    .line 510
    .end local v1  # "restrictedNtcBrightness":F
    :cond_1f
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentMaxThermalBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 511
    return v2

    .line 515
    :cond_2f
    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mThermalSafetyBrightness:F

    const/high16 v3, -0x40800000  # -1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_45

    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mThermalSafetyBrightness:F

    .line 516
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_45

    .line 517
    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mThermalSafetyBrightness:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 519
    :cond_45
    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentMaxThermalBrightness:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_a6

    .line 520
    iput v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentMaxThermalBrightness:F

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateThermalBrightnessState: condition id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedThermalConditionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", temperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentTemperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ambient lux: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAmbientLux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum thermal brightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentMaxThermalBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", safety thermal brightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/ThermalBrightnessController;->mThermalSafetyBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", displayId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/ThermalBrightnessController;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThermalBrightnessController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v1, 0x1

    return v1

    .line 529
    :cond_a6
    return v2
.end method

.method private updateThermalCondition()Z
    .registers 8

    .line 398
    const-string v0, ", name="

    const-string v1, "ThermalBrightnessController"

    const-string/jumbo v2, "sconfig"

    invoke-direct {p0, v2}, Lcom/android/server/display/ThermalBrightnessController;->readThermalConfigFromNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_df

    .line 401
    :try_start_d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 402
    .local v3, "id":I
    iget v4, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedThermalConditionId:I

    if-ne v4, v3, :cond_19

    iget-boolean v4, p0, Lcom/android/server/display/ThermalBrightnessController;->mNeedOverrideCondition:Z

    if-eqz v4, :cond_df

    .line 403
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateThermalCondition: condition changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iput v3, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentActualThermalConditionId:I

    .line 406
    iget-object v4, p0, Lcom/android/server/display/ThermalBrightnessController;->mConditionIdMaps:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    .line 408
    .local v4, "condition":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;
    iget-boolean v5, p0, Lcom/android/server/display/ThermalBrightnessController;->mNeedOverrideCondition:Z

    if-eqz v5, :cond_52

    .line 409
    iget-object v5, p0, Lcom/android/server/display/ThermalBrightnessController;->mOverrideCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    move-object v4, v5

    .line 410
    iget-boolean v5, p0, Lcom/android/server/display/ThermalBrightnessController;->mIsCameraHdrPresent:Z

    if-eqz v5, :cond_52

    iget-object v5, p0, Lcom/android/server/display/ThermalBrightnessController;->mCameraHdrCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    if-eqz v5, :cond_52

    .line 411
    const-string/jumbo v5, "use camera hdr condition now!"

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v5, p0, Lcom/android/server/display/ThermalBrightnessController;->mCameraHdrCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    move-object v4, v5

    .line 416
    :cond_52
    if-nez v4, :cond_79

    .line 417
    iget-object v5, p0, Lcom/android/server/display/ThermalBrightnessController;->mDefaultCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    if-eqz v5, :cond_79

    .line 418
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thermal condition (id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentActualThermalConditionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is not configured in file, apply default condition!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v5, p0, Lcom/android/server/display/ThermalBrightnessController;->mDefaultCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    move-object v4, v5

    .line 424
    :cond_79
    iget-object v5, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    if-eq v4, v5, :cond_df

    .line 425
    iget-object v5, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    if-eqz v5, :cond_cd

    if-eqz v4, :cond_cd

    .line 426
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "condition changed from: [id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    invoke-virtual {v6}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    .line 427
    invoke-virtual {v6}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] to [id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 428
    invoke-virtual {v4}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 429
    invoke-virtual {v4}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_cd
    iput-object v4, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    .line 432
    invoke-virtual {v4}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedThermalConditionId:I

    .line 433
    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController;->updateAmbientLuxThreshold()Z
    :try_end_d8
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d8} :catch_da

    .line 434
    const/4 v0, 0x1

    return v0

    .line 438
    .end local v3  # "id":I
    .end local v4  # "condition":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;
    :catch_da
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_e0

    .line 440
    .end local v0  # "e":Ljava/lang/NumberFormatException;
    :cond_df
    nop

    .line 441
    :goto_e0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addThermalListener(Lcom/android/server/display/ThermalBrightnessController$ThermalListener;)V
    .registers 3
    .param p1, "listener"  # Lcom/android/server/display/ThermalBrightnessController$ThermalListener;

    .line 938
    if-eqz p1, :cond_7

    .line 939
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mThermalListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    :cond_7
    return-void
.end method

.method public asSameTemperature(FFZ)Z
    .registers 8
    .param p1, "a"  # F
    .param p2, "b"  # F
    .param p3, "isNtcTemperatureGap"  # Z

    .line 731
    cmpl-float v0, p1, p2

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 732
    return v1

    .line 733
    :cond_6
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 734
    return v1

    .line 735
    :cond_13
    float-to-int v0, p1

    float-to-int v2, p2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_1d

    .line 736
    return v1

    .line 738
    :cond_1d
    const/4 v0, 0x0

    if-eqz p3, :cond_2f

    .line 739
    sub-float v2, p1, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v0

    :goto_2e
    return v1

    .line 741
    :cond_2f
    sub-float v2, p1, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/server/display/ThermalBrightnessController;->mTemperatureGap:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3c

    goto :goto_3d

    :cond_3c
    move v1, v0

    :goto_3d
    return v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 833
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_DPC:Z

    sput-boolean v0, Lcom/android/server/display/ThermalBrightnessController;->DEBUG:Z

    .line 834
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 835
    const-string v0, "Thermal Brightness Controller: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    invoke-static {v1}, Lcom/android/server/display/ThermalBrightnessController;->toStringCondition(Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDefaultCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mDefaultCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    invoke-static {v1}, Lcom/android/server/display/ThermalBrightnessController;->toStringCondition(Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOverrideCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mOverrideCondition:Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    invoke-static {v1}, Lcom/android/server/display/ThermalBrightnessController;->toStringCondition(Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentAppliedThermalConditionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedThermalConditionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentActualThermalConditionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentActualThermalConditionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentAppliedTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentThermalMaxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentMaxThermalBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMiniTemperatureThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mMiniTemperatureThresholds:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNeedOverrideCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mNeedOverrideCondition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemperatureLevelEmergency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mTemperatureLevelEmergency:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemperatureLevelCritical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mTemperatureLevelCritical:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThermalSafetyBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mThermalSafetyBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemperatureGap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mTemperatureGap:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSensorNtcFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mSensorNtcFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThermalBrightnessControlNtcAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mThermalBrightnessControlNtcAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentNtcTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentNtcTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentAppliedNtcTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedNtcTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 856
    const-string v0, "  Thermal brightness config:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLoadedFileFrom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mLoadedFileFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mThermalConditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_205
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    .line 859
    .local v1, "conditionItem":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  identifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  description: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v1}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getLuxTemperaturePair()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/display/ThermalBrightnessController;->formatDumpTemperatureBrightnessPair(Ljava/util/List;Ljava/io/PrintWriter;)V

    .line 862
    .end local v1  # "conditionItem":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;
    goto :goto_205

    .line 865
    :cond_24d
    return-void
.end method

.method public onAmbientLuxChange(F)V
    .registers 4
    .param p1, "ambientLux"  # F

    .line 776
    iput p1, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAmbientLux:F

    .line 777
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedLuxPair:Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;

    invoke-static {v0}, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->-$$Nest$mgetMinAmbientLuxThreshold(Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;)F

    move-result v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mCurrentAppliedLuxPair:Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;

    .line 778
    invoke-static {v0}, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->-$$Nest$mgetMaxAmbientLuxThreshold(Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_24

    .line 779
    :cond_16
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateAmbientLuxRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 780
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateAmbientLuxRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 782
    :cond_24
    return-void
.end method

.method public onCloudUpdated(JLjava/util/Map;)V
    .registers 8
    .param p1, "summary"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 483
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-wide/16 v0, 0x2

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 484
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mLoadFileRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 485
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mLoadFileRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 487
    :cond_17
    const-wide/16 v0, 0x4

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2c

    .line 488
    const-string v0, "TemperatureGap"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mTemperatureGap:F

    .line 490
    :cond_2c
    return-void
.end method

.method protected onConditionEvent(I)V
    .registers 4
    .param p1, "event"  # I

    .line 292
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_12

    .line 293
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateConditionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 294
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateConditionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    :cond_12
    return-void
.end method

.method protected onNtcTemperatureEvent(I)V
    .registers 4
    .param p1, "event"  # I

    .line 312
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mThermalBrightnessControlNtcAvailable:Z

    if-eqz v0, :cond_16

    .line 313
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateNtcTemperatureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 314
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateNtcTemperatureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    :cond_16
    return-void
.end method

.method protected onSafetyBrightnessEvent(I)V
    .registers 4
    .param p1, "event"  # I

    .line 302
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_12

    .line 303
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateSafetyBrightnessRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 304
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateSafetyBrightnessRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    :cond_12
    return-void
.end method

.method protected onTemperatureEvent(I)V
    .registers 4
    .param p1, "event"  # I

    .line 281
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_12

    .line 282
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateTemperatureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateTemperatureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    :cond_12
    return-void
.end method

.method public setDolbyEnabled(Z)V
    .registers 4
    .param p1, "enable"  # Z

    .line 755
    iget-boolean v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mIsDolbyEnabled:Z

    if-eq v0, p1, :cond_14

    .line 756
    iput-boolean p1, p0, Lcom/android/server/display/ThermalBrightnessController;->mIsDolbyEnabled:Z

    .line 757
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateOverrideConditionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 758
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateOverrideConditionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 760
    :cond_14
    return-void
.end method

.method public setHdrLayerPresent(ZZ)V
    .registers 5
    .param p1, "isHdrLayerPresent"  # Z
    .param p2, "isCameraHdr"  # Z

    .line 746
    iget-boolean v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mIsHdrLayerPresent:Z

    if-ne v0, p1, :cond_8

    iget-boolean v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mIsCameraHdrPresent:Z

    if-eq v0, p2, :cond_1a

    .line 747
    :cond_8
    iput-boolean p1, p0, Lcom/android/server/display/ThermalBrightnessController;->mIsHdrLayerPresent:Z

    .line 748
    iput-boolean p2, p0, Lcom/android/server/display/ThermalBrightnessController;->mIsCameraHdrPresent:Z

    .line 749
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateOverrideConditionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 750
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController;->mUpdateOverrideConditionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 752
    :cond_1a
    return-void
.end method
