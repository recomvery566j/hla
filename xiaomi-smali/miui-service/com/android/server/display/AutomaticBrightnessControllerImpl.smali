# classes.dex

.class public Lcom/android/server/display/AutomaticBrightnessControllerImpl;
.super Lcom/android/server/display/AutomaticBrightnessControllerStub;
.source "AutomaticBrightnessControllerImpl.java"

# interfaces
.implements Lcom/android/server/display/TorchModeHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessControllerImpl$AutomaticBrightnessControllerImplHandler;,
        Lcom/android/server/display/AutomaticBrightnessControllerImpl$CloudControllerListener;
    }
.end annotation


# static fields
.field private static final CAMERA_ROLE_IDS:[Ljava/lang/String;

.field public static final DEFAULT_FOV_AMPLIFY_VALUE:F = 1.0f

.field private static final DO_NOT_REDUCE_BRIGHTNESS_INTERVAL:I = 0xea60

.field private static final IS_FOLDABLE_DEVICE:Z

.field private static final IS_FOLDABLE_OR_FLIP_DEVICE:Z

.field private static final IS_ULTRASONIC_PROXIMITY:Z

.field private static final MSG_RESET_FAST_RATE:I = 0x2

.field private static final MSG_UPDATE_OUT_PACKET_TIME:I = 0x1

.field protected static final MSG_UPDATE_STEP_STATUS:I = 0x3

.field private static final NON_UI_FAST_UPDATE_BRIGHTNESS_TIME:J = 0x7d0L

.field private static final NON_UI_NOT_IN_POCKET:F = 0.0f

.field private static final PARALLEL_VIRTUAL_ROLE_ID:I = 0x66

.field private static final RESET_SHORT_LUX_DELTA:I = 0x14

.field private static final RESET_SWITCH_LONG_TIME:I = 0x1b7740

.field private static final RESET_SWITCH_SHORT_TIME:I = 0x57e40

.field private static final SENSOR_TYPE_ASSIST:I = 0x1fa266f

.field public static final SENSOR_TYPE_ASSIST_LIGHT_FOV:I = 0x1fa2a90

.field public static final SENSOR_TYPE_LIGHT_FOV:I = 0x1fa2a8f

.field private static final SENSOR_TYPE_NON_UI:I = 0x1fa2653

.field private static final SUPPORT_REFACTOR_BRIGHTNESS_POLICY:Z

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessControllerImpl"

.field private static final TORCH_CLOSE_DELAY:I = 0x708

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final VIRTUAL_BACK_ROLE_ID:I = 0x64

.field private static final VIRTUAL_FRONT_ROLE_ID:I = 0x65


# instance fields
.field private mAllowFastRateRatio:F

.field private mAllowFastRateTime:I

.field private mAllowFastRateValue:F

.field private mAmbientLux:F

.field private mAppliedDimming:Z

.field private mApplyingFastRates:[Z

.field private mAssistFovAmplifyFactor:F

.field private mAssistLightFovSensor:Landroid/hardware/Sensor;

.field private mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field private mAutomaticBrightnessEnable:Z

.field private mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private mContext:Landroid/content/Context;

.field private mDaemonSensorPolicy:Lcom/android/server/display/DaemonSensorPolicy;

.field private mDaemonSensorPolicyEnabled:Z

.field private mDebug:Z

.field private mDisableResetShortTermModel:Z

.field private mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field private mDisplayId:I

.field private mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

.field private mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

.field private mEnterGameTime:J

.field private mExitFacingCameraIds:[Ljava/lang/String;

.field private mFovAmplifyFactor:F

.field private mFrontFlashAvailable:Z

.field private mHandler:Landroid/os/Handler;

.field private mHysteresisLevelsImpl:Lcom/android/server/display/HysteresisLevelsImpl;

.field private mIsBackCamera:Z

.field private mIsGameSceneEnable:Z

.field private mIsTorchOpen:Z

.field private mLastBrightness:F

.field private mLastCloseScreenLux:F

.field private mLastCloseTime:J

.field private mLightFovSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mMaxResetBrightness:F

.field private mMaxResetShortTermModelSpline:Landroid/util/Spline;

.field private mMaxResetShortTermModelSplineCbmBrightening:Landroid/util/Spline;

.field private mMinResetBrightness:F

.field private mMinResetShortTermModelSpline:Landroid/util/Spline;

.field private mMinResetShortTermModelSplineCbmBrightening:Landroid/util/Spline;

.field private mNeedUseFastRateBrightness:[F

.field private mNonUiSensor:Landroid/hardware/Sensor;

.field private mNonUiSensorData:F

.field private mNonUiSensorEnabled:Z

.field private mNotInPocketTime:J

.field private mPendingUseFastRateDueToFirstAutoBrightness:Z

.field private mPreScreenOff:Z

.field private mProximityPositive:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private mProximityThreshold:F

.field private mResetFastRateTime:I

.field private mResetPolicyEnable:Z

.field private mSceneDetector:Lcom/android/server/display/SceneDetector;

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSkipTransitionLuxValue:F

.field private mSlowChange:Z

.field private mStartBrightness:F

.field private mStartSdrBrightness:F

.field private mState:I

.field private mStepModeDarkenDebounceConfig:J

.field private mSupportAssistFovSensor:Z

.field private mSupportFovSensor:Z

.field private mTorchCloseTime:J

.field private mTorchStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchAreaHelper:Lcom/android/server/display/TouchCoverProtectionHelper;

.field private mTransientProximityEnabled:Z

.field private mUseAonFlareEnabled:Z

.field private mUseAssistSensorEnabled:Z

.field private mUseFastRateForVirtualSensor:Z

.field private mUseNonUiEnabled:Z

.field private mUseProxAndTouchEnabled:Z

.field private mUseProximityEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$tg4N3iQckjDnMSuzoxwhOEbwQfU(Lcom/android/server/display/AutomaticBrightnessControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->lambda$stop$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmApplyingFastRates(Lcom/android/server/display/AutomaticBrightnessControllerImpl;)[Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mApplyingFastRates:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedUseFastRateBrightness(Lcom/android/server/display/AutomaticBrightnessControllerImpl;)[F
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNeedUseFastRateBrightness:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStepModeDarkenDebounceConfig(Lcom/android/server/display/AutomaticBrightnessControllerImpl;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mStepModeDarkenDebounceConfig:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmNotInPocketTime(Lcom/android/server/display/AutomaticBrightnessControllerImpl;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNotInPocketTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$monNonUiSensorChanged(Lcom/android/server/display/AutomaticBrightnessControllerImpl;Landroid/hardware/SensorEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->onNonUiSensorChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monProximitySensorChanged(Lcom/android/server/display/AutomaticBrightnessControllerImpl;Landroid/hardware/SensorEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->onProximitySensorChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStepModeDarkenDebounceTime(Lcom/android/server/display/AutomaticBrightnessControllerImpl;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->updateStepModeDarkenDebounceTime(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 60
    const-string v0, "com.xiaomi.cameraid.role.cameraIds"

    const-string v1, "com.xiaomi.cameraid.role.cameraId"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->CAMERA_ROLE_IDS:[Ljava/lang/String;

    .line 73
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFoldDeviceInside()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->IS_FOLDABLE_DEVICE:Z

    .line 74
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->IS_FOLDABLE_DEVICE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 75
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    move v0, v1

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    :goto_1f
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->IS_FOLDABLE_OR_FLIP_DEVICE:Z

    .line 76
    nop

    .line 77
    const-string/jumbo v0, "ro.vendor.audio.us.proximity"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->IS_ULTRASONIC_PROXIMITY:Z

    .line 78
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    const v1, 0x111022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->SUPPORT_REFACTOR_BRIGHTNESS_POLICY:Z

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 43
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessControllerStub;-><init>()V

    .line 118
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mStartBrightness:F

    .line 119
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mStartSdrBrightness:F

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mTorchStateMap:Ljava/util/Map;

    .line 125
    const/4 v0, 0x2

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mApplyingFastRates:[Z

    .line 133
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNotInPocketTime:J

    .line 138
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNeedUseFastRateBrightness:[F

    .line 170
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mFovAmplifyFactor:F

    .line 171
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAssistFovAmplifyFactor:F

    .line 471
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl$1;-><init>(Lcom/android/server/display/AutomaticBrightnessControllerImpl;)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method private convertToBrightness(F)F
    .registers 3
    .param p1, "nit"  # F

    .line 673
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_b

    .line 674
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToBrightness(F)F

    move-result v0

    return v0

    .line 676
    :cond_b
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0
.end method

.method private convertToNit(F)F
    .registers 3
    .param p1, "brightness"  # F

    .line 666
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_b

    .line 667
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result v0

    return v0

    .line 669
    :cond_b
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0
.end method

.method private getRoleIds(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)[Ljava/lang/Integer;
    .registers 5
    .param p1, "cameraCharacteristics"  # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "cameraRoleId"  # Ljava/lang/String;

    .line 404
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Ljava/lang/Integer;

    invoke-direct {v0, p2, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 405
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d} :catch_e

    .line 404
    return-object v0

    .line 406
    :catch_e
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private synthetic lambda$stop$0()V
    .registers 2

    .line 735
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mTouchAreaHelper:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-virtual {v0}, Lcom/android/server/display/TouchCoverProtectionHelper;->stop()V

    .line 736
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->setRotationListenerEnable(Z)V

    .line 737
    return-void
.end method

.method private loadConfiguration()V
    .registers 4

    .line 241
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 242
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x11050013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseProximityEnabled:Z

    .line 243
    const v1, 0x110b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAllowFastRateTime:I

    .line 245
    const v1, 0x110b0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mResetFastRateTime:I

    .line 247
    const v1, 0x1107001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAllowFastRateRatio:F

    .line 248
    const v1, 0x1107001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAllowFastRateValue:F

    .line 249
    const v1, 0x11050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseNonUiEnabled:Z

    .line 250
    const v1, 0x11050010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseAonFlareEnabled:Z

    .line 252
    const v1, 0x110500a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseProxAndTouchEnabled:Z

    .line 255
    const v1, 0x11050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseAssistSensorEnabled:Z

    .line 257
    const v1, 0x11070034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSkipTransitionLuxValue:F

    .line 259
    nop

    .line 260
    const-string/jumbo v1, "use_daemon_sensor_policy"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDaemonSensorPolicyEnabled:Z

    .line 261
    const v1, 0x11050089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseFastRateForVirtualSensor:Z

    .line 263
    const v1, 0x1103003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mExitFacingCameraIds:[Ljava/lang/String;

    .line 265
    const v1, 0x110b0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mStepModeDarkenDebounceConfig:J

    .line 267
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->createResetShortTermModelSpline()V

    .line 268
    return-void
.end method

.method private loadSensorConfig()V
    .registers 5

    .line 227
    const-string v0, "1.0"

    :try_start_2
    const-string/jumbo v1, "ro.miui.support.light.fov"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v1, v3

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSupportFovSensor:Z

    .line 229
    const-string/jumbo v1, "ro.miui.support.back.fov"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1c

    move v2, v3

    :cond_1c
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSupportAssistFovSensor:Z

    .line 231
    const-string/jumbo v1, "ro.miui.sensor.fov.factor"

    .line 232
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mFovAmplifyFactor:F

    .line 233
    const-string/jumbo v1, "ro.miui.sensor.fov_back.factor"

    .line 234
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAssistFovAmplifyFactor:F
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_40} :catch_41

    .line 237
    goto :goto_5a

    .line 235
    :catch_41
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumberFormatException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessControllerImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v0  # "e":Ljava/lang/NumberFormatException;
    :goto_5a
    return-void
.end method

.method private onNonUiSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 500
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNonUiSensorEnabled:Z

    if-eqz v0, :cond_24

    .line 501
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNonUiSensorData:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_24

    .line 502
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNonUiSensorData:F

    .line 503
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_24

    .line 504
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 508
    :cond_24
    return-void
.end method

.method private onProximitySensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 493
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_17

    .line 494
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 495
    .local v0, "distance":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_15

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mProximityThreshold:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mProximityPositive:Z

    .line 497
    .end local v0  # "distance":F
    :cond_17
    return-void
.end method

.method private setNonUiSensorEnabled(Z)V
    .registers 7
    .param p1, "enable"  # Z

    .line 456
    const-string v0, "AutomaticBrightnessControllerImpl"

    const/4 v1, 0x1

    if-eqz p1, :cond_20

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNonUiSensorEnabled:Z

    if-nez v2, :cond_20

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNonUiSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_20

    .line 457
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNonUiSensorEnabled:Z

    .line 458
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNonUiSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 460
    const-string/jumbo v1, "setNonUiSensorEnabled enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 461
    :cond_20
    if-nez p1, :cond_44

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNonUiSensorEnabled:Z

    if-eqz v2, :cond_44

    .line 462
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNonUiSensorEnabled:Z

    .line 463
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNotInPocketTime:J

    .line 464
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNonUiSensorData:F

    .line 465
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 466
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNonUiSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 467
    const-string/jumbo v1, "setNonUiSensorEnabled disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_44
    :goto_44
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .registers 6
    .param p1, "enable"  # Z

    .line 435
    const-string v0, "AutomaticBrightnessControllerImpl"

    if-eqz p1, :cond_1c

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mProximitySensorEnabled:Z

    if-nez v1, :cond_1c

    .line 438
    const-string/jumbo v1, "setProximitySensorEnabled enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mProximitySensorEnabled:Z

    .line 440
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_34

    .line 442
    :cond_1c
    if-nez p1, :cond_34

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mProximitySensorEnabled:Z

    if-eqz v1, :cond_34

    .line 445
    const-string/jumbo v1, "setProximitySensorEnabled disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mProximitySensorEnabled:Z

    .line 447
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 449
    :cond_34
    :goto_34
    return-void
.end method

.method private setRotationListenerEnable(Z)V
    .registers 3
    .param p1, "enable"  # Z

    .line 899
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_9

    .line 900
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->registerRotationWatcher(Z)V

    .line 902
    :cond_9
    return-void
.end method

.method private setSensorEnabled(Z)V
    .registers 3
    .param p1, "enable"  # Z

    .line 423
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseProximityEnabled:Z

    if-eqz v0, :cond_7

    .line 424
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->setProximitySensorEnabled(Z)V

    .line 426
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseAssistSensorEnabled:Z

    if-eqz v0, :cond_10

    .line 427
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DualSensorPolicy;->setSensorEnabled(Z)V

    .line 429
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseNonUiEnabled:Z

    if-eqz v0, :cond_17

    .line 430
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->setNonUiSensorEnabled(Z)V

    .line 432
    :cond_17
    return-void
.end method

.method private setUpDisplayDeviceConfig(Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 2
    .param p1, "deviceConfig"  # Lcom/android/server/display/DisplayDeviceConfig;

    .line 286
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 287
    return-void
.end method

.method private setUpLogicalDisplay(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3
    .param p1, "logicalDisplay"  # Lcom/android/server/display/LogicalDisplay;

    .line 290
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mTouchAreaHelper:Lcom/android/server/display/TouchCoverProtectionHelper;

    if-eqz v0, :cond_9

    .line 291
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mTouchAreaHelper:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/display/TouchCoverProtectionHelper;->setUpLogicalDisplay(Lcom/android/server/display/LogicalDisplay;)V

    .line 293
    :cond_9
    return-void
.end method

.method private updateCbmState(Z)V
    .registers 3
    .param p1, "autoBrightnessEnabled"  # Z

    .line 972
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_9

    .line 973
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateCbmState(Z)V

    .line 975
    :cond_9
    return-void
.end method

.method private updateStepModeDarkenDebounceTime(J)V
    .registers 4
    .param p1, "time"  # J

    .line 909
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateStepModeDarkenDebounceTime(J)V

    .line 910
    return-void
.end method

.method private updateTorchState(Z)V
    .registers 4
    .param p1, "enabled"  # Z

    .line 412
    if-nez p1, :cond_c

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mIsTorchOpen:Z

    if-eqz v0, :cond_c

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mTorchCloseTime:J

    .line 416
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mTorchStateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 417
    .local v1, "torchState":Z
    or-int/2addr p1, v1

    .line 418
    .end local v1  # "torchState":Z
    goto :goto_16

    .line 419
    :cond_28
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mIsTorchOpen:Z

    .line 420
    return-void
.end method


# virtual methods
.method protected checkAssistSensorValid()Z
    .registers 5

    .line 551
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mIsBackCamera:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseAssistSensorEnabled:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mIsTorchOpen:Z

    if-nez v0, :cond_1a

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mTorchCloseTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x708

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    goto :goto_27

    .line 556
    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDebug:Z

    if-eqz v0, :cond_25

    .line 557
    const-string v0, "AutomaticBrightnessControllerImpl"

    const-string v1, "drop assist light data due to within 1s of turning off the torch."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_25
    const/4 v0, 0x0

    return v0

    .line 554
    :cond_27
    :goto_27
    const/4 v0, 0x1

    return v0
.end method

.method protected checkFastRateStatus()Z
    .registers 7

    .line 607
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 608
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLightSensorEnableTime:J

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAllowFastRateTime:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1e

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseNonUiEnabled:Z

    if-eqz v2, :cond_1c

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNotInPocketTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v2, 0x1

    :goto_1f
    return v2
.end method

.method public checkUserThresholdAndReset()V
    .registers 6

    .line 1032
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getUserLux()F

    move-result v0

    .line 1033
    .local v0, "userLux":F
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->getUserNits()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->convertToBrightness(F)F

    move-result v1

    .line 1034
    .local v1, "userBrightness":F
    const/high16 v2, -0x40800000  # -1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_a2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_a2

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMinResetShortTermModelSpline:Landroid/util/Spline;

    if-eqz v2, :cond_a2

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMaxResetShortTermModelSpline:Landroid/util/Spline;

    if-eqz v2, :cond_a2

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-nez v2, :cond_2a

    goto/16 :goto_a2

    .line 1039
    :cond_2a
    invoke-virtual {p0, v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->updateResetBrightness(F)V

    .line 1041
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMaxResetBrightness:F

    cmpl-float v2, v1, v2

    const-string v3, "checkUserThresholdAndReset : "

    const-string v4, "AutomaticBrightnessControllerImpl"

    if-lez v2, :cond_5f

    .line 1042
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lux mMaxResetBrightness reset to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMaxResetBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMaxResetBrightness:F

    invoke-virtual {v2, v0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->setBrightnessByUserForResetPolicy(FF)V

    goto :goto_8c

    .line 1045
    :cond_5f
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMinResetBrightness:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_8c

    .line 1046
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lux mMinResetBrightness reset to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMinResetBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMinResetBrightness:F

    invoke-virtual {v2, v0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->setBrightnessByUserForResetPolicy(FF)V

    .line 1051
    :cond_8c
    :goto_8c
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v2, :cond_a1

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMaxResetBrightness:F

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_9c

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMinResetBrightness:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_a1

    .line 1053
    :cond_9c
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->notifyResetShortTermModelPolicy()V

    .line 1055
    :cond_a1
    return-void

    .line 1036
    :cond_a2
    :goto_a2
    return-void
.end method

.method public configure(IFI)V
    .registers 9
    .param p1, "state"  # I
    .param p2, "screenAutoBrightness"  # F
    .param p3, "displayPolicy"  # I

    .line 297
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    if-eq p3, v1, :cond_8

    move v2, v1

    goto :goto_9

    :cond_8
    move v2, v0

    .line 299
    .local v2, "enable":Z
    :goto_9
    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->setSensorEnabled(Z)V

    .line 301
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDaemonSensorPolicyEnabled:Z

    if-eqz v3, :cond_15

    .line 302
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDaemonSensorPolicy:Lcom/android/server/display/DaemonSensorPolicy;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/display/DaemonSensorPolicy;->notifyRegisterDaemonLightSensor(II)V

    .line 304
    :cond_15
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSceneDetector:Lcom/android/server/display/SceneDetector;

    invoke-virtual {v3, v2}, Lcom/android/server/display/SceneDetector;->configure(Z)V

    .line 305
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mTouchAreaHelper:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-virtual {v3, v2}, Lcom/android/server/display/TouchCoverProtectionHelper;->configure(Z)V

    .line 306
    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->setRotationListenerEnable(Z)V

    .line 308
    const/4 v3, 0x2

    if-nez v2, :cond_3e

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAutomaticBrightnessEnable:Z

    if-eqz v4, :cond_3e

    .line 309
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAutomaticBrightnessEnable:Z

    .line 310
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mApplyingFastRates:[Z

    aput-boolean v0, v4, v0

    .line 311
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mApplyingFastRates:[Z

    aput-boolean v0, v4, v1

    .line 312
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mPendingUseFastRateDueToFirstAutoBrightness:Z

    .line 313
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->updateCbmState(Z)V

    goto :goto_50

    .line 315
    :cond_3e
    if-eqz v2, :cond_50

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAutomaticBrightnessEnable:Z

    if-nez v0, :cond_50

    .line 316
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAutomaticBrightnessEnable:Z

    .line 317
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mState:I

    .line 319
    .local v0, "oldState":I
    if-eq v0, v3, :cond_4e

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseFastRateForVirtualSensor:Z

    if-eqz v3, :cond_50

    .line 320
    :cond_4e
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mPendingUseFastRateDueToFirstAutoBrightness:Z

    .line 323
    .end local v0  # "oldState":I
    :cond_50
    :goto_50
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mState:I

    .line 324
    return-void
.end method

.method public createResetShortTermModelSpline()V
    .registers 7

    .line 1059
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1103010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1058
    invoke-static {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    .line 1062
    .local v0, "ambientBrighteningLux":[F
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110300f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1061
    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    .line 1065
    .local v1, "ambientLuxMaxNitPoints":[F
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110300f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1064
    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    .line 1067
    .local v2, "ambientLuxMinNitPoints":[F
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110500a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 1069
    .local v3, "resetPolicy":Z
    if-eqz v3, :cond_42

    invoke-static {}, Lcom/android/server/display/Flags;->autobrightnessResetPolicy()Z

    move-result v4

    if-eqz v4, :cond_42

    const/4 v4, 0x1

    goto :goto_43

    :cond_42
    const/4 v4, 0x0

    :goto_43
    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mResetPolicyEnable:Z

    .line 1071
    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMaxResetShortTermModelSpline:Landroid/util/Spline;

    .line 1073
    invoke-static {v0, v2}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMinResetShortTermModelSpline:Landroid/util/Spline;

    .line 1077
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110300f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1076
    invoke-static {v4}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    .line 1080
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110300f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1079
    invoke-static {v4}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    .line 1083
    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMaxResetShortTermModelSplineCbmBrightening:Landroid/util/Spline;

    .line 1085
    invoke-static {v0, v2}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMinResetShortTermModelSplineCbmBrightening:Landroid/util/Spline;

    .line 1087
    return-void
.end method

.method public dropAmbientLuxIfNeeded()Z
    .registers 4

    .line 512
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mTouchAreaHelper:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-virtual {v0}, Lcom/android/server/display/TouchCoverProtectionHelper;->isTouchCoverProtectionActive()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "AutomaticBrightnessControllerImpl"

    if-eqz v0, :cond_11

    .line 513
    const-string v0, "drop the ambient lux due to touch events."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return v1

    .line 515
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseProximityEnabled:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mProximityPositive:Z

    if-eqz v0, :cond_1f

    .line 516
    const-string v0, "drop the ambient lux due to proximity events."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v1

    .line 519
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public dropDecreaseLuxIfNeeded()Z
    .registers 7

    .line 528
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSceneDetector:Lcom/android/server/display/SceneDetector;

    invoke-virtual {v0}, Lcom/android/server/display/SceneDetector;->useProximityInGameEnabled()Z

    move-result v0

    if-nez v0, :cond_34

    .line 529
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 530
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseProxAndTouchEnabled:Z

    if-nez v2, :cond_14

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseProximityEnabled:Z

    if-nez v2, :cond_34

    :cond_14
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mIsGameSceneEnable:Z

    if-eqz v2, :cond_34

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mEnterGameTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mTouchAreaHelper:Lcom/android/server/display/TouchCoverProtectionHelper;

    .line 532
    invoke-virtual {v2}, Lcom/android/server/display/TouchCoverProtectionHelper;->isGameSceneWithinTouchTime()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 533
    :cond_2b
    const-string v2, "AutomaticBrightnessControllerImpl"

    const-string v3, "drop the ambient lux due to game scene enable."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v2, 0x1

    return v2

    .line 537
    .end local v0  # "now":J
    :cond_34
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseProximityEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseProximityEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightFovSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLightFovSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseNonUiEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseNonUiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseAonFlareEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseAonFlareEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsGameSceneEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mIsGameSceneEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mResetPolicyEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mResetPolicyEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseProxAndTouchEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseProxAndTouchEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mTouchAreaHelper:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/display/TouchCoverProtectionHelper;->dump(Ljava/io/PrintWriter;)V

    .line 689
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDaemonSensorPolicy:Lcom/android/server/display/DaemonSensorPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DaemonSensorPolicy;->dump(Ljava/io/PrintWriter;)V

    .line 690
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->supportDualSensorPolicy()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 691
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DualSensorPolicy;->dump(Ljava/io/PrintWriter;)V

    .line 693
    :cond_bd
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSceneDetector:Lcom/android/server/display/SceneDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/display/SceneDetector;->dump(Ljava/io/PrintWriter;)V

    .line 694
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mHysteresisLevelsImpl:Lcom/android/server/display/HysteresisLevelsImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevelsImpl;->dump(Ljava/io/PrintWriter;)V

    .line 695
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_ABC:Z

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDebug:Z

    .line 696
    return-void
.end method

.method public fillInLuxFromDaemonSensor()Landroid/util/SparseArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 703
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl$2;-><init>(Lcom/android/server/display/AutomaticBrightnessControllerImpl;)V

    .line 710
    .local v0, "daemonSensorArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDaemonSensorPolicyEnabled:Z

    if-nez v1, :cond_a

    .line 711
    return-object v0

    .line 714
    :cond_a
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDaemonSensorPolicy:Lcom/android/server/display/DaemonSensorPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/DaemonSensorPolicy;->getMainLightSensorLux()F

    move-result v1

    .line 715
    .local v1, "mainLux":F
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDaemonSensorPolicy:Lcom/android/server/display/DaemonSensorPolicy;

    invoke-virtual {v2}, Lcom/android/server/display/DaemonSensorPolicy;->getAssistLightSensorLux()F

    move-result v2

    .line 717
    .local v2, "assistLux":F
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseAssistSensorEnabled:Z

    if-eqz v3, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->checkAssistSensorValid()Z

    move-result v3

    if-eqz v3, :cond_2e

    cmpl-float v3, v2, v1

    if-lez v3, :cond_2e

    .line 718
    sget v3, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->HANDLE_ASSIST_LUX_EVENT:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_37

    .line 720
    :cond_2e
    sget v3, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->HANDLE_MAIN_LUX_EVENT:I

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 723
    :goto_37
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDebug:Z

    if-eqz v3, :cond_5d

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillInLuxFromDaemonSensor: mainLux: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", assistLux: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutomaticBrightnessControllerImpl"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_5d
    return-object v0
.end method

.method public getAmbientLux(IFFZ)F
    .registers 6
    .param p1, "event"  # I
    .param p2, "preLux"  # F
    .param p3, "updateLux"  # F
    .param p4, "needUpdateLux"  # Z

    .line 762
    if-eqz p4, :cond_4

    .line 763
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAmbientLux:F

    .line 765
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/display/DualSensorPolicy;->getAmbientLux(FFZ)F

    move-result v0

    return v0
.end method

.method protected getAssistFastAmbientLux()F
    .registers 2

    .line 895
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/DualSensorPolicy;->getAssistFastAmbientLux()F

    move-result v0

    return v0
.end method

.method public getCurrentAmbientLux()F
    .registers 2

    .line 790
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_b

    .line 791
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v0

    return v0

    .line 793
    :cond_b
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAmbientLux:F

    return v0
.end method

.method public getCustomBrightness(FLjava/lang/String;IFFZ)F
    .registers 15
    .param p1, "lux"  # F
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "category"  # I
    .param p4, "oldAutoBrightness"  # F
    .param p5, "newAutoBrightness"  # F
    .param p6, "isManuallySet"  # Z

    .line 916
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_11

    .line 917
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1  # "lux":F
    .end local p2  # "packageName":Ljava/lang/String;
    .end local p3  # "category":I
    .end local p4  # "oldAutoBrightness":F
    .end local p5  # "newAutoBrightness":F
    .end local p6  # "isManuallySet":Z
    .local v2, "lux":F
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "category":I
    .local v5, "oldAutoBrightness":F
    .local v6, "newAutoBrightness":F
    .local v7, "isManuallySet":Z
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/display/DisplayPowerControllerImpl;->getCustomBrightness(FLjava/lang/String;IFFZ)F

    move-result p5

    .end local v6  # "newAutoBrightness":F
    .restart local p5  # "newAutoBrightness":F
    goto :goto_17

    .line 916
    .end local v2  # "lux":F
    .end local v3  # "packageName":Ljava/lang/String;
    .end local v4  # "category":I
    .end local v5  # "oldAutoBrightness":F
    .end local v7  # "isManuallySet":Z
    .restart local p1  # "lux":F
    .restart local p2  # "packageName":Ljava/lang/String;
    .restart local p3  # "category":I
    .restart local p4  # "oldAutoBrightness":F
    .restart local p6  # "isManuallySet":Z
    :cond_11
    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 920
    .end local p1  # "lux":F
    .end local p2  # "packageName":Ljava/lang/String;
    .end local p3  # "category":I
    .end local p4  # "oldAutoBrightness":F
    .end local p6  # "isManuallySet":Z
    .restart local v2  # "lux":F
    .restart local v3  # "packageName":Ljava/lang/String;
    .restart local v4  # "category":I
    .restart local v5  # "oldAutoBrightness":F
    .restart local v7  # "isManuallySet":Z
    :goto_17
    return p5
.end method

.method public getDisplayID()I
    .registers 2

    .line 944
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayId:I

    return v0
.end method

.method public getHysteresisLevelsImpl()Lcom/android/server/display/HysteresisLevelsStub;
    .registers 2

    .line 955
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mHysteresisLevelsImpl:Lcom/android/server/display/HysteresisLevelsImpl;

    return-object v0
.end method

.method protected getIsTorchOpen()Z
    .registers 2

    .line 741
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mIsTorchOpen:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mIsBackCamera:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public getMainAmbientLux()F
    .registers 2

    .line 797
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/DualSensorPolicy;->getMainAmbientLux()F

    move-result v0

    return v0
.end method

.method protected getMainFastAmbientLux()F
    .registers 2

    .line 891
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/DualSensorPolicy;->getMainFastAmbientLux()F

    move-result v0

    return v0
.end method

.method public getMaxResetShortTermModelSpline()Landroid/util/Spline;
    .registers 2

    .line 1145
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMaxResetShortTermModelSpline:Landroid/util/Spline;

    return-object v0
.end method

.method public getMinResetShortTermModelSpline()Landroid/util/Spline;
    .registers 2

    .line 1141
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMinResetShortTermModelSpline:Landroid/util/Spline;

    return-object v0
.end method

.method public getRefactorBrightness(FFZ)F
    .registers 6
    .param p1, "lux"  # F
    .param p2, "logicalNit"  # F
    .param p3, "isNeedUpdateCurve"  # Z

    .line 930
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_c

    .line 931
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->getRefactorBrightness(FFZZ)F

    move-result v0

    return v0

    .line 933
    :cond_c
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0
.end method

.method public getRefactorBrightness2(F)F
    .registers 3
    .param p1, "maxBrightness"  # F

    .line 937
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_b

    .line 938
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToBrightness(F)F

    move-result v0

    return v0

    .line 940
    :cond_b
    const/high16 v0, -0x40800000  # -1.0f

    return v0
.end method

.method public initialize(Landroid/hardware/SensorManager;Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/Sensor;IIJJIILcom/android/server/display/HysteresisLevelsStub;Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 34
    .param p1, "sensorManager"  # Landroid/hardware/SensorManager;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "looper"  # Landroid/os/Looper;
    .param p4, "lightSensor"  # Landroid/hardware/Sensor;
    .param p5, "lightSensorWarmUpTime"  # I
    .param p6, "lightSensorRate"  # I
    .param p7, "brighteningLightDebounceConfig"  # J
    .param p9, "darkeningLightDebounceConfig"  # J
    .param p11, "ambientLightHorizonLong"  # I
    .param p12, "ambientLightHorizonShort"  # I
    .param p13, "hysteresisLevelsImpl"  # Lcom/android/server/display/HysteresisLevelsStub;
    .param p14, "listener"  # Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;
    .param p15, "controller"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 181
    move-object/from16 v2, p0

    move-object/from16 v1, p3

    move-object/from16 v8, p2

    iput-object v8, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mContext:Landroid/content/Context;

    .line 182
    move-object/from16 v5, p1

    iput-object v5, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 183
    move-object/from16 v9, p15

    iput-object v9, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 184
    invoke-direct {v2}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->loadConfiguration()V

    .line 186
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessControllerImpl$AutomaticBrightnessControllerImplHandler;

    invoke-direct {v0, v2, v1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl$AutomaticBrightnessControllerImplHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessControllerImpl;Landroid/os/Looper;)V

    iput-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mHandler:Landroid/os/Handler;

    .line 187
    invoke-direct {v2}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->loadSensorConfig()V

    .line 188
    new-instance v0, Lcom/android/server/display/DaemonSensorPolicy;

    iget-object v1, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mContext:Landroid/content/Context;

    iget v6, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mFovAmplifyFactor:F

    iget v7, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAssistFovAmplifyFactor:F

    move-object/from16 v3, p3

    move-object v4, v2

    move-object v2, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/display/DaemonSensorPolicy;-><init>(Landroid/content/Context;Landroid/hardware/SensorManager;Landroid/os/Looper;Lcom/android/server/display/AutomaticBrightnessControllerImpl;Landroid/hardware/Sensor;FF)V

    move-object v1, v3

    move-object v2, v4

    iput-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDaemonSensorPolicy:Lcom/android/server/display/DaemonSensorPolicy;

    .line 190
    new-instance v0, Lcom/android/server/display/TouchCoverProtectionHelper;

    iget-object v3, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1}, Lcom/android/server/display/TouchCoverProtectionHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mTouchAreaHelper:Lcom/android/server/display/TouchCoverProtectionHelper;

    .line 191
    new-instance v0, Lcom/android/server/display/DualSensorPolicy;

    iget-boolean v14, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSupportFovSensor:Z

    iget-boolean v15, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSupportAssistFovSensor:Z

    iget v3, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mFovAmplifyFactor:F

    iget v4, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAssistFovAmplifyFactor:F

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    move/from16 v9, p11

    move/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object v13, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v2, p1

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-direct/range {v0 .. v17}, Lcom/android/server/display/DualSensorPolicy;-><init>(Landroid/os/Looper;Landroid/hardware/SensorManager;IIJJIILcom/android/server/display/HysteresisLevelsStub;Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;Lcom/android/server/display/AutomaticBrightnessControllerImpl;ZZFF)V

    move-object v2, v13

    iput-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

    .line 196
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->IS_ULTRASONIC_PROXIMITY:Z

    const/4 v8, 0x1

    if-nez v0, :cond_71

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->IS_FOLDABLE_DEVICE:Z

    if-nez v0, :cond_71

    iget-boolean v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseProximityEnabled:Z

    if-nez v0, :cond_71

    move v0, v8

    goto :goto_72

    :cond_71
    const/4 v0, 0x0

    :goto_72
    iput-boolean v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mTransientProximityEnabled:Z

    .line 197
    new-instance v0, Lcom/android/server/display/SceneDetector;

    iget-object v3, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mHandler:Landroid/os/Handler;

    iget-boolean v6, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseAonFlareEnabled:Z

    iget-boolean v7, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mTransientProximityEnabled:Z

    move-object/from16 v5, p1

    move-object/from16 v4, p2

    move-object/from16 v1, p14

    invoke-direct/range {v0 .. v7}, Lcom/android/server/display/SceneDetector;-><init>(Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;Lcom/android/server/display/AutomaticBrightnessControllerImpl;Landroid/os/Handler;Landroid/content/Context;Landroid/hardware/SensorManager;ZZ)V

    iput-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSceneDetector:Lcom/android/server/display/SceneDetector;

    .line 199
    iget-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

    iget-object v1, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSceneDetector:Lcom/android/server/display/SceneDetector;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DualSensorPolicy;->setSceneDetector(Lcom/android/server/display/SceneDetector;)V

    .line 200
    iget-boolean v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSupportFovSensor:Z

    if-eqz v0, :cond_9d

    .line 201
    iget-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2a8f

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLightFovSensor:Landroid/hardware/Sensor;

    .line 203
    :cond_9d
    iget-boolean v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSupportAssistFovSensor:Z

    if-eqz v0, :cond_ac

    .line 204
    iget-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2a90

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAssistLightFovSensor:Landroid/hardware/Sensor;

    .line 206
    :cond_ac
    move-object/from16 v0, p13

    check-cast v0, Lcom/android/server/display/HysteresisLevelsImpl;

    iput-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mHysteresisLevelsImpl:Lcom/android/server/display/HysteresisLevelsImpl;

    .line 207
    iget-boolean v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseProximityEnabled:Z

    if-eqz v0, :cond_d2

    .line 208
    iget-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mProximitySensor:Landroid/hardware/Sensor;

    .line 209
    iget-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_d2

    .line 210
    iget-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    const/high16 v1, 0x40a00000  # 5.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mProximityThreshold:F

    .line 215
    :cond_d2
    iget-boolean v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseNonUiEnabled:Z

    if-eqz v0, :cond_ed

    .line 216
    iget-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2653

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNonUiSensor:Landroid/hardware/Sensor;

    .line 217
    iget-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNonUiSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_ed

    .line 218
    iget-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNonUiSensor:Landroid/hardware/Sensor;

    .line 222
    :cond_ed
    iget-object v0, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/TorchModeHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/TorchModeHelper;

    move-result-object v0

    iget-object v1, v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/display/TorchModeHelper;->registerTorchCallback(Lcom/android/server/display/TorchModeHelper$Callback;Landroid/os/Handler;)V

    .line 223
    return-void
.end method

.method protected isAonFlareEnabled()Z
    .registers 2

    .line 745
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseAonFlareEnabled:Z

    return v0
.end method

.method public isDisableResetShortTermModel()Z
    .registers 3

    .line 884
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_a

    .line 885
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetShortTermModel(Z)V

    .line 887
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisableResetShortTermModel:Z

    return v0
.end method

.method public isFoldableOrFlipDevice()Z
    .registers 2

    .line 991
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->IS_FOLDABLE_OR_FLIP_DEVICE:Z

    return v0
.end method

.method public isGameSceneEnabled()Z
    .registers 2

    .line 452
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mIsGameSceneEnable:Z

    return v0
.end method

.method public isNeedResetShortTermModel(FJ)Z
    .registers 8
    .param p1, "lux"  # F
    .param p2, "openTime"  # J

    .line 1103
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLastCloseTime:J

    sub-long v0, p2, v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_27

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLastCloseScreenLux:F

    sub-float v0, p1, v0

    .line 1104
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41a00000  # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLastCloseTime:J

    sub-long v0, p2, v0

    const-wide/32 v2, 0x57e40

    cmp-long v0, v0, v2

    if-ltz v0, :cond_25

    goto :goto_27

    .line 1111
    :cond_25
    const/4 v0, 0x0

    return v0

    .line 1106
    :cond_27
    :goto_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isNeedResetShortTermModel : lux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastCloseScreenLux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLastCloseScreenLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", openTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastCloseTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLastCloseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const/4 v0, 0x1

    return v0
.end method

.method public isNeedSkipBrightnessChange()Z
    .registers 2

    .line 542
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSceneDetector:Lcom/android/server/display/SceneDetector;

    invoke-virtual {v0}, Lcom/android/server/display/SceneDetector;->isNeedSkipBrightnessChange()Z

    move-result v0

    return v0
.end method

.method public isRearScreenDevice()Z
    .registers 2

    .line 1149
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_b

    .line 1150
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isRearScreenDevice()Z

    move-result v0

    return v0

    .line 1152
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public needResetShortTermModelPolicy()Z
    .registers 4

    .line 1003
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mResetPolicyEnable:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 1004
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isResetShortTermModelPolicyDisable()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_36

    .line 1009
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mPreScreenOff:Z

    if-eqz v0, :cond_34

    .line 1010
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getCurrentAmbientLux()F

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->isNeedResetShortTermModel(FJ)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1011
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->SUPPORT_REFACTOR_BRIGHTNESS_POLICY:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_31

    .line 1012
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->shouldUseGoodCurve()V

    goto :goto_34

    .line 1014
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->checkUserThresholdAndReset()V

    .line 1018
    :cond_34
    :goto_34
    const/4 v0, 0x1

    return v0

    .line 1005
    :cond_36
    :goto_36
    const/4 v0, 0x0

    return v0
.end method

.method public notifyAonFlareEvents(IF)V
    .registers 4
    .param p1, "type"  # I
    .param p2, "preLux"  # F

    .line 978
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_9

    .line 979
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayPowerControllerImpl;->notifyAonFlareEvents(IF)V

    .line 981
    :cond_9
    return-void
.end method

.method protected notifyDisableResetShortTermModel(Z)V
    .registers 2
    .param p1, "enable"  # Z

    .line 876
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisableResetShortTermModel:Z

    .line 877
    return-void
.end method

.method public notifyUnregisterDaemonSensor()V
    .registers 3

    .line 842
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDaemonSensorPolicy:Lcom/android/server/display/DaemonSensorPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/DaemonSensorPolicy;->setDaemonLightSensorsEnabled(Z)V

    .line 843
    return-void
.end method

.method public notifyUpdateBrightness()V
    .registers 2

    .line 984
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_9

    .line 985
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->notifyUpdateBrightness()V

    .line 987
    :cond_9
    return-void
.end method

.method protected notifyUpdateForegroundApp()V
    .registers 2

    .line 959
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_9

    .line 960
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->updateForegroundAppWindowChanged()V

    .line 962
    :cond_9
    return-void
.end method

.method public onAmbientLuxChange(F)V
    .registers 3
    .param p1, "ambientLux"  # F

    .line 996
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_9

    .line 997
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->onAmbientLuxChange(F)V

    .line 999
    :cond_9
    return-void
.end method

.method public onTorchModeChanged(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Z)V
    .registers 12
    .param p1, "cameraCharacteristics"  # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "cameraId"  # Ljava/lang/String;
    .param p3, "enabled"  # Z

    .line 359
    const-string v0, "AutomaticBrightnessControllerImpl"

    if-eqz p1, :cond_85

    .line 361
    :try_start_4
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 362
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 363
    .local v1, "facing":Ljava/lang/Integer;
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_22

    .line 364
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 365
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mFrontFlashAvailable:Z

    .line 369
    :cond_22
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mFrontFlashAvailable:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mExitFacingCameraIds:[Ljava/lang/String;

    if-eqz v2, :cond_3f

    if-eqz p2, :cond_3f

    .line 372
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mExitFacingCameraIds:[Ljava/lang/String;

    array-length v4, v2

    move v5, v3

    :goto_31
    if-ge v5, v4, :cond_3f

    aget-object v6, v2, v5

    .line 373
    .local v6, "id":Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 374
    return-void

    .line 372
    .end local v6  # "id":Ljava/lang/String;
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 378
    :cond_3f
    const/4 v2, 0x0

    .line 379
    .local v2, "roleIds":[Ljava/lang/Integer;
    sget-object v4, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->CAMERA_ROLE_IDS:[Ljava/lang/String;

    array-length v5, v4

    :goto_43
    if-ge v3, v5, :cond_52

    aget-object v6, v4, v3

    .line 380
    .local v6, "cameraRoleId":Ljava/lang/String;
    invoke-direct {p0, p1, v6}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getRoleIds(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v7

    move-object v2, v7

    .line 381
    if-eqz v2, :cond_4f

    .line 382
    goto :goto_52

    .line 379
    .end local v6  # "cameraRoleId":Ljava/lang/String;
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 385
    :cond_52
    :goto_52
    if-eqz v2, :cond_7d

    .line 386
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 387
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    const/16 v4, 0x65

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 388
    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_7a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7a} :catch_7e

    if-eqz v4, :cond_7d

    .line 389
    :cond_7c
    return-void

    .line 394
    .end local v1  # "facing":Ljava/lang/Integer;
    .end local v2  # "roleIds":[Ljava/lang/Integer;
    .end local v3  # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_7d
    goto :goto_85

    .line 392
    :catch_7e
    move-exception v1

    .line 393
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "onTorchModeChanged: can\'t get camera characteristics key"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    .end local v1  # "e":Ljava/lang/IllegalArgumentException;
    :cond_85
    :goto_85
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mTorchStateMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-direct {p0, p3}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->updateTorchState(Z)V

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTorchModeChanged, mIsTorchOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mIsTorchOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .registers 7
    .param p1, "cameraId"  # Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mExitFacingCameraIds:[Ljava/lang/String;

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    .line 346
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mExitFacingCameraIds:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 347
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 348
    return-void

    .line 346
    .end local v3  # "id":Ljava/lang/String;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 352
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mIsTorchOpen:Z

    .line 353
    return-void
.end method

.method public resetDefaultSpline()V
    .registers 2

    .line 1023
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_9

    .line 1024
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetDefaultSpline()V

    .line 1026
    :cond_9
    return-void
.end method

.method public setAmbientLuxWhenInvalid(IF)V
    .registers 4
    .param p1, "event"  # I
    .param p2, "lux"  # F

    .line 847
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DualSensorPolicy;->setAmbientLuxWhenInvalid(IF)V

    .line 848
    return-void
.end method

.method public setScreenBrightnessByUser(FFLjava/lang/String;)V
    .registers 5
    .param p1, "lux"  # F
    .param p2, "brightness"  # F
    .param p3, "packageName"  # Ljava/lang/String;

    .line 949
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_9

    .line 950
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerControllerImpl;->setScreenBrightnessByUser(FFLjava/lang/String;)V

    .line 952
    :cond_9
    return-void
.end method

.method protected setUpAutoBrightness(Lcom/android/server/display/DisplayPowerControllerImpl;Lcom/android/server/display/BrightnessMappingStrategy;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/LogicalDisplay;)V
    .registers 7
    .param p1, "dpcImpl"  # Lcom/android/server/display/DisplayPowerControllerImpl;
    .param p2, "brightnessMapper"  # Lcom/android/server/display/BrightnessMappingStrategy;
    .param p3, "deviceConfig"  # Lcom/android/server/display/DisplayDeviceConfig;
    .param p4, "logicalDisplay"  # Lcom/android/server/display/LogicalDisplay;

    .line 273
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 274
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getDisplayID()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayId:I

    .line 275
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->isRearScreenDevice()Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 276
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/DualSensorPolicy;->updateAssistLightSensor()V

    .line 277
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDaemonSensorPolicy:Lcom/android/server/display/DaemonSensorPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/DaemonSensorPolicy;->updateLightSensor()V

    .line 278
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSceneDetector:Lcom/android/server/display/SceneDetector;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/display/SceneDetector;->setDisplayId(I)V

    .line 280
    :cond_26
    iput-object p2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 281
    invoke-direct {p0, p3}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->setUpDisplayDeviceConfig(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 282
    invoke-direct {p0, p4}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->setUpLogicalDisplay(Lcom/android/server/display/LogicalDisplay;)V

    .line 283
    return-void
.end method

.method public shouldSkipBrighteningTransition(JFFF)Z
    .registers 9
    .param p1, "sensorEnableTime"  # J
    .param p3, "currentLux"  # F
    .param p4, "ambientLux"  # F
    .param p5, "brighteningThreshold"  # F

    .line 585
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLightSensorEnableTime:J

    .line 586
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->checkFastRateStatus()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6a

    cmpl-float v0, p3, p5

    if-ltz v0, :cond_6a

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSkipTransitionLuxValue:F

    add-float/2addr v0, p4

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_6a

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAllowFastRateRatio:F

    mul-float/2addr v0, p4

    add-float/2addr v0, p4

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_6a

    .line 589
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->supportDualSensorPolicy()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 590
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/DualSensorPolicy;->updateBrightnessUsingMainLightSensor()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

    .line 591
    invoke-virtual {v0}, Lcom/android/server/display/DualSensorPolicy;->getAssistFastAmbientLux()F

    move-result v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_35

    .line 592
    return v1

    .line 594
    :cond_35
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

    invoke-virtual {v0, p3}, Lcom/android/server/display/DualSensorPolicy;->updateMainLuxStatus(F)V

    .line 596
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip brightening transition, currentLux:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ambientLux:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutomaticBrightnessControllerImpl"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseAonFlareEnabled:Z

    if-eqz v0, :cond_68

    .line 598
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSceneDetector:Lcom/android/server/display/SceneDetector;

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->HANDLE_MAIN_LUX_EVENT:I

    invoke-virtual {v0, v2, p3, v1}, Lcom/android/server/display/SceneDetector;->updateAmbientLux(IFZ)V

    .line 599
    return v1

    .line 601
    :cond_68
    const/4 v0, 0x1

    return v0

    .line 603
    :cond_6a
    return v1
.end method

.method protected shouldUseFastRate(FFI)Z
    .registers 11
    .param p1, "currBrightness"  # F
    .param p2, "tgtBrightness"  # F
    .param p3, "type"  # I

    .line 614
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLastBrightness:F

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->convertToNit(F)F

    move-result v0

    .line 615
    .local v0, "nit":F
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->convertToNit(F)F

    move-result v1

    .line 621
    .local v1, "currentNit":F
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mApplyingFastRates:[Z

    aget-boolean v2, v2, p3

    const-string v3, "AutomaticBrightnessControllerImpl"

    if-nez v2, :cond_62

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->checkFastRateStatus()Z

    move-result v2

    if-eqz v2, :cond_62

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAllowFastRateRatio:F

    mul-float/2addr v2, v1

    add-float/2addr v2, v1

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_62

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAllowFastRateValue:F

    add-float/2addr v2, v1

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_62

    .line 623
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mApplyingFastRates:[Z

    const/4 v4, 0x1

    aput-boolean v4, v2, p3

    .line 624
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNeedUseFastRateBrightness:[F

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLastBrightness:F

    aput v4, v2, p3

    .line 625
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 626
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mResetFastRateTime:I

    int-to-long v5, v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Use fast rate due to large change in brightness, mLastBrightness:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLastBrightness:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", currBrightness:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_62
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mApplyingFastRates:[Z

    aget-boolean v2, v2, p3

    if-eqz v2, :cond_c9

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLastBrightness:F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNeedUseFastRateBrightness:[F

    aget v4, v4, p3

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_84

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLastBrightness:F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNeedUseFastRateBrightness:[F

    aget v4, v4, p3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_c9

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNeedUseFastRateBrightness:[F

    aget v2, v2, p3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_c9

    .line 641
    :cond_84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldUseFastRate: mLastBrightness: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLastBrightness:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", tgtBrightness: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", currBrightness: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mNeedUseFastRateBrightness: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNeedUseFastRateBrightness:[F

    aget v4, v4, p3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mApplyingFastRates:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p3

    .line 645
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNeedUseFastRateBrightness:[F

    const/4 v3, 0x0

    aput v3, v2, p3

    .line 647
    :cond_c9
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mApplyingFastRates:[Z

    aget-boolean v2, v2, p3

    return v2
.end method

.method public showTouchCoverProtectionRect(Z)V
    .registers 3
    .param p1, "isShow"  # Z

    .line 750
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mTouchAreaHelper:Lcom/android/server/display/TouchCoverProtectionHelper;

    if-eqz v0, :cond_9

    .line 751
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mTouchAreaHelper:Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/display/TouchCoverProtectionHelper;->showTouchCoverProtectionRect(Z)V

    .line 753
    :cond_9
    return-void
.end method

.method public stop()V
    .registers 3

    .line 731
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->setSensorEnabled(Z)V

    .line 732
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDaemonSensorPolicy:Lcom/android/server/display/DaemonSensorPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/DaemonSensorPolicy;->stop()V

    .line 733
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/TorchModeHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/TorchModeHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/display/TorchModeHelper;->unregisterTorchCallback(Lcom/android/server/display/TorchModeHelper$Callback;)V

    .line 734
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/AutomaticBrightnessControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/AutomaticBrightnessControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 738
    return-void
.end method

.method public supportDualSensorPolicy()Z
    .registers 2

    .line 757
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mUseAssistSensorEnabled:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/DualSensorPolicy;->getAssistLightSensor()Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public supportRefactorBrightnessPolicy()Z
    .registers 2

    .line 925
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->SUPPORT_REFACTOR_BRIGHTNESS_POLICY:Z

    return v0
.end method

.method public switchLightSensor(Landroid/hardware/Sensor;)Landroid/hardware/Sensor;
    .registers 4
    .param p1, "sensor"  # Landroid/hardware/Sensor;

    .line 863
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSupportFovSensor:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLightFovSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayId:I

    if-nez v0, :cond_f

    .line 865
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLightFovSensor:Landroid/hardware/Sensor;

    return-object v0

    .line 867
    :cond_f
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isRearScreenDevice()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSupportAssistFovSensor:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAssistLightFovSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 870
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAssistLightFovSensor:Landroid/hardware/Sensor;

    return-object v0

    .line 872
    :cond_2b
    return-object p1
.end method

.method public update()V
    .registers 2

    .line 905
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->update()V

    .line 906
    return-void
.end method

.method public updateBrightnessUsingMainLightSensor()Z
    .registers 2

    .line 775
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/DualSensorPolicy;->updateBrightnessUsingMainLightSensor()Z

    move-result v0

    return v0
.end method

.method public updateCameraStatus(I)V
    .registers 4
    .param p1, "displayId"  # I

    .line 327
    if-nez p1, :cond_6

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mIsBackCamera:Z

    goto :goto_b

    .line 329
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 330
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mIsBackCamera:Z

    .line 332
    :cond_b
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCameraStatus mIsBackCamera:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mIsBackCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void
.end method

.method public updateCameraStatus(Z)V
    .registers 4
    .param p1, "isBackCamera"  # Z

    .line 336
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mIsBackCamera:Z

    if-eq v0, p1, :cond_1f

    .line 337
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mIsBackCamera:Z

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCameraStatus isBackCamera:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_1f
    return-void
.end method

.method public updateCustomSceneState(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;

    .line 966
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_9

    .line 967
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateCustomSceneState(Ljava/lang/String;)V

    .line 969
    :cond_9
    return-void
.end method

.method public updateDualSensorPolicy(JI)Z
    .registers 5
    .param p1, "time"  # J
    .param p3, "event"  # I

    .line 780
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/DualSensorPolicy;->updateDualSensorPolicy(JI)Z

    move-result v0

    return v0
.end method

.method public updateFastRateStatus(F)V
    .registers 6
    .param p1, "brightness"  # F

    .line 568
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLastBrightness:F

    .line 569
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mPendingUseFastRateDueToFirstAutoBrightness:Z

    if-eqz v0, :cond_2f

    .line 570
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mApplyingFastRates:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 571
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mApplyingFastRates:[Z

    aput-boolean v2, v0, v2

    .line 572
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNeedUseFastRateBrightness:[F

    aput p1, v0, v1

    .line 573
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mNeedUseFastRateBrightness:[F

    aput p1, v0, v2

    .line 574
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mPendingUseFastRateDueToFirstAutoBrightness:Z

    .line 576
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 577
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mResetFastRateTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 578
    const-string v0, "AutomaticBrightnessControllerImpl"

    const-string v1, "Use fast rate due to first auto brightness."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_2f
    return-void
.end method

.method protected updateGameSceneEnable(Z)V
    .registers 4
    .param p1, "enable"  # Z

    .line 546
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mIsGameSceneEnable:Z

    .line 547
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mIsGameSceneEnable:Z

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_d

    :cond_b
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mEnterGameTime:J

    :goto_d
    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mEnterGameTime:J

    .line 548
    return-void
.end method

.method public updateMainLightSensorAmbientThreshold(I)Z
    .registers 3
    .param p1, "event"  # I

    .line 770
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DualSensorPolicy;->updateMainLightSensorAmbientThreshold(I)Z

    move-result v0

    return v0
.end method

.method public updateResetBrightness(F)V
    .registers 5
    .param p1, "userLux"  # F

    .line 1118
    const-string v0, ""

    .line 1119
    .local v0, "description":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 1120
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/BrightnessConfiguration;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 1122
    :cond_14
    if-nez v0, :cond_18

    .line 1123
    const-string v0, ""

    .line 1125
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_6a

    :cond_1f
    goto :goto_2a

    :pswitch_20  #0x7d43d22f
    const-string v1, "custom_brightness_curve_brightening"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    goto :goto_2b

    :goto_2a
    const/4 v1, -0x1

    :goto_2b
    packed-switch v1, :pswitch_data_70

    .line 1134
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMinResetShortTermModelSpline:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->convertToBrightness(F)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMinResetBrightness:F

    .line 1135
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMaxResetShortTermModelSpline:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->convertToBrightness(F)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMaxResetBrightness:F

    goto :goto_68

    .line 1127
    :pswitch_47  #0x0
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMinResetShortTermModelSplineCbmBrightening:Landroid/util/Spline;

    .line 1128
    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 1127
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->convertToBrightness(F)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMinResetBrightness:F

    .line 1129
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMaxResetShortTermModelSplineCbmBrightening:Landroid/util/Spline;

    .line 1130
    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 1129
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->convertToBrightness(F)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mMaxResetBrightness:F

    .line 1131
    const-string v1, "AutomaticBrightnessControllerImpl"

    const-string/jumbo v2, "updateResetBrightness : The current curve is custom_brightness_curve_brightening"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    nop

    .line 1138
    :goto_68
    return-void

    nop

    :pswitch_data_6a
    .packed-switch 0x7d43d22f
        :pswitch_20  #7d43d22f
    .end packed-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_47  #00000000
    .end packed-switch
.end method

.method public updateScreenState(Z)V
    .registers 4
    .param p1, "isScreenOn"  # Z

    .line 1090
    if-eqz p1, :cond_6

    .line 1091
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mPreScreenOff:Z

    goto :goto_15

    .line 1093
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLastCloseTime:J

    .line 1094
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getCurrentAmbientLux()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mLastCloseScreenLux:F

    .line 1095
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mPreScreenOff:Z

    .line 1097
    :goto_15
    return-void
.end method

.method public updateSingleSensorPolicy(J)Z
    .registers 4
    .param p1, "time"  # J

    .line 785
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDualSensorPolicy:Lcom/android/server/display/DualSensorPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DualSensorPolicy;->updateSingleSensorPolicy(J)Z

    move-result v0

    return v0
.end method

.method public updateSlowChangeStatus(ZZFF)V
    .registers 7
    .param p1, "slowChange"  # Z
    .param p2, "appliedDimming"  # Z
    .param p3, "startBrightness"  # F
    .param p4, "startSdrBrightness"  # F

    .line 653
    xor-int/lit8 v0, p2, 0x1

    and-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSlowChange:Z

    .line 654
    iput-boolean p2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAppliedDimming:Z

    .line 655
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mStartBrightness:F

    .line 656
    iput p4, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mStartSdrBrightness:F

    .line 657
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mDebug:Z

    if-eqz v0, :cond_4e

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSlowChangeStatus: mSlowChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mSlowChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appliedDimming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mStartBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartSdrBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->mStartSdrBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_4e
    return-void
.end method
