# classes.dex

.class public Lcom/android/server/display/DisplayPowerControllerImpl;
.super Ljava/lang/Object;
.source "DisplayPowerControllerImpl.java"

# interfaces
.implements Lcom/android/server/display/DisplayPowerControllerStub;
.implements Lcom/android/server/display/SunlightController$Callback;
.implements Lcom/android/server/display/MiuiDisplayCloudController$Callback;
.implements Lcom/android/server/display/OutdoorModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;,
        Lcom/android/server/display/DisplayPowerControllerImpl$SettingsObserver;,
        Lcom/android/server/display/DisplayPowerControllerImpl$TaskStackListenerImpl;,
        Lcom/android/server/display/DisplayPowerControllerImpl$RotationWatcher;,
        Lcom/android/server/display/DisplayPowerControllerImpl$BatteryReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_BCL_LEVEL_CHANGED:Ljava/lang/String; = "com.miui.powerkeeper.TEMP_MODE_CHANGE"

.field private static final ACTION_CAMERA_STATUS:Ljava/lang/String; = "com.android.camera.action.camera_status"

.field private static final BCAS_LEVEL:Ljava/lang/String; = "bcas_level"

.field private static BCBC_ENABLE:Z = false

.field private static final BCBC_NORMAL_MAX_NIT:D = 500.0

.field private static final BCBC_STATE_DISABLE:I = 0x0

.field private static final BCBC_STATE_ENABLE:I = 0x1

.field private static final CAMERA_APP_NAME:Ljava/lang/String; = "com.android.camera"

.field private static final CAMERA_HDR_FLAG:I = 0x100000

.field private static final CLAMPED_HDR_BRIGHTNESS_FOR_OPR_OPTIMIZE:F

.field private static final CURRENT_GRAYSCALE_UPDATE_DISABLED:I = 0x0

.field private static final CURRENT_GRAYSCALE_UPDATE_ENABLED:I = 0x1

.field private static final DATA_D:[F

.field private static final DEFAULT_BCL_LEVEL:I = 0x9

.field private static final DEFAULT_CINE_LOOK_BOOST_RATIO:F = 1.0f

.field private static final DEFAULT_LONG_VALUE_FOR_IPA:J = -0x1L

.field private static final DISPLAY_DIM_STATE:I = 0x106

.field private static final DOZE_LIGHT_LOW:I = 0x1

.field public static final EPSILON:I = 0x3

.field private static final GRAYSCALE_UPDATE_TIME_INTERVAL:I = 0x190

.field private static final HBM_MINIMUM_LUX:F = 6000.0f

.field private static final IPA_CLIENT_ID:I = 0x9

.field private static final IPA_CLIENT_POSITION:I = 0xc

.field private static final IPA_NOTICE_GRAY_SCALE:I = 0x38

.field private static final IS_FOLDABLE_OR_FLIP_DEVICE:Z

.field private static final IS_RHYTHMIC_MODE_V2_SUPPORTED:Z

.field private static final KEY_CURTAIN_ANIM_ENABLED:Ljava/lang/String; = "curtain_anim_enabled"

.field private static final KEY_IS_DYNAMIC_LOCK_SCREEN_SHOW:Ljava/lang/String; = "is_dynamic_lockscreen_shown"

.field private static final KEY_OUTDOOR_MODE_AVAILABLE:Ljava/lang/String; = "config_outdoor_mode_available"

.field private static final KEY_SUNLIGHT_MODE_AVAILABLE:Ljava/lang/String; = "config_sunlight_mode_available"

.field private static final LOW_POWER_LEVEL_STATE:Ljava/lang/String; = "low_power_level_state"

.field private static final MAX_A:F

.field private static final MAX_CINE_LOOK_BOOST_RATIO:F = 10.0f

.field private static final MAX_DIFF:F

.field public static final MAX_GALLERY_HDR_FACTOR:F = 2.25f

.field private static final MAX_HBM_BRIGHTNESS_FOR_PEAK:F

.field private static final MAX_POWER_SAVE_MODE_NIT:F

.field public static final MIN_GALLERY_HDR_FACTOR:F = 1.0f

.field private static final MSG_UPDATE_CURRENT_GRAY_SCALE:I = 0x6

.field private static final MSG_UPDATE_CURRENT_GRAY_SCALE_FOR_IPA:I = 0xa

.field private static final MSG_UPDATE_DOLBY_STATE:I = 0x2

.field private static final MSG_UPDATE_FOREGROUND_APP:I = 0x4

.field private static final MSG_UPDATE_FOREGROUND_APP_SYNC:I = 0x3

.field private static final MSG_UPDATE_GRAY_SCALE:I = 0x1

.field private static final MSG_UPDATE_ROTATION:I = 0x7

.field private static final MSG_UPDATE_THERMAL_MAX_BRIGHTNESS:I = 0x5

.field private static final MSG_WAIT_SCREEN_OFF_ANIMATOR_COMPLETE:I = 0x8

.field private static final MSG_WAIT_SCREEN_OFF_ANIMATOR_TIMEOUT:I = 0x9

.field private static final PACKAGE_DIM_SYSTEM:Ljava/lang/String; = "system"

.field private static final PEAK_BRIGHTNESS_AMBIENT_LUX_THRESHOLD:I

.field private static final PEAK_BRIGHTNESS_GRAY_SCALE_THRESHOLD:I

.field private static final SUPPORT_BCBC_BY_AMBIENT_LUX:Z

.field private static final SUPPORT_IDLE_DIM:Z

.field private static final SUPPORT_MULTIPLE_AOD_BRIGHTNESS:Z

.field private static final SUPPORT_REFACTOR_BRIGHTNESS_POLICY:Z

.field private static final SYSTEM_RESOURCES:Landroid/content/res/Resources;

.field private static final TAG:Ljava/lang/String; = "DisplayPowerControllerImpl"

.field private static final TRANSACTION_NOTIFY_BRIGHTNESS:I = 0x7980

.field private static final TRANSACTION_NOTIFY_DIM:I = 0x7983

.field private static final V1:F

.field private static final V2:F

.field private static final WAIT_SCREEN_OFF_ANIMATOR_TIMEOUT:I = 0x3e8

.field private static final mBCBCLuxThreshold:[F

.field private static final mBCBCNitDecreaseThreshold:[F

.field private static final mLimitBrightnessByBatteryPluggedAndLevel:Z

.field private static final mSupportGalleryHdr:Z


# instance fields
.field private final SUPPORT_DOLBY_VERSION_BRIGHTEN:Z

.field private final SUPPORT_HDR_HBM_BRIGHTEN:Z

.field private final SUPPORT_MANUAL_BRIGHTNESS_BOOST:Z

.field private final SUPPORT_MANUAL_DIMMING:Z

.field private disable_idle_fps_value:I

.field private isCurrentCanSetFPS:Z

.field private isLastCanSetFPS:Z

.field private mAccumulatedGrayValue:J

.field private mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private mActualScreenOnBrightness:F

.field private mAnimatorDurationScale:F

.field private mAppliedBcbc:Z

.field private mAppliedDimming:Z

.field private mAppliedMaxOprBrightness:F

.field private mAppliedScreenBrightnessOverride:Z

.field private mAppliedSunlightMode:Z

.field private mAutoBrightnessEnable:Z

.field private mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

.field private mBCBCState:I

.field private mBasedBrightness:F

.field private mBasedSdrBrightness:F

.field private mBatteryReceiver:Lcom/android/server/display/DisplayPowerControllerImpl$BatteryReceiver;

.field private mBatteryThermalLevel:I

.field private mBatteryThermalLimitBrightness:F

.field private mBcbcBrightness:F

.field private mBclBrightnessLimitThreshold:[F

.field private mBclLowPowerMaxLevel:I

.field private mBootCompleted:Z

.field private mBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

.field private mBrightnessBoostRatio:F

.field private mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

.field private mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private mBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator$DualRampAnimator<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

.field private mCineLookBoostAvailable:Z

.field private mCineLookBoostEnable:Z

.field private mCineLookBoostRatio:F

.field private mCloudListener:Lcom/android/server/display/AutomaticBrightnessControllerImpl$CloudControllerListener;

.field private mColorInversionEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentBrightness:F

.field private mCurrentConditionId:I

.field private mCurrentDisplayPolicy:I

.field private mCurrentGalleryHdrBoostFactor:F

.field private mCurrentGrayScale:F

.field private mCurrentGrayScaleForHdr:F

.field private mCurrentGrayScaleForIPA:F

.field private mCurrentLuxForHdr:F

.field private mCurrentSdrBrightness:F

.field private mCurrentTemperature:F

.field private mCurtainAnimationAvailable:Z

.field private mCurtainAnimationEnabled:Z

.field private mDebug:Z

.field private mDesiredBrightness:F

.field private mDesiredBrightnessInt:I

.field private mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field private mDisplayFeatureManagerServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

.field private mDisplayId:I

.field private mDisplayMangerServiceImpl:Lcom/android/server/display/DisplayManagerServiceImpl;

.field private mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

.field private mDolbyStateEnable:Z

.field private mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;

.field private mDozeInLowBrightness:Z

.field private mDozeScreenBrightness:F

.field private mEnableGrayHist:Z

.field private mEnablePeakForIllegalGrayscale:Z

.field private mFolded:Z

.field private mForegroundAppPackageName:Ljava/lang/String;

.field private final mForegroundWindowListener:Lmiui/process/IForegroundWindowListener;

.field private mGalleryHdrThrottled:Z

.field private mGrayBrightnessFactor:F

.field private mGrayScale:F

.field private mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

.field private mHbmController:Lcom/android/server/display/HighBrightnessModeController;

.field private mHdrStateListener:Lcom/android/server/display/HighBrightnessModeController$HdrStateListener;

.field private mISurfaceFlinger:Landroid/os/IBinder;

.field private mInitialBCBCParameters:Z

.field private mIsDynamicLockScreenShowing:Z

.field private mIsGalleryHdrEnable:Z

.field private mIsOutdoorModeEnable:Z

.field private mIsScreenOn:Z

.field private mIsSunlightModeEnable:Z

.field private mIsSupportManualBoostApp:Z

.field private mK1:F

.field private mK2:F

.field private mK3:F

.field private mK4:F

.field private mLastAnimating:Z

.field private mLastDisplayState:I

.field private mLastFoldedState:Z

.field private mLastLogicalNitBeforeApplySunlight:F

.field private mLastManualBoostBrightness:F

.field private mLastMaxBrightness:F

.field private volatile mLastSetBrightness:F

.field private mLastSettingsBrightnessBeforeApplySunlight:F

.field private mLastSlowChange:Z

.field private mLastTemperature:F

.field private mLastTemporaryBrightness:F

.field private mLastTimeStamp:J

.field private mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

.field private mLowBatteryLevelBrightnessThreshold:[I

.field private mLowBatteryLevelThreshold:[I

.field private mLowBatteryLimitBrightness:F

.field private mLuxThresholdForHdr:[F

.field private mLuxToNitSplineForHdr:Landroid/util/Spline;

.field private mManualBrightnessBoostEnable:Z

.field private mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

.field private mMaxManualBoostBrightness:F

.field private mMaxOutdoorNormalBrightness:F

.field private mMaxPowerSaveModeBrightness:F

.field protected mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

.field private mNitThresholdForHdr:[F

.field private mOprAmbientLuxThreshold:I

.field private mOprBrightnessControlAvailable:Z

.field private mOprGrayscaleThreshold:[I

.field private mOprGrayscaleThresholdForHdr:[I

.field private mOprHdrBrightnessControlAvailable:Z

.field private mOprMaxNitThreshold:I

.field private mOprNitThreshold:[I

.field private mOprNitThresholdForHdr:[I

.field private mOrientation:I

.field private mOutdoorModeAvailable:Z

.field private mOutdoorModeController:Lcom/android/server/display/OutdoorModeController;

.field private mOutdoorModeStateChangedListener:Lcom/android/server/display/DisplayPowerControllerStub$OutdoorModeStateChangedListener;

.field private mPendingForegroundAppPackageName:Ljava/lang/String;

.field private mPendingResetGrayscaleStateForOpr:Z

.field private mPendingShowCurtainAnimation:Z

.field private mPendingUpdateBrightness:Z

.field private mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDisplayPolicy:I

.field private mRampRateController:Lcom/android/server/display/RampRateController;

.field private mRealtimeArrayD:[F

.field private mRealtimeMaxA:F

.field private mRealtimeMaxDiff:F

.field private mRefactorNitController:Lcom/android/server/display/RefactorNitController;

.field private mRotationListenerEnabled:Z

.field private mRotationWatcher:Lcom/android/server/display/DisplayPowerControllerImpl$RotationWatcher;

.field private mSchedBoostManagerInternal:Lcom/miui/server/rtboost/SchedBoostManagerInternal;

.field private mScreenBrightnessRangeMaximum:F

.field private mScreenBrightnessRangeMinimum:F

.field private mScreenGrayscaleState:Z

.field private mSdrBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

.field private mSettingsObserver:Lcom/android/server/display/DisplayPowerControllerImpl$SettingsObserver;

.field private mShouldDimming:Z

.field private mStopWaitingScreenOffAnimator:Z

.field private mSunlightController:Lcom/android/server/display/SunlightController;

.field private mSunlightModeActive:Z

.field private mSunlightModeAvailable:Z

.field private mSunlightStateListener:Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;

.field private mSupportCustomBrightness:Z

.field private mSupportIndividualBrightness:Z

.field private mTargetBrightness:F

.field private mTargetSdrBrightness:F

.field private mTaskStackListener:Lcom/android/server/display/DisplayPowerControllerImpl$TaskStackListenerImpl;

.field private mThermalBrightnessCallback:Lcom/android/server/display/ThermalBrightnessController$Callback;

.field private mThermalBrightnessControlAvailable:Z

.field private mThermalBrightnessController:Lcom/android/server/display/ThermalBrightnessController;

.field private mThermalMaxBrightness:F

.field private mThermalObserver:Lcom/android/server/display/ThermalObserver;

.field private mUpdateBrightnessAnimInfoEnable:Z

.field private volatile mUpdateBrightnessSetting:Z

.field private mUseAutoBrightness:Z

.field private mWaitingScreenOffAnimator:Z

.field private mWms:Lcom/android/server/wm/WindowManagerService;

.field private sFlingOptimizeFeatureEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$1COHu8ZZ4bng9wEQC83psqExY3Y(Lcom/android/server/display/DisplayPowerControllerImpl;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->lambda$init$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$43xaMmzavEr7A54jNXytNTnx5YM(Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->lambda$stop$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$BfoHpsi6vUrheAxc_ckY2tNtgYk(Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->lambda$resetDefaultSpline$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$MMuV7nGviOy50y9RH2E6V9hFq8M(Lcom/android/server/display/DisplayPowerControllerImpl;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayPowerControllerImpl;->lambda$getRefactorBrightness$4(FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$PoPPYgRf92OTp5abeYLN8JGlDPA(Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->lambda$init$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$RjLJNCl97M9PYxlpdpxYkSI9tVI(Lcom/android/server/display/DisplayPowerControllerImpl;IFZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerControllerImpl;->lambda$startDetailThermalUsageStatsOnThermalChanged$3(IFZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivityTaskManager(Lcom/android/server/display/DisplayPowerControllerImpl;)Landroid/app/IActivityTaskManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoBrightnessEnable(Lcom/android/server/display/DisplayPowerControllerImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutoBrightnessEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutomaticBrightnessControllerImpl(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/AutomaticBrightnessControllerImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCbmController(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayPowerController(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/DisplayPowerController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmForegroundAppPackageName(Lcom/android/server/display/DisplayPowerControllerImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mForegroundAppPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/android/server/display/DisplayPowerControllerImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRampRateController(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/RampRateController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThermalBrightnessController(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/ThermalBrightnessController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalBrightnessController:Lcom/android/server/display/ThermalBrightnessController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmOrientation(Lcom/android/server/display/DisplayPowerControllerImpl;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOrientation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingForegroundAppPackageName(Lcom/android/server/display/DisplayPowerControllerImpl;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPendingForegroundAppPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStopWaitingScreenOffAnimator(Lcom/android/server/display/DisplayPowerControllerImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mStopWaitingScreenOffAnimator:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyUpdateForegroundApp(Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->notifyUpdateForegroundApp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetBCBCState(Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetBCBCState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetScreenGrayscaleState(Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetScreenGrayscaleState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCurrentGrayScale(Lcom/android/server/display/DisplayPowerControllerImpl;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->setCurrentGrayScale(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCurrentGrayScaleForIPA(Lcom/android/server/display/DisplayPowerControllerImpl;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->setCurrentGrayScaleForIPA(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetGrayScale(Lcom/android/server/display/DisplayPowerControllerImpl;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->setGrayScale(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAnimatorDurationScale(Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateAnimatorDurationScale()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAutoBrightnessMode(Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateAutoBrightnessMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBatteryBrightness(Lcom/android/server/display/DisplayPowerControllerImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateBatteryBrightness(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBatteryThermalBrightness(Lcom/android/server/display/DisplayPowerControllerImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateBatteryThermalBrightness(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBrightnessByBatteryLevelAndPlugged(Lcom/android/server/display/DisplayPowerControllerImpl;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateBrightnessByBatteryLevelAndPlugged(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateColorInversionEnabled(Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateColorInversionEnabled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCurtainAnimationEnabled(Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateCurtainAnimationEnabled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDolbyBrightnessIfNeeded(Lcom/android/server/display/DisplayPowerControllerImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateDolbyBrightnessIfNeeded(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateForegroundApp(Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateForegroundApp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateForegroundAppSync(Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateForegroundAppSync()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateThermalBrightness(Lcom/android/server/display/DisplayPowerControllerImpl;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateThermalBrightness(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmLimitBrightnessByBatteryPluggedAndLevel()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLimitBrightnessByBatteryPluggedAndLevel:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 94
    nop

    .line 95
    const-string/jumbo v0, "ro.vendor.bcbc.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->BCBC_ENABLE:Z

    .line 97
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFoldDeviceInside()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 98
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1a

    :cond_18
    move v0, v1

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    :goto_1b
    sput-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->IS_FOLDABLE_OR_FLIP_DEVICE:Z

    .line 101
    nop

    .line 102
    const-string/jumbo v0, "ro.vendor.aod.brightness.cust"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_MULTIPLE_AOD_BRIGHTNESS:Z

    .line 212
    const/4 v0, 0x2

    new-array v2, v0, [F

    fill-array-data v2, :array_ee

    sput-object v2, Lcom/android/server/display/DisplayPowerControllerImpl;->mBCBCLuxThreshold:[F

    .line 214
    new-array v0, v0, [F

    fill-array-data v0, :array_f6

    sput-object v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBCBCNitDecreaseThreshold:[F

    .line 216
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    .line 219
    sget-object v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    .line 220
    const v2, 0x11030032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 219
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    sput-object v0, Lcom/android/server/display/DisplayPowerControllerImpl;->DATA_D:[F

    .line 223
    sget-object v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    .line 224
    const v2, 0x11070025

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    sput v0, Lcom/android/server/display/DisplayPowerControllerImpl;->V1:F

    .line 225
    sget-object v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    .line 226
    const v2, 0x11070024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    sput v0, Lcom/android/server/display/DisplayPowerControllerImpl;->V2:F

    .line 229
    sget-object v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    .line 230
    const v2, 0x11070020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    sput v0, Lcom/android/server/display/DisplayPowerControllerImpl;->MAX_DIFF:F

    .line 233
    sget-object v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    .line 234
    const v2, 0x11070022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    sput v0, Lcom/android/server/display/DisplayPowerControllerImpl;->MAX_A:F

    .line 237
    sget-object v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    .line 238
    const v2, 0x11070030

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    sput v0, Lcom/android/server/display/DisplayPowerControllerImpl;->MAX_POWER_SAVE_MODE_NIT:F

    .line 241
    sget-object v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    const v2, 0x110b001a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/DisplayPowerControllerImpl;->PEAK_BRIGHTNESS_GRAY_SCALE_THRESHOLD:I

    .line 243
    sget-object v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    const v2, 0x110b0009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/DisplayPowerControllerImpl;->PEAK_BRIGHTNESS_AMBIENT_LUX_THRESHOLD:I

    .line 246
    sget-object v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    const v2, 0x1107002e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    sput v0, Lcom/android/server/display/DisplayPowerControllerImpl;->MAX_HBM_BRIGHTNESS_FOR_PEAK:F

    .line 248
    sget-object v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    const v2, 0x11070100

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    sput v0, Lcom/android/server/display/DisplayPowerControllerImpl;->CLAMPED_HDR_BRIGHTNESS_FOR_OPR_OPTIMIZE:F

    .line 268
    nop

    .line 269
    const-string/jumbo v0, "support_bcbc_by_ambient_lux"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_BCBC_BY_AMBIENT_LUX:Z

    .line 293
    nop

    .line 294
    const-string/jumbo v0, "is_rhythmic_mode_v2_supported"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->IS_RHYTHMIC_MODE_V2_SUPPORTED:Z

    .line 323
    nop

    .line 324
    const-string/jumbo v0, "support_idle_dim"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_IDLE_DIM:Z

    .line 342
    nop

    .line 343
    const-string/jumbo v0, "support_gallery_hdr"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSupportGalleryHdr:Z

    .line 470
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 471
    const v2, 0x111022a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_REFACTOR_BRIGHTNESS_POLICY:Z

    .line 483
    nop

    .line 484
    const-string/jumbo v0, "support_limit_brightness_by_battery_plugged_and_level"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLimitBrightnessByBatteryPluggedAndLevel:Z

    .line 483
    return-void

    :array_ee
    .array-data 4
        0x41200000  # 10.0f
        0x42c80000  # 100.0f
    .end array-data

    :array_f6
    .array-data 4
        0x40a00000  # 5.0f
        0x41400000  # 12.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 8

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAnimatorDurationScale:F

    .line 204
    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeScreenBrightness:F

    .line 264
    sget-object v2, Lcom/android/server/display/DisplayPowerControllerImpl;->DATA_D:[F

    sget-object v3, Lcom/android/server/display/DisplayPowerControllerImpl;->DATA_D:[F

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    .line 265
    sget v2, Lcom/android/server/display/DisplayPowerControllerImpl;->MAX_A:F

    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeMaxA:F

    .line 266
    sget v2, Lcom/android/server/display/DisplayPowerControllerImpl;->MAX_DIFF:F

    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeMaxDiff:F

    .line 271
    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayBrightnessFactor:F

    .line 272
    const/high16 v2, 0x7fc00000  # Float.NaN

    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayScale:F

    .line 274
    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBcbcBrightness:F

    .line 282
    nop

    .line 283
    const-string/jumbo v3, "support_dolby_version_brighten"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_DOLBY_VERSION_BRIGHTEN:Z

    .line 284
    nop

    .line 285
    const-string/jumbo v3, "support_hdr_hbm_brighten"

    invoke-static {v3, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_HDR_HBM_BRIGHTEN:Z

    .line 287
    nop

    .line 288
    const-string/jumbo v3, "support_manual_dimming"

    invoke-static {v3, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_MANUAL_DIMMING:Z

    .line 290
    nop

    .line 291
    const-string/jumbo v3, "support_manual_brightness_boost"

    invoke-static {v3, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_MANUAL_BRIGHTNESS_BOOST:Z

    .line 311
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastDisplayState:I

    .line 329
    iput v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastMaxBrightness:F

    .line 330
    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScale:F

    .line 335
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mEnableGrayHist:Z

    .line 336
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastTimeStamp:J

    .line 337
    iput-wide v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAccumulatedGrayValue:J

    .line 338
    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScaleForIPA:F

    .line 347
    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGalleryHdrBoostFactor:F

    .line 353
    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalMaxBrightness:F

    .line 354
    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastTemporaryBrightness:F

    .line 357
    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBasedSdrBrightness:F

    .line 358
    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBasedBrightness:F

    .line 362
    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLimitBrightness:F

    .line 366
    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBatteryThermalLimitBrightness:F

    .line 368
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBatteryThermalLevel:I

    .line 387
    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedMaxOprBrightness:F

    .line 430
    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMaxPowerSaveModeBrightness:F

    .line 434
    new-instance v0, Lcom/android/server/display/DisplayPowerControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerControllerImpl$1;-><init>(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mForegroundWindowListener:Lmiui/process/IForegroundWindowListener;

    .line 447
    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCineLookBoostRatio:F

    .line 449
    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessBoostRatio:F

    .line 467
    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScaleForHdr:F

    .line 468
    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentLuxForHdr:F

    .line 477
    nop

    .line 478
    const-string/jumbo v0, "ro.vendor.disable_idle_fps.threshold"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->disable_idle_fps_value:I

    .line 479
    nop

    .line 480
    const-string/jumbo v0, "support_fling_optimize"

    invoke-static {v0, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->sFlingOptimizeFeatureEnabled:Z

    .line 481
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->isLastCanSetFPS:Z

    .line 482
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->isCurrentCanSetFPS:Z

    .line 486
    iput v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastSetBrightness:F

    .line 1345
    new-instance v0, Lcom/android/server/display/DisplayPowerControllerImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerControllerImpl$3;-><init>(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalBrightnessCallback:Lcom/android/server/display/ThermalBrightnessController$Callback;

    .line 2643
    new-instance v0, Lcom/android/server/display/DisplayPowerControllerImpl$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerControllerImpl$5;-><init>(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCloudListener:Lcom/android/server/display/AutomaticBrightnessControllerImpl$CloudControllerListener;

    return-void
.end method

.method private adjustBrightnessByBattery(FLcom/android/server/display/brightness/BrightnessReason;)F
    .registers 6
    .param p1, "brightness"  # F
    .param p2, "reason"  # Lcom/android/server/display/brightness/BrightnessReason;

    .line 2709
    move v0, p1

    .line 2710
    .local v0, "newBrightness":F
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLimitBrightness:F

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBatteryThermalLimitBrightness:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->min(FFF)F

    move-result v0

    .line 2712
    cmpl-float v1, v0, p1

    if-eqz v1, :cond_12

    .line 2713
    const/16 v1, 0x200

    invoke-virtual {p2, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 2715
    :cond_12
    return v0
.end method

.method private adjustBrightnessByBcbc(FLcom/android/server/display/brightness/BrightnessReason;)F
    .registers 7
    .param p1, "brightness"  # F
    .param p2, "reason"  # Lcom/android/server/display/brightness/BrightnessReason;

    .line 1221
    move v0, p1

    .line 1222
    .local v0, "newBrightness":F
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayScale:F

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->isGrayScaleLegal(F)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1223
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayScale:F

    invoke-direct {p0, p1, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->calculateBrightnessBCBC(FF)F

    move-result v0

    .line 1224
    cmpl-float v1, p1, v0

    const-string v2, "DisplayPowerControllerImpl"

    if-eqz v1, :cond_29

    .line 1225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedBcbc:Z

    .line 1226
    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBcbcBrightness:F

    .line 1227
    const/16 v1, 0x40

    invoke-virtual {p2, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 1228
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    if-eqz v1, :cond_44

    .line 1229
    const-string v1, "Apply bcbc brightness."

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 1231
    :cond_29
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedBcbc:Z

    if-eqz v1, :cond_44

    cmpl-float v1, p1, v0

    if-nez v1, :cond_44

    .line 1232
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedBcbc:Z

    .line 1233
    const/high16 v3, 0x7fc00000  # Float.NaN

    iput v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBcbcBrightness:F

    .line 1234
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetBcbcRateModifier(Z)V

    .line 1235
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    if-eqz v1, :cond_44

    .line 1236
    const-string v1, "Exit bcbc brightness."

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_44
    :goto_44
    return v0
.end method

.method private adjustBrightnessByBrightnessBoost(FLcom/android/server/display/brightness/BrightnessReason;)F
    .registers 6
    .param p1, "newBrightness"  # F
    .param p2, "reason"  # Lcom/android/server/display/brightness/BrightnessReason;

    .line 1159
    move v0, p1

    .line 1160
    .local v0, "currentBrightness":F
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessBoostRatio:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_18

    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessBoostRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_18

    .line 1161
    const/16 v1, 0x2000

    invoke-virtual {p2, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 1162
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessBoostRatio:F

    mul-float/2addr v0, v1

    .line 1164
    :cond_18
    return v0
.end method

.method private adjustBrightnessByLux(FF)F
    .registers 10
    .param p1, "preBrightness"  # F
    .param p2, "currentBrightness"  # F

    .line 1507
    move v0, p2

    .line 1508
    .local v0, "outBrightness":F
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v1, :cond_9f

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-nez v1, :cond_b

    goto/16 :goto_9f

    .line 1511
    :cond_b
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result v1

    .line 1512
    .local v1, "preNit":F
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v2, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result v2

    .line 1513
    .local v2, "currentNit":F
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getCurrentAmbientLux()F

    move-result v3

    .line 1515
    .local v3, "currentLux":F
    sget-object v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mBCBCLuxThreshold:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    cmpg-float v4, v3, v4

    if-gez v4, :cond_41

    cmpl-float v4, v1, v2

    if-lez v4, :cond_41

    sub-float v4, v1, v2

    sget-object v6, Lcom/android/server/display/DisplayPowerControllerImpl;->mBCBCNitDecreaseThreshold:[F

    aget v6, v6, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_41

    .line 1517
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    sget-object v6, Lcom/android/server/display/DisplayPowerControllerImpl;->mBCBCNitDecreaseThreshold:[F

    aget v5, v6, v5

    sub-float v5, v1, v5

    invoke-virtual {v4, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToBrightness(F)F

    move-result v0

    goto :goto_64

    .line 1518
    :cond_41
    sget-object v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mBCBCLuxThreshold:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    cmpg-float v4, v3, v4

    if-gez v4, :cond_64

    cmpl-float v4, v1, v2

    if-lez v4, :cond_64

    sub-float v4, v1, v2

    sget-object v6, Lcom/android/server/display/DisplayPowerControllerImpl;->mBCBCNitDecreaseThreshold:[F

    aget v6, v6, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_64

    .line 1520
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    sget-object v6, Lcom/android/server/display/DisplayPowerControllerImpl;->mBCBCNitDecreaseThreshold:[F

    aget v5, v6, v5

    sub-float v5, v1, v5

    invoke-virtual {v4, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToBrightness(F)F

    move-result v0

    .line 1523
    :cond_64
    :goto_64
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    if-eqz v4, :cond_9e

    .line 1524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustBrightnessByLux: currentLux: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", preNit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentNit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentBrightness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DisplayPowerControllerImpl"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_9e
    return v0

    .line 1509
    .end local v1  # "preNit":F
    .end local v2  # "currentNit":F
    .end local v3  # "currentLux":F
    :cond_9f
    :goto_9f
    return v0
.end method

.method private adjustBrightnessByOpr(FLcom/android/server/display/brightness/BrightnessReason;)F
    .registers 10
    .param p1, "brightness"  # F
    .param p2, "reason"  # Lcom/android/server/display/brightness/BrightnessReason;

    .line 2337
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    const-string v1, "DisplayPowerControllerImpl"

    if-nez v0, :cond_c

    .line 2338
    const-string v0, "adjustBrightnessByOpr: no valid display device config!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    return p1

    .line 2343
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    .line 2344
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getCurrentAmbientLux()F

    move-result v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprAmbientLuxThreshold:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 2345
    .local v0, "shouldResetScreenGrayscaleState":Z
    :goto_20
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPendingResetGrayscaleStateForOpr:Z

    if-eq v2, v0, :cond_29

    .line 2346
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPendingResetGrayscaleStateForOpr:Z

    .line 2347
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetScreenGrayscaleState()V

    .line 2351
    :cond_29
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprMaxNitThreshold:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v2

    .line 2352
    .local v2, "maxOprBrightness":F
    const/high16 v3, -0x40800000  # -1.0f

    cmpl-float v3, v2, v3

    if-nez v3, :cond_39

    .line 2353
    return p1

    .line 2355
    :cond_39
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPendingResetGrayscaleStateForOpr:Z

    const/16 v4, 0x800

    if-nez v3, :cond_50

    cmpl-float v3, p1, v2

    if-lez v3, :cond_50

    .line 2356
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    if-eqz v3, :cond_4c

    .line 2357
    const-string v3, "adjustBrightnessByOpr: constrain brightnesswhen current lux is below opr ambient lux threshold."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    :cond_4c
    invoke-virtual {p2, v4}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 2361
    return v2

    .line 2365
    :cond_50
    iget v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScale:F

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerControllerImpl;->getRestrictedOprBrightness(F)F

    move-result v3

    .line 2366
    .local v3, "restrictedOprBrightness":F
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 2367
    return p1

    .line 2369
    :cond_5d
    iget v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedMaxOprBrightness:F

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_65

    .line 2370
    iput v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedMaxOprBrightness:F

    .line 2372
    :cond_65
    iget v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedMaxOprBrightness:F

    cmpl-float v5, p1, v5

    if-lez v5, :cond_97

    .line 2373
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    if-eqz v5, :cond_91

    .line 2374
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustBrightnessByOpr: current brightness: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is constrained to target brightness: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedMaxOprBrightness:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    :cond_91
    invoke-virtual {p2, v4}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 2378
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedMaxOprBrightness:F

    return v1

    .line 2380
    :cond_97
    return p1
.end method

.method private adjustBrightnessByPowerSaveMode(FLcom/android/server/display/brightness/BrightnessReason;)F
    .registers 5
    .param p1, "brightness"  # F
    .param p2, "reason"  # Lcom/android/server/display/brightness/BrightnessReason;

    .line 2432
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMaxPowerSaveModeBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_18

    .line 2433
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMaxPowerSaveModeBrightness:F

    invoke-static {v0, p1}, Landroid/util/MathUtils;->min(FF)F

    move-result v0

    .line 2434
    .local v0, "newBrightness":F
    cmpl-float v1, v0, p1

    if-eqz v1, :cond_18

    .line 2435
    const/16 v1, 0x1000

    invoke-virtual {p2, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 2436
    return v0

    .line 2439
    .end local v0  # "newBrightness":F
    :cond_18
    return p1
.end method

.method private adjustBrightnessByThermal(FZLcom/android/server/display/brightness/BrightnessReason;)F
    .registers 8
    .param p1, "brightness"  # F
    .param p2, "isHdr"  # Z
    .param p3, "reason"  # Lcom/android/server/display/brightness/BrightnessReason;

    .line 1199
    move v0, p1

    .line 1201
    .local v0, "newBrightness":F
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalBrightnessControlAvailable:Z

    if-eqz v1, :cond_3a

    .line 1202
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalMaxBrightness:F

    const/high16 v2, -0x40800000  # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalMaxBrightness:F

    .line 1203
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1204
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalMaxBrightness:F

    invoke-static {v1, p1}, Landroid/util/MathUtils;->min(FF)F

    move-result v0

    .line 1207
    :cond_1b
    cmpl-float v1, v0, p1

    if-eqz v1, :cond_24

    .line 1208
    const/16 v1, 0x100

    invoke-virtual {p3, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 1212
    :cond_24
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3a

    if-nez p2, :cond_31

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isHdrScene()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1213
    :cond_31
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalMaxBrightness:F

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentConditionId:I

    iget v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentTemperature:F

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/display/DisplayPowerControllerImpl;->startFullSceneThermalUsageStats(FFIF)V

    .line 1217
    :cond_3a
    return v0
.end method

.method private adjustBrightnessToPeak(FZLcom/android/server/display/brightness/BrightnessReason;)F
    .registers 11
    .param p1, "brightness"  # F
    .param p2, "isHdrBrightness"  # Z
    .param p3, "reason"  # Lcom/android/server/display/brightness/BrightnessReason;

    .line 1245
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprHdrBrightnessControlAvailable:Z

    if-eqz v0, :cond_15

    if-eqz p2, :cond_15

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isHdrVideo()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1246
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getCurrentHdrMaxBrightness()F

    move-result v0

    invoke-static {p1, v0}, Landroid/util/MathUtils;->min(FF)F

    move-result v0

    return v0

    .line 1248
    :cond_15
    const/high16 v0, 0x3f800000  # 1.0f

    .line 1250
    .local v0, "currentMaxBrightness":F
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isSupportPeakBrightness()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->clampHdrBrightnessIfNeeded()Z

    move-result v1

    if-eqz v1, :cond_cf

    :cond_23
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v1, :cond_cf

    .line 1252
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getCurrentAmbientLux()F

    move-result v1

    .line 1253
    .local v1, "currentLux":F
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->clampHdrBrightnessIfNeeded()Z

    move-result v2

    if-nez v2, :cond_38

    .line 1254
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getMaxHbmBrightnessForPeak()F

    move-result v0

    goto :goto_42

    .line 1255
    :cond_38
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isHdrVideo()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1256
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getClampedHdrBrightnessForOprOptimize()F

    move-result v0

    .line 1259
    :cond_42
    :goto_42
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isHdrVideo()Z

    move-result v2

    if-eqz v2, :cond_6a

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutoBrightnessEnable:Z

    if-eqz v2, :cond_6a

    sget v2, Lcom/android/server/display/DisplayPowerControllerImpl;->PEAK_BRIGHTNESS_AMBIENT_LUX_THRESHOLD:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_6a

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScale:F

    .line 1262
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->isGrayScaleLegal(F)Z

    move-result v2

    if-eqz v2, :cond_64

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScale:F

    sget v3, Lcom/android/server/display/DisplayPowerControllerImpl;->PEAK_BRIGHTNESS_GRAY_SCALE_THRESHOLD:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_68

    :cond_64
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mEnablePeakForIllegalGrayscale:Z

    if-eqz v2, :cond_6a

    :cond_68
    const/4 v2, 0x1

    goto :goto_6b

    :cond_6a
    const/4 v2, 0x0

    .line 1265
    .local v2, "shouldApplyPeakBrightness":Z
    :goto_6b
    const-string v3, ", current gray scale: "

    const-string v4, "DisplayPowerControllerImpl"

    if-eqz v2, :cond_9f

    .line 1267
    if-eqz p2, :cond_cd

    .line 1268
    const/high16 v0, 0x3f800000  # 1.0f

    .line 1269
    const/16 v5, 0x400

    invoke-virtual {p3, v5}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 1270
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    if-eqz v5, :cond_cd

    .line 1271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Apply peak brightness, currentLux: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScale:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    .line 1277
    :cond_9f
    iget v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastMaxBrightness:F

    cmpl-float v5, v5, v0

    if-lez v5, :cond_cd

    .line 1278
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    if-eqz v5, :cond_c9

    .line 1279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exit peak brightness, currentLux: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScale:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_c9
    const/high16 v3, 0x7fc00000  # Float.NaN

    iput v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScale:F

    .line 1285
    :cond_cd
    :goto_cd
    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastMaxBrightness:F

    .line 1287
    .end local v1  # "currentLux":F
    .end local v2  # "shouldApplyPeakBrightness":Z
    :cond_cf
    invoke-static {p1, v0}, Landroid/util/MathUtils;->min(FF)F

    move-result p1

    .line 1288
    return p1
.end method

.method private adjustBrightnessWhenDimming(FZ)F
    .registers 6
    .param p1, "newBrightness"  # F
    .param p2, "isDimming"  # Z

    .line 1168
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isFullAodStateForBrightness()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1169
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->getAodScreenBrightness()F

    move-result v0

    .line 1170
    .local v0, "aodBrightness":F
    if-eqz p2, :cond_37

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_37

    .line 1171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustBrightnessWhenDimming newBrightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", aodBrightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayPowerControllerImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    return v0

    .line 1176
    .end local v0  # "aodBrightness":F
    :cond_37
    return p1
.end method

.method private calculateBrightnessBCBC(FF)F
    .registers 8
    .param p1, "brightness"  # F
    .param p2, "grayScale"  # F

    .line 1466
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mScreenBrightnessRangeMaximum:F

    div-float v0, p1, v0

    .line 1468
    .local v0, "ratio":F
    sget v1, Lcom/android/server/display/DisplayPowerControllerImpl;->V2:F

    cmpl-float v1, p2, v1

    const/high16 v2, 0x3f800000  # 1.0f

    if-lez v1, :cond_7d

    .line 1469
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    const/4 v3, 0x4

    aget v1, v1, v3

    cmpl-float v1, v0, v1

    const/4 v4, 0x5

    if-lez v1, :cond_31

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    aget v1, v1, v4

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_31

    .line 1470
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mK3:F

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    aget v3, v4, v3

    sub-float v3, v0, v3

    mul-float/2addr v1, v3

    sget v3, Lcom/android/server/display/DisplayPowerControllerImpl;->V2:F

    sub-float v3, p2, v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayBrightnessFactor:F

    goto/16 :goto_f2

    .line 1471
    :cond_31
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    aget v1, v1, v4

    cmpl-float v1, v0, v1

    const/4 v3, 0x6

    if-lez v1, :cond_55

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    aget v1, v1, v3

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_55

    .line 1472
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeMaxDiff:F

    sget v3, Lcom/android/server/display/DisplayPowerControllerImpl;->V2:F

    sub-float v3, p2, v3

    mul-float/2addr v1, v3

    sget v3, Lcom/android/server/display/DisplayPowerControllerImpl;->V2:F

    sub-float v3, v2, v3

    mul-float/2addr v3, v0

    div-float/2addr v1, v3

    sub-float v1, v2, v1

    iput v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayBrightnessFactor:F

    goto/16 :goto_f2

    .line 1473
    :cond_55
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    aget v1, v1, v3

    cmpl-float v1, v0, v1

    if-lez v1, :cond_79

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    const/4 v3, 0x7

    aget v1, v1, v3

    cmpg-float v1, v0, v1

    if-gez v1, :cond_79

    .line 1474
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mK4:F

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    aget v3, v4, v3

    sub-float v3, v0, v3

    mul-float/2addr v1, v3

    sget v3, Lcom/android/server/display/DisplayPowerControllerImpl;->V2:F

    sub-float v3, p2, v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayBrightnessFactor:F

    goto/16 :goto_f2

    .line 1476
    :cond_79
    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayBrightnessFactor:F

    goto/16 :goto_f2

    .line 1478
    :cond_7d
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_f0

    sget v1, Lcom/android/server/display/DisplayPowerControllerImpl;->V1:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_f0

    .line 1479
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    cmpl-float v1, v0, v1

    const/4 v4, 0x1

    if-lez v1, :cond_ac

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    aget v1, v1, v4

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_ac

    .line 1480
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mK1:F

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    aget v3, v4, v3

    sub-float v3, v0, v3

    mul-float/2addr v1, v3

    sget v3, Lcom/android/server/display/DisplayPowerControllerImpl;->V1:F

    sub-float v3, p2, v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayBrightnessFactor:F

    goto :goto_f2

    .line 1481
    :cond_ac
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    aget v1, v1, v4

    cmpl-float v1, v0, v1

    const/4 v3, 0x2

    if-lez v1, :cond_ca

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    aget v1, v1, v3

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_ca

    .line 1482
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeMaxA:F

    add-float/2addr v1, v2

    iget v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeMaxA:F

    sget v4, Lcom/android/server/display/DisplayPowerControllerImpl;->V1:F

    div-float/2addr v3, v4

    mul-float/2addr v3, p2

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayBrightnessFactor:F

    goto :goto_f2

    .line 1483
    :cond_ca
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    aget v1, v1, v3

    cmpl-float v1, v0, v1

    if-lez v1, :cond_ed

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    const/4 v3, 0x3

    aget v1, v1, v3

    cmpg-float v1, v0, v1

    if-gez v1, :cond_ed

    .line 1484
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mK2:F

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    aget v3, v4, v3

    sub-float v3, v0, v3

    mul-float/2addr v1, v3

    sget v3, Lcom/android/server/display/DisplayPowerControllerImpl;->V1:F

    sub-float v3, p2, v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayBrightnessFactor:F

    goto :goto_f2

    .line 1487
    :cond_ed
    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayBrightnessFactor:F

    goto :goto_f2

    .line 1490
    :cond_f0
    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayBrightnessFactor:F

    .line 1493
    :goto_f2
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayBrightnessFactor:F

    mul-float/2addr v1, p1

    .line 1494
    .local v1, "outBrightness":F
    sget-boolean v3, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_BCBC_BY_AMBIENT_LUX:Z

    if-eqz v3, :cond_103

    iget v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayBrightnessFactor:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_103

    .line 1495
    invoke-direct {p0, p1, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->adjustBrightnessByLux(FF)F

    move-result v1

    .line 1498
    :cond_103
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    if-eqz v2, :cond_13f

    .line 1499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " grayScale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " factor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayBrightnessFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " outBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayPowerControllerImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_13f
    return v1
.end method

.method private calculateBrightnessForManualBoost(FZ)F
    .registers 7
    .param p1, "brightness"  # F
    .param p2, "isBoostEntering"  # Z

    .line 960
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    .line 961
    .local v0, "transitionPoint":F
    if-eqz p2, :cond_19

    .line 963
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mScreenBrightnessRangeMinimum:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mScreenBrightnessRangeMinimum:F

    sub-float v2, v0, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMaxManualBoostBrightness:F

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, p1

    .local v1, "tempBrightness":F
    goto :goto_2d

    .line 969
    .end local v1  # "tempBrightness":F
    :cond_19
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastManualBoostBrightness:F

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mScreenBrightnessRangeMinimum:F

    sub-float v2, v0, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mScreenBrightnessRangeMinimum:F

    iget v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMaxManualBoostBrightness:F

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMaxManualBoostBrightness:F

    iget v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mScreenBrightnessRangeMinimum:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 974
    .restart local v1  # "tempBrightness":F
    :goto_2d
    return v1
.end method

.method private calculateGalleryHdrBoostFactor(FF)F
    .registers 7
    .param p1, "hdrNit"  # F
    .param p2, "sdrNit"  # F

    .line 1699
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v1, :cond_31

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_31

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_31

    .line 1703
    :cond_18
    div-float v0, p1, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 1704
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1705
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 1707
    .local v0, "factor":F
    const/high16 v1, 0x40100000  # 2.25f

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    return v1

    .line 1700
    .end local v0  # "factor":F
    :cond_31
    :goto_31
    return v2
.end method

.method private canApplyManualBrightnessBoost(F)V
    .registers 5
    .param p1, "brightness"  # F

    .line 929
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v0

    const-string v1, "DisplayPowerControllerImpl"

    if-eqz v0, :cond_5f

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBootCompleted:Z

    if-eqz v0, :cond_5f

    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMaxManualBoostBrightness:F

    const/high16 v2, -0x40800000  # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_17

    goto :goto_5f

    .line 935
    :cond_17
    move v0, p1

    .line 936
    .local v0, "tempBrightness":F
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualBrightnessBoostEnable:Z

    if-nez v2, :cond_34

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->shouldManualBoostForCurrentApp()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 937
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualBrightnessBoostEnable:Z

    .line 939
    invoke-direct {p0, v0, v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->calculateBrightnessForManualBoost(FZ)F

    move-result v0

    .line 940
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightStateListener:Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;

    invoke-interface {v2, v0}, Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;->updateScreenBrightnessSettingDueToSunlight(F)V

    .line 941
    const-string v2, "Enter manual brightness boost."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 942
    :cond_34
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualBrightnessBoostEnable:Z

    if-eqz v2, :cond_4f

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->shouldManualBoostForCurrentApp()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 943
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualBrightnessBoostEnable:Z

    .line 945
    invoke-direct {p0, v0, v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->calculateBrightnessForManualBoost(FZ)F

    move-result v0

    .line 946
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightStateListener:Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;

    invoke-interface {v2, v0}, Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;->updateScreenBrightnessSettingDueToSunlight(F)V

    .line 947
    const-string v2, "Exit manual brightness boost."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_4f
    :goto_4f
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsSunlightModeEnable:Z

    if-eqz v1, :cond_5a

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualBrightnessBoostEnable:Z

    if-eqz v1, :cond_5a

    .line 951
    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastManualBoostBrightness:F

    goto :goto_5e

    .line 954
    :cond_5a
    const/high16 v1, 0x7fc00000  # Float.NaN

    iput v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastManualBoostBrightness:F

    .line 956
    :goto_5e
    return-void

    .line 932
    .end local v0  # "tempBrightness":F
    :cond_5f
    :goto_5f
    const-string v0, "Don\'t apply manual brightness boost because current device status is invalid."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return-void
.end method

.method private computeBCBCAdjustmentParams()V
    .registers 7

    .line 1552
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeMaxA:F

    neg-float v0, v0

    sget v1, Lcom/android/server/display/DisplayPowerControllerImpl;->V1:F

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mK1:F

    .line 1553
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeMaxA:F

    sget v1, Lcom/android/server/display/DisplayPowerControllerImpl;->V1:F

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mK2:F

    .line 1554
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeMaxDiff:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    sget v3, Lcom/android/server/display/DisplayPowerControllerImpl;->V2:F

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    aget v2, v3, v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    const/4 v5, 0x4

    aget v3, v3, v5

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mK3:F

    .line 1556
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeMaxDiff:F

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    sget v3, Lcom/android/server/display/DisplayPowerControllerImpl;->V2:F

    sub-float/2addr v4, v3

    mul-float/2addr v1, v4

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    aget v2, v4, v2

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mK4:F

    .line 1558
    return-void
.end method

.method private getBclLimitBrightness(I)F
    .registers 8
    .param p1, "level"  # I

    .line 2811
    const/high16 v0, 0x3f800000  # 1.0f

    .line 2812
    .local v0, "limitBrightness":F
    const/high16 v1, 0x3f800000  # 1.0f

    .line 2813
    .local v1, "limitThreshold":F
    const/high16 v2, 0x3f800000  # 1.0f

    .line 2814
    .local v2, "maxManualBrightness":F
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBclBrightnessLimitThreshold:[F

    array-length v3, v3

    if-ge p1, v3, :cond_f

    .line 2815
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBclBrightnessLimitThreshold:[F

    aget v1, v3, p1

    .line 2817
    :cond_f
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 2818
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v3

    iget v2, v3, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    .line 2821
    :cond_1f
    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v4, v1, v3

    if-lez v4, :cond_2c

    .line 2822
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v3, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v0

    goto :goto_69

    .line 2823
    :cond_2c
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_5f

    cmpg-float v4, v1, v3

    if-gez v4, :cond_5f

    .line 2825
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v4, v3}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v3

    .line 2828
    .local v3, "maxHhmBrightness":F
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprBrightnessControlAvailable:Z

    if-eqz v4, :cond_52

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprNitThreshold:[I

    if-eqz v4, :cond_52

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprNitThreshold:[I

    array-length v4, v4

    if-eqz v4, :cond_52

    .line 2830
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprNitThreshold:[I

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprNitThreshold:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    int-to-float v3, v4

    .line 2832
    :cond_52
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    mul-float v5, v1, v3

    invoke-virtual {v4, v5}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v0

    .line 2834
    invoke-static {v0, v2}, Landroid/util/MathUtils;->max(FF)F

    move-result v0

    .end local v3  # "maxHhmBrightness":F
    goto :goto_68

    .line 2835
    :cond_5f
    iget v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBclLowPowerMaxLevel:I

    if-gt p1, v3, :cond_68

    .line 2836
    invoke-static {v0, v2}, Landroid/util/MathUtils;->min(FF)F

    move-result v0

    goto :goto_69

    .line 2835
    :cond_68
    :goto_68
    nop

    .line 2838
    :goto_69
    return v0
.end method

.method private getCurrentHdrMaxBrightness()F
    .registers 7

    .line 1293
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutoBrightnessEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 1294
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mNitThresholdForHdr:[F

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v0

    .local v0, "hdrMaxBrightness":F
    goto :goto_83

    .line 1296
    .end local v0  # "hdrMaxBrightness":F
    :cond_10
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    .line 1297
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getCurrentAmbientLux()F

    move-result v0

    .line 1296
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getRestrictedLuxHdrBrightness(F)F

    move-result v0

    .line 1299
    .local v0, "luxLimitBrightness":F
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    .line 1300
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getCurrentAmbientLux()F

    move-result v2

    iget v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprAmbientLuxThreshold:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLuxThresholdForHdr:[F

    aget v4, v4, v1

    .line 1301
    invoke-static {v3, v4}, Landroid/util/MathUtils;->min(FF)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_35

    const/4 v1, 0x1

    goto :goto_36

    :cond_35
    nop

    .line 1302
    .local v1, "shouldResetScreenGrayscaleState":Z
    :goto_36
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPendingResetGrayscaleStateForOpr:Z

    if-eq v2, v1, :cond_3f

    .line 1303
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPendingResetGrayscaleStateForOpr:Z

    .line 1304
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetScreenGrayscaleState()V

    .line 1306
    :cond_3f
    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScaleForHdr:F

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->getRestrictedOprHdrBrightness(F)F

    move-result v2

    .line 1307
    .local v2, "oprLimitBrightness":F
    invoke-static {v2, v0}, Landroid/util/MathUtils;->min(FF)F

    move-result v3

    .line 1308
    .local v3, "hdrMaxBrightness":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "luxLimitBrightness:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oprLimitBrightness:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentGrayScaleForHdr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScaleForHdr:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hdrMaxBrightness:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DisplayPowerControllerImpl"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1313
    .end local v1  # "shouldResetScreenGrayscaleState":Z
    .end local v2  # "oprLimitBrightness":F
    .end local v3  # "hdrMaxBrightness":F
    .local v0, "hdrMaxBrightness":F
    :goto_83
    return v0
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5
    .param p0, "array"  # Landroid/content/res/TypedArray;

    .line 1542
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 1543
    .local v0, "length":I
    new-array v1, v0, [F

    .line 1544
    .local v1, "floatArray":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_14

    .line 1545
    const/high16 v3, 0x7fc00000  # Float.NaN

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 1544
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1547
    .end local v2  # "i":I
    :cond_14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1548
    return-object v1
.end method

.method private getRestrictedLuxHdrBrightness(F)F
    .registers 5
    .param p1, "ambientLux"  # F

    .line 2400
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2401
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0

    .line 2403
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLuxThresholdForHdr:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1d

    .line 2404
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mNitThresholdForHdr:[F

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v0

    .local v0, "luxLimitBrightness":F
    goto :goto_46

    .line 2406
    .end local v0  # "luxLimitBrightness":F
    :cond_1d
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLuxThresholdForHdr:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLuxThresholdForHdr:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3a

    .line 2407
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mNitThresholdForHdr:[F

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mNitThresholdForHdr:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v0

    .restart local v0  # "luxLimitBrightness":F
    goto :goto_46

    .line 2410
    .end local v0  # "luxLimitBrightness":F
    :cond_3a
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLuxToNitSplineForHdr:Landroid/util/Spline;

    .line 2411
    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 2410
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v0

    .line 2413
    .restart local v0  # "luxLimitBrightness":F
    :goto_46
    return v0
.end method

.method private getRestrictedOprBrightness(F)F
    .registers 5
    .param p1, "grayScale"  # F

    .line 2384
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->isGrayScaleLegal(F)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprGrayscaleThreshold:[I

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprNitThreshold:[I

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprGrayscaleThreshold:[I

    array-length v0, v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprNitThreshold:[I

    array-length v0, v0

    if-nez v0, :cond_1d

    goto :goto_3c

    .line 2390
    :cond_1d
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1e
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprGrayscaleThreshold:[I

    array-length v1, v1

    if-ge v0, v1, :cond_30

    .line 2391
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprGrayscaleThreshold:[I

    aget v1, v1, v0

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_2d

    .line 2392
    goto :goto_30

    .line 2390
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 2395
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprNitThreshold:[I

    aget v2, v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v1

    return v1

    .line 2387
    .end local v0  # "index":I
    :cond_3c
    :goto_3c
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0
.end method

.method private getRestrictedOprHdrBrightness(F)F
    .registers 5
    .param p1, "grayScale"  # F

    .line 2417
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->isGrayScaleLegal(F)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprGrayscaleThresholdForHdr:[I

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprNitThresholdForHdr:[I

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprGrayscaleThresholdForHdr:[I

    array-length v0, v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprNitThresholdForHdr:[I

    array-length v0, v0

    if-nez v0, :cond_1d

    goto :goto_3c

    .line 2423
    :cond_1d
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1e
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprGrayscaleThresholdForHdr:[I

    array-length v1, v1

    if-ge v0, v1, :cond_30

    .line 2424
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprGrayscaleThresholdForHdr:[I

    aget v1, v1, v0

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_2d

    .line 2425
    goto :goto_30

    .line 2423
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 2428
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprNitThresholdForHdr:[I

    aget v2, v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v1

    return v1

    .line 2420
    .end local v0  # "index":I
    :cond_3c
    :goto_3c
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0
.end method

.method private getSceneState()I
    .registers 3

    .line 3094
    const/4 v0, -0x1

    .line 3095
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    if-eqz v1, :cond_b

    .line 3096
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    invoke-virtual {v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->getCurrentSceneState()I

    move-result v0

    .line 3098
    :cond_b
    return v0
.end method

.method private isAllowedUseSunlightMode()Z
    .registers 2

    .line 758
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightModeActive:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isSunlightModeDisabledByUser()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isGrayScaleLegal(F)Z
    .registers 3
    .param p1, "grayScale"  # F

    .line 1379
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private isHdrScene()Z
    .registers 3

    .line 1395
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDolbyStateEnable:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 1396
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->getHighBrightnessMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    .line 1395
    :goto_15
    return v0
.end method

.method private isHdrVideo()Z
    .registers 2

    .line 1386
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 1387
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->isHdrLayerPresent()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 1388
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->isDolbyEnable()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 1386
    :goto_17
    return v0
.end method

.method private isKeyguardOn()Z
    .registers 2

    .line 2306
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private isManualBrightnessBoostAppEnable()Z
    .registers 2

    .line 900
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    if-eqz v0, :cond_b

    .line 901
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiDisplayCloudController;->isManualBoostAppEnable()Z

    move-result v0

    return v0

    .line 903
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private isOverrideBrightnessPolicyEnable()Z
    .registers 2

    .line 1747
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    if-eqz v0, :cond_b

    .line 1748
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiDisplayCloudController;->isOverrideBrightnessPolicyEnable()Z

    move-result v0

    return v0

    .line 1750
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private isSunlightModeDisabledByUser()Z
    .registers 2

    .line 826
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightController:Lcom/android/server/display/SunlightController;

    invoke-virtual {v0}, Lcom/android/server/display/SunlightController;->isSunlightModeDisabledByUser()Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$getRefactorBrightness$4(FF)V
    .registers 4
    .param p1, "finalLux"  # F
    .param p2, "logicalNit"  # F

    .line 3534
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/RefactorNitController;->updateLogicalCurve(FF)V

    .line 3535
    return-void
.end method

.method private synthetic lambda$init$0()V
    .registers 1

    .line 616
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->registerForegroundAppUpdater()V

    .line 617
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->registerBroadcastsReceiver()V

    .line 618
    return-void
.end method

.method private synthetic lambda$init$1(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "folded"  # Ljava/lang/Boolean;

    .line 624
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->setDeviceFolded(Z)V

    return-void
.end method

.method private synthetic lambda$resetDefaultSpline$5()V
    .registers 2

    .line 3568
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    invoke-virtual {v0}, Lcom/android/server/display/RefactorNitController;->resetDefaultSpline()V

    .line 3569
    return-void
.end method

.method private synthetic lambda$startDetailThermalUsageStatsOnThermalChanged$3(IFZ)V
    .registers 6
    .param p1, "conditionId"  # I
    .param p2, "temperature"  # F
    .param p3, "brightnessChanged"  # Z

    .line 2924
    iput p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentConditionId:I

    .line 2925
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentTemperature:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastTemperature:F

    .line 2926
    iput p2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentTemperature:F

    .line 2927
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastTemperature:F

    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentTemperature:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-direct {p0, p2, v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->startAverageTemperatureStats(FZ)V

    .line 2928
    if-nez p3, :cond_1b

    .line 2929
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayPowerControllerImpl;->startDetailsThermalUsageStats(IF)V

    .line 2931
    :cond_1b
    return-void
.end method

.method private synthetic lambda$stop$2()V
    .registers 2

    .line 2587
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mForegroundWindowListener:Lmiui/process/IForegroundWindowListener;

    invoke-static {v0}, Lmiui/process/ProcessManager;->unregisterForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V

    return-void
.end method

.method private loadSettings()V
    .registers 3

    .line 2131
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateColorInversionEnabled()V

    .line 2132
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateAutoBrightnessMode()V

    .line 2133
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateAnimatorDurationScale()V

    .line 2134
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOutdoorModeAvailable:Z

    if-eqz v0, :cond_10

    .line 2135
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateOutdoorMode()V

    .line 2137
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurtainAnimationAvailable:Z

    if-eqz v0, :cond_17

    .line 2138
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateCurtainAnimationEnabled()V

    .line 2141
    :cond_17
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;

    if-eqz v0, :cond_22

    .line 2142
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;

    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->updateAodMode(I)V

    .line 2144
    :cond_22
    return-void
.end method

.method private notifyUpdateForegroundApp()V
    .registers 2

    .line 3116
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v0, :cond_9

    .line 3117
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->notifyUpdateForegroundApp()V

    .line 3119
    :cond_9
    return-void
.end method

.method private onAnimateValueChanged(Z)V
    .registers 4
    .param p1, "changed"  # Z

    .line 3174
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    if-eqz v0, :cond_d

    .line 3175
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/RampRateController;->onAnimateValueChanged(ZZ)V

    .line 3177
    :cond_d
    return-void
.end method

.method private onBrightnessChanged(Z)V
    .registers 4
    .param p1, "enable"  # Z

    .line 3168
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    if-eqz v0, :cond_d

    .line 3169
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/RampRateController;->onBrightnessChanged(ZZ)V

    .line 3171
    :cond_d
    return-void
.end method

.method private recalculationForBCBC()V
    .registers 12

    .line 2095
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mInitialBCBCParameters:Z

    if-eqz v0, :cond_5

    .line 2096
    return-void

    .line 2098
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mInitialBCBCParameters:Z

    .line 2099
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    .line 2100
    .local v0, "transitionPoint":F
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 2101
    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v1

    float-to-double v1, v1

    .line 2100
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    const-wide v3, 0x407f400000000000L  # 500.0

    div-double/2addr v3, v1

    .line 2102
    .local v3, "nitRatio":D
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    .line 2103
    const/4 v2, 0x2

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    mul-double/2addr v1, v3

    .line 2105
    .local v1, "coefficient":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_32
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    array-length v7, v7

    const/4 v8, 0x6

    if-ge v6, v7, :cond_51

    .line 2106
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeArrayD:[F

    sget-object v9, Lcom/android/server/display/DisplayPowerControllerImpl;->DATA_D:[F

    aget v9, v9, v6

    float-to-double v9, v9

    mul-double/2addr v9, v1

    invoke-static {v9, v10}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v9

    .line 2107
    invoke-virtual {v9, v8, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    aput v8, v7, v6

    .line 2105
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 2109
    .end local v6  # "i":I
    :cond_51
    sget v6, Lcom/android/server/display/DisplayPowerControllerImpl;->MAX_DIFF:F

    float-to-double v6, v6

    mul-double/2addr v6, v1

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v6

    .line 2110
    invoke-virtual {v6, v8, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    move-result v5

    iput v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRealtimeMaxDiff:F

    .line 2111
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->computeBCBCAdjustmentParams()V

    .line 2112
    return-void
.end method

.method private registerBroadcastsReceiver()V
    .registers 8

    .line 2720
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetLowPowerState()V

    .line 2721
    new-instance v0, Lcom/android/server/display/DisplayPowerControllerImpl$BatteryReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl$BatteryReceiver;-><init>(Lcom/android/server/display/DisplayPowerControllerImpl;Lcom/android/server/display/DisplayPowerControllerImpl-IA;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBatteryReceiver:Lcom/android/server/display/DisplayPowerControllerImpl$BatteryReceiver;

    .line 2722
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v3, v0

    .line 2723
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.miui.powerkeeper.TEMP_MODE_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2724
    const/16 v0, 0x3e8

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 2726
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isRearScreenDevice()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    if-nez v0, :cond_2a

    .line 2727
    const-string v0, "com.android.camera.action.camera_status"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2729
    :cond_2a
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLevelThreshold:[I

    array-length v0, v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLevelBrightnessThreshold:[I

    array-length v0, v0

    if-eqz v0, :cond_39

    .line 2731
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2733
    :cond_39
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBatteryReceiver:Lcom/android/server/display/DisplayPowerControllerImpl$BatteryReceiver;

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    const/4 v6, 0x2

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 2734
    return-void
.end method

.method private registerForegroundAppUpdater()V
    .registers 3

    .line 2159
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mTaskStackListener:Lcom/android/server/display/DisplayPowerControllerImpl$TaskStackListenerImpl;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 2160
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mForegroundWindowListener:Lmiui/process/IForegroundWindowListener;

    invoke-static {v0}, Lmiui/process/ProcessManager;->registerForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V

    .line 2163
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateForegroundApp()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 2166
    goto :goto_11

    .line 2164
    :catch_10
    move-exception v0

    .line 2167
    :goto_11
    return-void
.end method

.method private registerSettingsObserver()V
    .registers 6

    .line 711
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 712
    const-string v1, "accessibility_display_inversion_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSettingsObserver:Lcom/android/server/display/DisplayPowerControllerImpl$SettingsObserver;

    .line 711
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 714
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 715
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSettingsObserver:Lcom/android/server/display/DisplayPowerControllerImpl$SettingsObserver;

    .line 714
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 717
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurtainAnimationAvailable:Z

    if-eqz v0, :cond_4c

    .line 718
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 719
    const-string v1, "curtain_anim_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSettingsObserver:Lcom/android/server/display/DisplayPowerControllerImpl$SettingsObserver;

    .line 718
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 721
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 722
    const-string/jumbo v1, "is_dynamic_lockscreen_shown"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSettingsObserver:Lcom/android/server/display/DisplayPowerControllerImpl$SettingsObserver;

    .line 721
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 725
    :cond_4c
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 726
    const-string v1, "animator_duration_scale"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSettingsObserver:Lcom/android/server/display/DisplayPowerControllerImpl$SettingsObserver;

    .line 725
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 728
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->loadSettings()V

    .line 729
    return-void
.end method

.method private resetBCBCState()V
    .registers 2

    .line 1357
    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayScale:F

    .line 1358
    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBcbcBrightness:F

    .line 1359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedBcbc:Z

    .line 1360
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateBCBCStateIfNeeded()V

    .line 1361
    return-void
.end method

.method private resetBcbcRateModifier(Z)V
    .registers 3
    .param p1, "appliedAutoBrightness"  # Z

    .line 3197
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    if-eqz v0, :cond_b

    .line 3198
    if-nez p1, :cond_b

    .line 3199
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    invoke-virtual {v0}, Lcom/android/server/display/RampRateController;->clearBcbcModifier()V

    .line 3202
    :cond_b
    return-void
.end method

.method private resetLowPowerState()V
    .registers 4

    .line 2737
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power_level_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2738
    return-void
.end method

.method private resetRateModifierOnAnimateValueChanged()V
    .registers 2

    .line 3211
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    if-eqz v0, :cond_e

    .line 3212
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    invoke-virtual {v0}, Lcom/android/server/display/RampRateController;->clearBcbcModifier()V

    .line 3213
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    invoke-virtual {v0}, Lcom/android/server/display/RampRateController;->clearThermalModifier()V

    .line 3215
    :cond_e
    return-void
.end method

.method private resetScreenGrayscaleState()V
    .registers 4

    .line 1364
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprGrayscaleThreshold:[I

    const/high16 v1, 0x7fc00000  # Float.NaN

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprGrayscaleThreshold:[I

    array-length v0, v0

    if-lez v0, :cond_1b

    .line 1365
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprGrayscaleThreshold:[I

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprGrayscaleThreshold:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x3f800000  # 1.0f

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScale:F

    goto :goto_1d

    .line 1368
    :cond_1b
    iput v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScale:F

    .line 1370
    :goto_1d
    iput v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScaleForHdr:F

    .line 1371
    iput v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentLuxForHdr:F

    .line 1372
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastMaxBrightness:F

    .line 1373
    iput v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedMaxOprBrightness:F

    .line 1374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPendingUpdateBrightness:Z

    .line 1375
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateScreenGrayscaleStateIfNeeded()V

    .line 1376
    return-void
.end method

.method private resetThermalRateModifier()V
    .registers 2

    .line 3205
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    if-eqz v0, :cond_9

    .line 3206
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    invoke-virtual {v0}, Lcom/android/server/display/RampRateController;->clearThermalModifier()V

    .line 3208
    :cond_9
    return-void
.end method

.method private restoreOutdoorModeForBoot()V
    .registers 5

    .line 3360
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    .line 3361
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/high16 v1, 0x7fc00000  # Float.NaN

    const/4 v2, -0x2

    const-string v3, "brt_before_outdoor_mode"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 3365
    .local v0, "brightnessBeforeOutdoorMode":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOutdoorModeStateChangedListener:Lcom/android/server/display/DisplayPowerControllerStub$OutdoorModeStateChangedListener;

    if-eqz v1, :cond_20

    .line 3367
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOutdoorModeStateChangedListener:Lcom/android/server/display/DisplayPowerControllerStub$OutdoorModeStateChangedListener;

    .line 3368
    const/high16 v2, 0x3f800000  # 1.0f

    invoke-interface {v1, v2}, Lcom/android/server/display/DisplayPowerControllerStub$OutdoorModeStateChangedListener;->updateScreenBrightnessSettingDueToOutdoorMode(F)V

    .line 3370
    :cond_20
    return-void
.end method

.method private sendSurfaceFlingerActualBrightness(I)V
    .registers 8
    .param p1, "brightness"  # I

    .line 978
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    const-string v1, "DisplayPowerControllerImpl"

    if-eqz v0, :cond_1d

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSurfaceFlingerActualBrightness, brightness = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_1d
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mISurfaceFlinger:Landroid/os/IBinder;

    if-eqz v0, :cond_49

    .line 982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 983
    .local v0, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 986
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mISurfaceFlinger:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x7980

    invoke-interface {v2, v5, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_36} :catch_3d
    .catch Ljava/lang/SecurityException; {:try_start_2d .. :try_end_36} :catch_3d
    .catchall {:try_start_2d .. :try_end_36} :catchall_3b

    .line 991
    nop

    :goto_37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 992
    goto :goto_49

    .line 991
    :catchall_3b
    move-exception v1

    goto :goto_45

    .line 988
    :catch_3d
    move-exception v2

    .line 989
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_3e
    const-string v3, "Failed to send brightness to SurfaceFlinger"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_3b

    .line 991
    nop

    .end local v2  # "ex":Ljava/lang/Exception;
    goto :goto_37

    :goto_45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 992
    throw v1

    .line 994
    .end local v0  # "data":Landroid/os/Parcel;
    :cond_49
    :goto_49
    return-void
.end method

.method private setCurrentGrayScale(F)V
    .registers 3
    .param p1, "grayScale"  # F

    .line 1940
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->isGrayScaleLegal(F)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_12

    .line 1941
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateBrightnessForOpr(F)V

    .line 1942
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateBrightnessForPeak(F)V

    .line 1944
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprHdrBrightnessControlAvailable:Z

    if-eqz v0, :cond_25

    .line 1945
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->isGrayScaleLegal(F)Z

    move-result v0

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScaleForHdr:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_25

    .line 1946
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateHdrBrightnessForOpr(F)V

    .line 1948
    :cond_25
    return-void
.end method

.method private setCurrentGrayScaleForIPA(F)V
    .registers 3
    .param p1, "grayScale"  # F

    .line 1951
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->isGrayScaleLegal(F)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mEnableGrayHist:Z

    if-eqz v0, :cond_c

    .line 1952
    iput p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScaleForIPA:F

    .line 1954
    :cond_c
    return-void
.end method

.method private setDeviceFolded(Z)V
    .registers 4
    .param p1, "folded"  # Z

    .line 666
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mFolded:Z

    if-ne v0, p1, :cond_5

    .line 667
    return-void

    .line 669
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mFolded:Z

    .line 670
    invoke-static {}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->getInstance()Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->oneTrackFoldState(Z)V

    .line 671
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    if-eqz v0, :cond_2d

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFolded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mFolded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_2d
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 679
    .local v0, "isInteractive":Z
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurtainAnimationAvailable:Z

    if-eqz v1, :cond_48

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurtainAnimationEnabled:Z

    if-eqz v1, :cond_48

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsDynamicLockScreenShowing:Z

    if-nez v1, :cond_48

    if-nez v0, :cond_48

    if-nez p1, :cond_48

    .line 682
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->setPendingShowCurtainAnimation(Z)V

    goto :goto_4e

    .line 683
    :cond_48
    if-eqz p1, :cond_4e

    .line 684
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->setPendingShowCurtainAnimation(Z)V

    .line 686
    :cond_4e
    :goto_4e
    return-void
.end method

.method private setGrayScale(F)V
    .registers 3
    .param p1, "grayScale"  # F

    .line 1915
    iput p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayScale:F

    .line 1916
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    if-eqz v0, :cond_b

    .line 1917
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateGrayScale(F)V

    .line 1919
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 1920
    return-void
.end method

.method private setPendingShowCurtainAnimation(Z)V
    .registers 4
    .param p1, "pendingState"  # Z

    .line 704
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPendingShowCurtainAnimation:Z

    if-eq v0, p1, :cond_1f

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pending show curtain animation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPendingShowCurtainAnimation:Z

    .line 708
    :cond_1f
    return-void
.end method

.method private shouldManualBoostForCurrentApp()Z
    .registers 2

    .line 907
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isManualBrightnessBoostAppEnable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 908
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsSupportManualBoostApp:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsSunlightModeEnable:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    .line 910
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsSunlightModeEnable:Z

    return v0
.end method

.method private startAverageTemperatureStats(FZ)V
    .registers 4
    .param p1, "temperature"  # F
    .param p2, "needComputed"  # Z

    .line 2951
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    if-eqz v0, :cond_9

    .line 2952
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteAverageTemperature(FZ)V

    .line 2954
    :cond_9
    return-void
.end method

.method private startDetailsThermalUsageStats(IF)V
    .registers 4
    .param p1, "conditionId"  # I
    .param p2, "temperature"  # F

    .line 2940
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    if-eqz v0, :cond_9

    .line 2941
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteDetailThermalUsage(IF)V

    .line 2943
    :cond_9
    return-void
.end method

.method private startFullSceneThermalUsageStats(FFIF)V
    .registers 6
    .param p1, "brightness"  # F
    .param p2, "thermalBrightness"  # F
    .param p3, "currentConditionId"  # I
    .param p4, "temperature"  # F

    .line 2909
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    if-eqz v0, :cond_9

    .line 2910
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteFullSceneThermalUsageStats(FFIF)V

    .line 2913
    :cond_9
    return-void
.end method

.method private startUpdateThermalStats(FZ)V
    .registers 7
    .param p1, "brightnessState"  # F
    .param p2, "isScreenOn"  # Z

    .line 2894
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    if-eqz v0, :cond_16

    .line 2895
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentTemperature:F

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastTemperature:F

    iget v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentTemperature:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateThermalStats(FZFZ)V

    .line 2898
    :cond_16
    return-void
.end method

.method private updateAmbientLightSensor(Landroid/hardware/Sensor;)V
    .registers 3
    .param p1, "lightSensor"  # Landroid/hardware/Sensor;

    .line 742
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightController:Lcom/android/server/display/SunlightController;

    if-eqz v0, :cond_9

    .line 743
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightController:Lcom/android/server/display/SunlightController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/SunlightController;->updateAmbientLightSensor(Landroid/hardware/Sensor;)V

    .line 745
    :cond_9
    return-void
.end method

.method private updateAnimatorDurationScale()V
    .registers 4

    .line 2327
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAnimatorDurationScale:F

    .line 2329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update animator duration scale to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAnimatorDurationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    return-void
.end method

.method private updateAutoBrightnessMode()V
    .registers 5

    .line 2115
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutoBrightnessEnable:Z

    .line 2119
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetBCBCState()V

    .line 2120
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetScreenGrayscaleState()V

    .line 2122
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutoBrightnessEnable:Z

    if-nez v0, :cond_24

    .line 2123
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateBrightnessAnimInfoIfNeeded(Z)V

    goto :goto_28

    .line 2125
    :cond_24
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualBrightnessBoostEnable:Z

    .line 2126
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedSunlightMode:Z

    .line 2128
    :goto_28
    return-void
.end method

.method private updateBatteryBrightness(I)V
    .registers 6
    .param p1, "batteryLevel"  # I

    .line 2744
    const/4 v0, 0x0

    .line 2745
    .local v0, "index":I
    const/high16 v1, 0x3f800000  # 1.0f

    .line 2746
    .local v1, "lowBatteryBrightness":F
    :goto_3
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLevelThreshold:[I

    array-length v2, v2

    if-ge v0, v2, :cond_11

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLevelThreshold:[I

    aget v2, v2, v0

    if-le p1, v2, :cond_11

    .line 2748
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2750
    :cond_11
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLevelBrightnessThreshold:[I

    array-length v2, v2

    if-ge v0, v2, :cond_21

    .line 2751
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLevelBrightnessThreshold:[I

    aget v3, v3, v0

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v1

    .line 2754
    :cond_21
    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLimitBrightness:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2e

    .line 2755
    iput v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLimitBrightness:F

    .line 2756
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 2758
    :cond_2e
    return-void
.end method

.method private updateBatteryThermalBrightness(I)V
    .registers 6
    .param p1, "level"  # I

    .line 2793
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBclBrightnessLimitThreshold:[F

    array-length v0, v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz v0, :cond_5a

    if-gez p1, :cond_c

    goto :goto_5a

    .line 2796
    :cond_c
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBatteryThermalLevel:I

    if-eq v0, p1, :cond_59

    .line 2797
    iput p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBatteryThermalLevel:I

    .line 2798
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->getBclLimitBrightness(I)F

    move-result v0

    .line 2799
    .local v0, "limitBrightness":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBatteryThermalBrightness: level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", limitBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayPowerControllerImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBatteryThermalLimitBrightness:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_46

    .line 2802
    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBatteryThermalLimitBrightness:F

    .line 2803
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 2805
    :cond_46
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2806
    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBclLowPowerMaxLevel:I

    if-gt p1, v2, :cond_52

    const/4 v2, 0x1

    goto :goto_53

    :cond_52
    const/4 v2, 0x0

    .line 2805
    :goto_53
    const-string/jumbo v3, "low_power_level_state"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2808
    .end local v0  # "limitBrightness":F
    :cond_59
    return-void

    .line 2794
    :cond_5a
    :goto_5a
    return-void
.end method

.method private updateBrightnessByBatteryLevelAndPlugged(II)V
    .registers 7
    .param p1, "batteryLevel"  # I
    .param p2, "plugged"  # I

    .line 2764
    const/high16 v0, 0x3f800000  # 1.0f

    .line 2765
    .local v0, "lowBatteryBrightness":F
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLevelThreshold:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt p1, v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLevelThreshold:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_1b

    .line 2767
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLevelBrightnessThreshold:[I

    aget v2, v3, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v0

    .line 2771
    :cond_1b
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLevelThreshold:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    if-lt p1, v1, :cond_2f

    if-eqz p2, :cond_2f

    .line 2772
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLevelBrightnessThreshold:[I

    aget v2, v3, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v0

    .line 2775
    :cond_2f
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLimitBrightness:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_68

    .line 2776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "batteryLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", plugged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lowBatteryBrightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayPowerControllerImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLimitBrightness:F

    .line 2779
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 2781
    :cond_68
    return-void
.end method

.method private updateBrightnessForOpr(F)V
    .registers 6
    .param p1, "grayScale"  # F

    .line 1966
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isHdrScene()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    .line 1968
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getCurrentAmbientLux()F

    move-result v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprAmbientLuxThreshold:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 1969
    .local v0, "updateBrightnessForOpr":Z
    :goto_1a
    if-eqz v0, :cond_31

    .line 1970
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScale:F

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->getRestrictedOprBrightness(F)F

    move-result v1

    .line 1971
    .local v1, "currentRestrictedBrightness":F
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->getRestrictedOprBrightness(F)F

    move-result v2

    .line 1972
    .local v2, "pendingRestrictedOprBrightness":F
    iput p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScale:F

    .line 1973
    cmpl-float v3, v1, v2

    if-eqz v3, :cond_31

    .line 1974
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 1977
    .end local v1  # "currentRestrictedBrightness":F
    .end local v2  # "pendingRestrictedOprBrightness":F
    :cond_31
    return-void
.end method

.method private updateBrightnessForPeak(F)V
    .registers 4
    .param p1, "grayScale"  # F

    .line 1957
    iput p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScale:F

    .line 1958
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isHdrVideo()Z

    move-result v0

    if-eqz v0, :cond_11

    sget v0, Lcom/android/server/display/DisplayPowerControllerImpl;->PEAK_BRIGHTNESS_GRAY_SCALE_THRESHOLD:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 1959
    .local v0, "updateBrightnessForPeak":Z
    :goto_12
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPendingUpdateBrightness:Z

    if-eq v1, v0, :cond_1d

    .line 1960
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPendingUpdateBrightness:Z

    .line 1961
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 1963
    :cond_1d
    return-void
.end method

.method private updateColorInversionEnabled()V
    .registers 5

    .line 1565
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "accessibility_display_inversion_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v3, 0x1

    :cond_11
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mColorInversionEnabled:Z

    .line 1568
    return-void
.end method

.method private updateCurtainAnimationEnabled()V
    .registers 6

    .line 2320
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "curtain_anim_enabled"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurtainAnimationEnabled:Z

    .line 2322
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "is_dynamic_lockscreen_shown"

    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_26

    goto :goto_27

    :cond_26
    move v2, v1

    :goto_27
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsDynamicLockScreenShowing:Z

    .line 2324
    return-void
.end method

.method private updateDolbyBrightnessIfNeeded(Z)V
    .registers 4
    .param p1, "enable"  # Z

    .line 2560
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_DOLBY_VERSION_BRIGHTEN:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDolbyStateEnable:Z

    if-eq v0, p1, :cond_38

    .line 2561
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDolbyStateEnable:Z

    .line 2562
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    if-eqz v0, :cond_17

    .line 2563
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/RampRateController;->addHdrRateModifier(Z)V

    .line 2565
    :cond_17
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDolbyStateEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->setDolbyEnable(Z)V

    .line 2566
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutoBrightnessEnable:Z

    if-eqz v0, :cond_28

    .line 2567
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetBCBCState()V

    .line 2568
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetScreenGrayscaleState()V

    .line 2570
    :cond_28
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 2571
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalBrightnessController:Lcom/android/server/display/ThermalBrightnessController;

    if-eqz v0, :cond_38

    .line 2572
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalBrightnessController:Lcom/android/server/display/ThermalBrightnessController;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDolbyStateEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/server/display/ThermalBrightnessController;->setDolbyEnabled(Z)V

    .line 2575
    :cond_38
    return-void
.end method

.method private updateDolbyState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"  # Landroid/os/Bundle;

    .line 1980
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1981
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1982
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1983
    return-void
.end method

.method private updateForegroundApp()V
    .registers 3

    .line 2187
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/DisplayPowerControllerImpl$4;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayPowerControllerImpl$4;-><init>(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2213
    return-void
.end method

.method private updateForegroundAppSync()V
    .registers 4

    .line 2219
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mForegroundAppPackageName:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mForegroundAppPackageName:Ljava/lang/String;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v0, :cond_18

    .line 2221
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->updateCameraStatus(Z)V

    .line 2223
    :cond_18
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPendingForegroundAppPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mForegroundAppPackageName:Ljava/lang/String;

    .line 2224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPendingForegroundAppPackageName:Ljava/lang/String;

    .line 2225
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutoBrightnessEnable:Z

    if-eqz v0, :cond_30

    .line 2226
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mForegroundAppPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->updateCustomSceneState(Ljava/lang/String;I)V

    .line 2228
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutoBrightnessEnable:Z

    if-eqz v0, :cond_3b

    .line 2229
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateBCBCStateIfNeeded()V

    .line 2230
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateGameSceneEnable()V

    goto :goto_3e

    .line 2232
    :cond_3b
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateManualBrightnessBoostState()V

    .line 2234
    :goto_3e
    return-void
.end method

.method private updateGameSceneEnable()V
    .registers 4

    .line 2656
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v0, :cond_15

    .line 2657
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    .line 2658
    invoke-virtual {v1}, Lcom/android/server/display/MiuiDisplayCloudController;->getTouchCoverProtectionGameList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mForegroundAppPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 2657
    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->updateGameSceneEnable(Z)V

    .line 2660
    :cond_15
    return-void
.end method

.method private updateHdrBrightnessForLux(F)V
    .registers 6
    .param p1, "ambientLux"  # F

    .line 1317
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isHdrScene()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 1319
    .local v0, "updateHdrBrightnessForLux":Z
    :goto_d
    if-eqz v0, :cond_24

    .line 1320
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentLuxForHdr:F

    .line 1321
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->getRestrictedLuxHdrBrightness(F)F

    move-result v1

    .line 1322
    .local v1, "currentRestrictedHdrBrightness":F
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->getRestrictedLuxHdrBrightness(F)F

    move-result v2

    .line 1323
    .local v2, "pendingRestrictedOprHdrBrightness":F
    iput p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentLuxForHdr:F

    .line 1324
    cmpl-float v3, v1, v2

    if-eqz v3, :cond_24

    .line 1325
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 1328
    .end local v1  # "currentRestrictedHdrBrightness":F
    .end local v2  # "pendingRestrictedOprHdrBrightness":F
    :cond_24
    return-void
.end method

.method private updateHdrBrightnessForOpr(F)V
    .registers 6
    .param p1, "grayScale"  # F

    .line 1331
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isHdrScene()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    .line 1333
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getCurrentAmbientLux()F

    move-result v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLuxThresholdForHdr:[F

    aget v2, v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    nop

    .line 1334
    .local v1, "updateHdrBrightnessForOpr":Z
    :goto_1c
    if-eqz v1, :cond_33

    .line 1335
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScaleForHdr:F

    .line 1336
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getRestrictedOprHdrBrightness(F)F

    move-result v0

    .line 1337
    .local v0, "currentRestrictedHdrBrightness":F
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->getRestrictedOprHdrBrightness(F)F

    move-result v2

    .line 1338
    .local v2, "pendingRestrictedOprHdrBrightness":F
    iput p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScaleForHdr:F

    .line 1339
    cmpl-float v3, v0, v2

    if-eqz v3, :cond_33

    .line 1340
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 1343
    .end local v0  # "currentRestrictedHdrBrightness":F
    .end local v2  # "pendingRestrictedOprHdrBrightness":F
    :cond_33
    return-void
.end method

.method private updateManualBrightnessBoostState()V
    .registers 3

    .line 914
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    if-eqz v0, :cond_23

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isManualBrightnessBoostAppEnable()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 915
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    .line 916
    invoke-virtual {v0}, Lcom/android/server/display/MiuiDisplayCloudController;->getManualBoostDisableAppList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mForegroundAppPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 917
    .local v0, "isSupportManualBoostApp":Z
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsSupportManualBoostApp:Z

    if-eq v0, v1, :cond_23

    .line 918
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsSupportManualBoostApp:Z

    .line 919
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 922
    .end local v0  # "isSupportManualBoostApp":Z
    :cond_23
    return-void
.end method

.method private updateOutdoorMode()V
    .registers 5

    .line 3353
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "outdoor_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v3, 0x1

    :cond_12
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsOutdoorModeEnable:Z

    .line 3357
    return-void
.end method

.method private updateThermalBrightness(F)V
    .registers 4
    .param p1, "thermalNit"  # F

    .line 2039
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-nez v0, :cond_d

    .line 2040
    const-string v0, "DisplayPowerControllerImpl"

    const-string/jumbo v1, "updateThermalBrightness: no valid display device config!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    return-void

    .line 2043
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v0

    .line 2044
    .local v0, "thermalBrightness":F
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalMaxBrightness:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2b

    .line 2045
    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalMaxBrightness:F

    .line 2046
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalMaxBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2047
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetThermalRateModifier()V

    .line 2049
    :cond_26
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 2051
    :cond_2b
    return-void
.end method


# virtual methods
.method public CalculateCumulatedGrayValues()V
    .registers 13

    .line 1019
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1021
    .local v0, "currentTimestamp":J
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastTimeStamp:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const-string v3, "DisplayPowerControllerImpl"

    if-nez v2, :cond_33

    .line 1022
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    if-eqz v2, :cond_30

    .line 1023
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " timestamp not initialized yet"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_30
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastTimeStamp:J

    .line 1026
    return-void

    .line 1029
    :cond_33
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastTimeStamp:J

    sub-long v4, v0, v4

    .line 1030
    .local v4, "timeInterval":J
    const-wide/16 v6, 0x7d0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3f

    .line 1031
    const-wide/16 v4, 0x190

    .line 1034
    :cond_3f
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v6, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mTargetBrightness:F

    invoke-virtual {v2, v6}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result v2

    .line 1035
    .local v2, "targetNit":F
    iget-wide v6, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAccumulatedGrayValue:J

    iget v8, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScaleForIPA:F

    iget v9, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScaleForIPA:F

    mul-float/2addr v8, v9

    mul-float/2addr v8, v2

    long-to-float v9, v4

    mul-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x3f50624dd2f1a9fcL  # 0.001

    mul-double/2addr v8, v10

    double-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAccumulatedGrayValue:J

    .line 1037
    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    if-eqz v6, :cond_a4

    .line 1038
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DispalyId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " GrayScale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScaleForIPA:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Nit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " TimeInterval="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Accumulated="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAccumulatedGrayValue:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_a4
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastTimeStamp:J

    .line 1045
    return-void
.end method

.method public GetAccumulatedGrayValue()J
    .registers 3

    .line 1048
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAccumulatedGrayValue:J

    return-wide v0
.end method

.method public GetCurrentGrayScale()F
    .registers 2

    .line 1015
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScaleForIPA:F

    return v0
.end method

.method public adjustBrightness(FLcom/android/server/display/brightness/BrightnessReason;)F
    .registers 6
    .param p1, "brightness"  # F
    .param p2, "reason"  # Lcom/android/server/display/brightness/BrightnessReason;

    .line 1188
    move v0, p1

    .line 1189
    .local v0, "newBrightness":F
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/display/DisplayPowerControllerImpl;->adjustBrightnessToPeak(FZLcom/android/server/display/brightness/BrightnessReason;)F

    move-result v0

    .line 1190
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalBrightnessControlAvailable:Z

    if-eqz v2, :cond_e

    .line 1191
    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/display/DisplayPowerControllerImpl;->adjustBrightnessByThermal(FZLcom/android/server/display/brightness/BrightnessReason;)F

    move-result v0

    .line 1193
    :cond_e
    invoke-direct {p0, v0, p2}, Lcom/android/server/display/DisplayPowerControllerImpl;->adjustBrightnessByBattery(FLcom/android/server/display/brightness/BrightnessReason;)F

    move-result v0

    .line 1194
    return v0
.end method

.method public adjustSdrBrightness(FZLcom/android/server/display/brightness/BrightnessReason;ZZ)F
    .registers 10
    .param p1, "brightness"  # F
    .param p2, "useAutoBrightness"  # Z
    .param p3, "reason"  # Lcom/android/server/display/brightness/BrightnessReason;
    .param p4, "appliedAutoBrightness"  # Z
    .param p5, "isDimming"  # Z

    .line 1110
    move v0, p1

    .line 1112
    .local v0, "newBrightness":F
    invoke-direct {p0, v0, p5}, Lcom/android/server/display/DisplayPowerControllerImpl;->adjustBrightnessWhenDimming(FZ)F

    move-result v0

    .line 1113
    invoke-virtual {p3}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_e

    .line 1114
    return v0

    .line 1116
    :cond_e
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->getDisplayPowerState()Lcom/android/server/display/DisplayPowerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_69

    .line 1118
    invoke-direct {p0, v0, p3}, Lcom/android/server/display/DisplayPowerControllerImpl;->adjustBrightnessByBrightnessBoost(FLcom/android/server/display/brightness/BrightnessReason;)F

    move-result v0

    .line 1119
    if-eqz p2, :cond_3b

    .line 1121
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprBrightnessControlAvailable:Z

    if-eqz v1, :cond_30

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isHdrScene()Z

    move-result v1

    if-nez v1, :cond_30

    .line 1122
    invoke-direct {p0, v0, p3}, Lcom/android/server/display/DisplayPowerControllerImpl;->adjustBrightnessByOpr(FLcom/android/server/display/brightness/BrightnessReason;)F

    move-result v0

    .line 1125
    :cond_30
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isKeyguardOn()Z

    move-result v1

    if-nez v1, :cond_49

    .line 1126
    invoke-direct {p0, v0, p3}, Lcom/android/server/display/DisplayPowerControllerImpl;->adjustBrightnessByBcbc(FLcom/android/server/display/brightness/BrightnessReason;)F

    move-result v0

    goto :goto_49

    .line 1130
    :cond_3b
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    .line 1131
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v1

    .line 1130
    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/display/DisplayPowerControllerImpl;->canApplyingSunlightBrightness(FFLcom/android/server/display/brightness/BrightnessReason;)F

    move-result v1

    invoke-static {v0, v1}, Landroid/util/MathUtils;->max(FF)F

    move-result v0

    .line 1134
    :cond_49
    :goto_49
    invoke-virtual {p3}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v1

    and-int/2addr v1, v2

    if-eqz v1, :cond_54

    .line 1135
    invoke-direct {p0, v0, p3}, Lcom/android/server/display/DisplayPowerControllerImpl;->adjustBrightnessByPowerSaveMode(FLcom/android/server/display/brightness/BrightnessReason;)F

    move-result v0

    .line 1137
    :cond_54
    invoke-direct {p0, v0, v3, p3}, Lcom/android/server/display/DisplayPowerControllerImpl;->adjustBrightnessToPeak(FZLcom/android/server/display/brightness/BrightnessReason;)F

    move-result v0

    .line 1138
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalBrightnessControlAvailable:Z

    if-eqz v1, :cond_69

    .line 1139
    invoke-direct {p0, v0, v3, p3}, Lcom/android/server/display/DisplayPowerControllerImpl;->adjustBrightnessByThermal(FZLcom/android/server/display/brightness/BrightnessReason;)F

    move-result v0

    .line 1140
    if-eqz p4, :cond_69

    cmpl-float v1, v0, p1

    if-eqz v1, :cond_69

    .line 1141
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateFastRateStatus(F)V

    .line 1145
    :cond_69
    invoke-direct {p0, v0, p3}, Lcom/android/server/display/DisplayPowerControllerImpl;->adjustBrightnessByBattery(FLcom/android/server/display/brightness/BrightnessReason;)F

    move-result v0

    .line 1147
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBasedSdrBrightness:F

    invoke-static {p1, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 1148
    iput p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBasedSdrBrightness:F

    .line 1149
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetRateModifierOnAnimateValueChanged()V

    .line 1150
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->onBrightnessChanged(Z)V

    goto :goto_82

    .line 1152
    :cond_7f
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerControllerImpl;->onBrightnessChanged(Z)V

    .line 1154
    :goto_82
    invoke-direct {p0, p4}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetBcbcRateModifier(Z)V

    .line 1155
    return v0
.end method

.method protected appliedFastRate(FFI)Z
    .registers 5
    .param p1, "currentBrightness"  # F
    .param p2, "targetBrightness"  # F
    .param p3, "type"  # I

    .line 3190
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v0, :cond_b

    .line 3191
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->shouldUseFastRate(FFI)Z

    move-result v0

    return v0

    .line 3193
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public canApplyingSunlightBrightness(FFLcom/android/server/display/brightness/BrightnessReason;)F
    .registers 9
    .param p1, "currentScreenBrightness"  # F
    .param p2, "brightness"  # F
    .param p3, "reason"  # Lcom/android/server/display/brightness/BrightnessReason;

    .line 764
    invoke-virtual {p3}, Lcom/android/server/display/brightness/BrightnessReason;->getModifier()I

    move-result v0

    .line 765
    .local v0, "reasonModifier":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_109

    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    if-eqz v1, :cond_e

    goto/16 :goto_109

    .line 769
    :cond_e
    move v1, p2

    .line 770
    .local v1, "tempBrightness":F
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_MANUAL_BRIGHTNESS_BOOST:Z

    if-eqz v2, :cond_16

    .line 771
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->canApplyManualBrightnessBoost(F)V

    .line 773
    :cond_16
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightModeAvailable:Z

    const-string v3, "DisplayPowerControllerImpl"

    if-eqz v2, :cond_bc

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isAllowedUseSunlightMode()Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 774
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/ManualMaxBrightnessController;->isSupportManualDynamicRange()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 775
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/ManualMaxBrightnessController;->recalculateMaxBrightness2()Z

    .line 776
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/ManualMaxBrightnessController;->getManualMaxBrightness()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->getMaxManualBrightness(F)F

    move-result v1

    goto :goto_62

    .line 777
    :cond_3a
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 778
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_MANUAL_BRIGHTNESS_BOOST:Z

    if-eqz v2, :cond_57

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->shouldManualBoostForCurrentApp()Z

    move-result v2

    if-eqz v2, :cond_57

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMaxManualBoostBrightness:F

    const/high16 v4, -0x40800000  # -1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_57

    .line 780
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMaxManualBoostBrightness:F

    goto :goto_62

    .line 782
    :cond_57
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v2

    iget v1, v2, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    goto :goto_62

    .line 785
    :cond_60
    const/high16 v1, 0x3f800000  # 1.0f

    .line 787
    :goto_62
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedSunlightMode:Z

    if-nez v2, :cond_74

    .line 788
    iput p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastSettingsBrightnessBeforeApplySunlight:F

    .line 789
    sget-boolean v2, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_REFACTOR_BRIGHTNESS_POLICY:Z

    if-eqz v2, :cond_74

    .line 790
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    invoke-virtual {v2}, Lcom/android/server/display/RefactorNitController;->getCurrentLogicalNit()F

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastLogicalNitBeforeApplySunlight:F

    .line 793
    :cond_74
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedSunlightMode:Z

    .line 794
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightStateListener:Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;

    if-eqz v2, :cond_8c

    .line 795
    sget-boolean v2, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_REFACTOR_BRIGHTNESS_POLICY:Z

    if-eqz v2, :cond_87

    .line 796
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    const v4, 0x44848000  # 1060.0f

    invoke-virtual {v2, v4}, Lcom/android/server/display/RefactorNitController;->setCurrentLogicalNit(F)V

    .line 798
    :cond_87
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightStateListener:Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;

    invoke-interface {v2, v1}, Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;->updateScreenBrightnessSettingDueToSunlight(F)V

    .line 800
    :cond_8c
    const/16 v2, 0xd

    invoke-virtual {p3, v2}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    .line 801
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    if-eqz v2, :cond_108

    .line 802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePowerState: apply sunlight mode brightness.last brightness:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastSettingsBrightnessBeforeApplySunlight:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "last logical nit:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastLogicalNitBeforeApplySunlight:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_108

    .line 806
    :cond_bc
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedSunlightMode:Z

    if-eqz v2, :cond_108

    .line 807
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedSunlightMode:Z

    .line 809
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isSunlightModeDisabledByUser()Z

    move-result v2

    if-nez v2, :cond_df

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightStateListener:Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;

    if-eqz v2, :cond_df

    .line 810
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightStateListener:Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;

    iget v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastSettingsBrightnessBeforeApplySunlight:F

    invoke-interface {v2, v4}, Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;->updateScreenBrightnessSettingDueToSunlight(F)V

    .line 812
    sget-boolean v2, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_REFACTOR_BRIGHTNESS_POLICY:Z

    if-eqz v2, :cond_df

    .line 813
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    iget v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastLogicalNitBeforeApplySunlight:F

    invoke-virtual {v2, v4}, Lcom/android/server/display/RefactorNitController;->setCurrentLogicalNit(F)V

    .line 816
    :cond_df
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    if-eqz v2, :cond_108

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePowerState: exit sunlight mode brightness. reset brightness: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastSettingsBrightnessBeforeApplySunlight:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " reset logical nit: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastLogicalNitBeforeApplySunlight:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_108
    :goto_108
    return v1

    .line 767
    .end local v1  # "tempBrightness":F
    :cond_109
    :goto_109
    return p2
.end method

.method public clampDozeBrightness(F)F
    .registers 3
    .param p1, "dozeBrightness"  # F

    .line 3157
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->clampDozeBrightness(F)F

    move-result v0

    return v0
.end method

.method public clampHdrBrightnessIfNeeded()Z
    .registers 3

    .line 2294
    sget v0, Lcom/android/server/display/DisplayPowerControllerImpl;->CLAMPED_HDR_BRIGHTNESS_FOR_OPR_OPTIMIZE:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public convertBrightnessToNit(F)F
    .registers 6
    .param p1, "brightness"  # F

    .line 842
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-nez v0, :cond_7

    .line 843
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0

    .line 845
    :cond_7
    sget-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_REFACTOR_BRIGHTNESS_POLICY:Z

    if-eqz v0, :cond_47

    .line 846
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    .line 847
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v1, :cond_18

    .line 848
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getCurrentAmbientLux()F

    move-result v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    .line 849
    invoke-virtual {v2}, Lcom/android/server/display/RefactorNitController;->getCurrentLogicalNit()F

    move-result v2

    .line 846
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/RefactorNitController;->getCurrentNit(FFZ)F

    move-result v0

    .line 850
    .local v0, "currentNit":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentNit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", brightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayPowerControllerImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return v0

    .line 853
    .end local v0  # "currentNit":F
    :cond_47
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 2444
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightModeAvailable:Z

    if-eqz v0, :cond_c9

    .line 2445
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightController:Lcom/android/server/display/SunlightController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/SunlightController;->dump(Ljava/io/PrintWriter;)V

    .line 2446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedSunlightMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedSunlightMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastSettingsBrightnessBeforeApplySunlight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastSettingsBrightnessBeforeApplySunlight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastLogicalNitBeforeApplySunlight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastLogicalNitBeforeApplySunlight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SUPPORT_MANUAL_BRIGHTNESS_BOOST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_MANUAL_BRIGHTNESS_BOOST:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxManualBoostBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMaxManualBoostBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mManualBrightnessBoostEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualBrightnessBoostEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastManualBoostBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastManualBoostBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsSupportManualBoostApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsSupportManualBoostApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2455
    :cond_c9
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOutdoorModeAvailable:Z

    if-eqz v0, :cond_d2

    .line 2456
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOutdoorModeController:Lcom/android/server/display/OutdoorModeController;

    invoke-virtual {v0}, Lcom/android/server/display/OutdoorModeController;->dump()V

    .line 2458
    :cond_d2
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BCBC_ENABLE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/display/DisplayPowerControllerImpl;->BCBC_ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mGrayScale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAppliedBcbc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedBcbc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBcbcBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBcbcBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentGrayScale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mColorInversionEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mColorInversionEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2465
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurtainAnimationAvailable:Z

    if-eqz v1, :cond_1d3

    .line 2466
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2467
    const-string v1, "Curtain animation state: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurtainAnimationAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurtainAnimationAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurtainAnimationEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurtainAnimationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsDynamicLockScreenShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsDynamicLockScreenShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingShowCurtainAnimation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPendingShowCurtainAnimation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2474
    :cond_1d3
    sget-boolean v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mSupportGalleryHdr:Z

    if-eqz v1, :cond_248

    .line 2475
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2476
    const-string v1, "Gallery Hdr Boost:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSupportGalleryHdr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/display/DisplayPowerControllerImpl;->mSupportGalleryHdr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsGalleryHdrEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsGalleryHdrEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mGalleryHdrThrottled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGalleryHdrThrottled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentGalleryHdrBoostFactor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGalleryHdrBoostFactor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2482
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalObserver:Lcom/android/server/display/ThermalObserver;

    if-eqz v1, :cond_248

    .line 2483
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalObserver:Lcom/android/server/display/ThermalObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/ThermalObserver;->dump(Ljava/io/PrintWriter;)V

    .line 2487
    :cond_248
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCineLookBoostAvailable:Z

    if-eqz v1, :cond_29c

    .line 2488
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2489
    const-string v1, "Cine Look Brightness Boost:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCineLookBoostAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCineLookBoostAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCineLookBoostEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCineLookBoostEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCineLookBoostRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCineLookBoostRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2495
    :cond_29c
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalBrightnessController:Lcom/android/server/display/ThermalBrightnessController;

    if-eqz v1, :cond_2f0

    .line 2496
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalBrightnessController:Lcom/android/server/display/ThermalBrightnessController;

    invoke-virtual {v1, p1}, Lcom/android/server/display/ThermalBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 2497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mThermalMaxBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalMaxBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBasedSdrBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBasedSdrBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBasedBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBasedBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2502
    :cond_2f0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLevelThreshold:[I

    array-length v1, v1

    if-eqz v1, :cond_34d

    .line 2503
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2504
    const-string v1, "Low Battery Level:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLowBatteryLevelThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLevelThreshold:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLowBatteryLevelBrightnessThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLevelBrightnessThreshold:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLowBatteryLimitBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLimitBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2509
    :cond_34d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2510
    const-string v1, "BCL Level:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mBatteryThermalLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBatteryThermalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mBatteryThermalLimitBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBatteryThermalLimitBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mBclLowPowerMaxLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBclLowPowerMaxLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mBclBrightnessLimitThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBclBrightnessLimitThreshold:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2516
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprBrightnessControlAvailable:Z

    if-eqz v1, :cond_45d

    .line 2517
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2518
    const-string v1, "Opr Brightness Control:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOprBrightnessControlAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprBrightnessControlAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOprGrayscaleThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprGrayscaleThreshold:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOprNitThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprNitThreshold:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOprAmbientLuxThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprAmbientLuxThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAppliedMaxOprBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedMaxOprBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOprMaxNitThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprMaxNitThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2527
    :cond_45d
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    if-eqz v1, :cond_46e

    .line 2528
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2529
    const-string v0, "Cbm Config: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2530
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->dump(Ljava/io/PrintWriter;)V

    .line 2533
    :cond_46e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    if-eqz v0, :cond_477

    .line 2534
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/RampRateController;->dump(Ljava/io/PrintWriter;)V

    .line 2537
    :cond_477
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSdrBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    if-eqz v0, :cond_480

    .line 2538
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSdrBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->dump(Ljava/io/PrintWriter;)V

    .line 2541
    :cond_480
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    if-eqz v0, :cond_489

    .line 2542
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->dump(Ljava/io/PrintWriter;)V

    .line 2545
    :cond_489
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    if-eqz v0, :cond_492

    .line 2546
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/RefactorNitController;->dump(Ljava/io/PrintWriter;)V

    .line 2549
    :cond_492
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_DPC:Z

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    .line 2550
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    if-eqz v0, :cond_49f

    .line 2551
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/MiuiDisplayCloudController;->dump(Ljava/io/PrintWriter;)V

    .line 2554
    :cond_49f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingScreenOffAnimator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mWaitingScreenOffAnimator:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStopWaitingScreenOffAnimator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mStopWaitingScreenOffAnimator:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  is_rhythmic_mode_v2_supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/DisplayPowerControllerImpl;->IS_RHYTHMIC_MODE_V2_SUPPORTED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2557
    return-void
.end method

.method public getAnimatorValue(ZF)D
    .registers 5
    .param p1, "isSdr"  # Z
    .param p2, "timeDelta"  # F

    .line 3493
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSdrBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    if-eqz v0, :cond_18

    .line 3494
    if-eqz p1, :cond_11

    .line 3495
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSdrBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    invoke-virtual {v0, p2}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->getCurrentNit(F)D

    move-result-wide v0

    return-wide v0

    .line 3497
    :cond_11
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    invoke-virtual {v0, p2}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->getCurrentNit(F)D

    move-result-wide v0

    return-wide v0

    .line 3500
    :cond_18
    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    return-wide v0
.end method

.method public getCineLookBoostRatio()F
    .registers 3

    .line 1596
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCineLookBoostRatio:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_14

    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCineLookBoostRatio:F

    const/high16 v1, 0x41200000  # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11

    goto :goto_14

    .line 1601
    :cond_11
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCineLookBoostRatio:F

    return v0

    .line 1598
    :cond_14
    :goto_14
    const-string v0, "DisplayPowerControllerImpl"

    const-string/jumbo v1, "getCineLookBoostRatio: current cine look boost ratio is invalid."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0
.end method

.method public getClampedHdrBrightnessForOprOptimize()F
    .registers 2

    .line 2298
    sget v0, Lcom/android/server/display/DisplayPowerControllerImpl;->CLAMPED_HDR_BRIGHTNESS_FOR_OPR_OPTIMIZE:F

    return v0
.end method

.method public getCurrentAmbientLux()F
    .registers 2

    .line 3449
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v0, :cond_b

    .line 3450
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getCurrentAmbientLux()F

    move-result v0

    return v0

    .line 3452
    :cond_b
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0
.end method

.method public getCurrentAnimateValue()[F
    .registers 13

    .line 1815
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v0

    .line 1816
    .local v0, "value":F
    const/high16 v1, -0x40800000  # -1.0f

    .line 1817
    .local v1, "targetSliderVal":F
    const/high16 v2, -0x40800000  # -1.0f

    .line 1818
    .local v2, "currentSliderVal":F
    sget-boolean v3, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_REFACTOR_BRIGHTNESS_POLICY:Z

    if-eqz v3, :cond_15

    .line 1819
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    invoke-virtual {v3}, Lcom/android/server/display/RefactorNitController;->getCurrentSliderValue()F

    move-result v1

    .line 1820
    move v2, v1

    .line 1822
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isAnimating()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v3, :cond_c1

    .line 1823
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerController;->getDisplayPowerState()Lcom/android/server/display/DisplayPowerState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getSdrScreenBrightness()F

    move-result v0

    .line 1824
    const v3, 0x44bb8000  # 1500.0f

    .line 1825
    .local v3, "time":F
    sget-boolean v10, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_REFACTOR_BRIGHTNESS_POLICY:Z

    if-eqz v10, :cond_65

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    if-eqz v10, :cond_65

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    .line 1826
    invoke-virtual {v10}, Lcom/android/server/display/RampRateController;->isAutomaticBrightness()Z

    move-result v10

    if-eqz v10, :cond_65

    .line 1827
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    invoke-virtual {v10}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->getDuration()D

    move-result-wide v10

    double-to-float v3, v10

    .line 1828
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    invoke-virtual {v10}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->getCurrentSliderVal()F

    move-result v2

    .line 1829
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    invoke-virtual {v10}, Lcom/android/server/display/RefactorNitController;->isBrightening()Z

    move-result v10

    if-eqz v10, :cond_57

    cmpl-float v10, v2, v1

    if-gtz v10, :cond_63

    :cond_57
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    .line 1830
    invoke-virtual {v10}, Lcom/android/server/display/RefactorNitController;->isBrightening()Z

    move-result v10

    if-nez v10, :cond_6f

    cmpg-float v10, v2, v1

    if-gez v10, :cond_6f

    .line 1832
    :cond_63
    move v2, v1

    goto :goto_6f

    .line 1834
    :cond_65
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    if-eqz v10, :cond_6f

    .line 1835
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    invoke-virtual {v10}, Lcom/android/server/display/RampRateController;->getAnimationTime()F

    move-result v3

    .line 1837
    :cond_6f
    :goto_6f
    cmpg-float v6, v3, v6

    if-gez v6, :cond_74

    .line 1838
    const/4 v3, 0x0

    .line 1840
    :cond_74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getCurrentAnimateValue : brightness = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", time = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", targetSliderVal:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", currentSliderVal:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "DisplayPowerControllerImpl"

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    sget-boolean v6, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_REFACTOR_BRIGHTNESS_POLICY:Z

    if-eqz v6, :cond_ba

    .line 1844
    new-array v5, v5, [F

    aput v0, v5, v8

    aput v3, v5, v7

    aput v1, v5, v9

    aput v2, v5, v4

    return-object v5

    .line 1846
    :cond_ba
    new-array v4, v9, [F

    aput v0, v4, v8

    aput v3, v4, v7

    return-object v4

    .line 1849
    .end local v3  # "time":F
    :cond_c1
    sget-boolean v3, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_REFACTOR_BRIGHTNESS_POLICY:Z

    if-eqz v3, :cond_d0

    .line 1850
    new-array v3, v5, [F

    aput v0, v3, v8

    aput v6, v3, v7

    aput v1, v3, v9

    aput v2, v3, v4

    return-object v3

    .line 1852
    :cond_d0
    new-array v3, v9, [F

    aput v0, v3, v8

    aput v6, v3, v7

    return-object v3
.end method

.method public getCurrentMaxBrightness()F
    .registers 2

    .line 3060
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz v0, :cond_f

    .line 3061
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v0

    return v0

    .line 3063
    :cond_f
    const/high16 v0, 0x3f800000  # 1.0f

    return v0
.end method

.method public getCurrentScreenState()I
    .registers 2

    .line 895
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->getDisplayPowerState()Lcom/android/server/display/DisplayPowerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    return v0
.end method

.method protected getCustomBrightness(FLjava/lang/String;IFFZ)F
    .registers 16
    .param p1, "lux"  # F
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "category"  # I
    .param p4, "oldAutoBrightness"  # F
    .param p5, "newAutoBrightness"  # F
    .param p6, "isManuallySet"  # Z

    .line 3004
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    if-eqz v0, :cond_13

    .line 3005
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    iget v7, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOrientation:I

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

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
    .local v8, "isManuallySet":Z
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->getCustomBrightness(FLjava/lang/String;IFFIZ)F

    move-result p5

    .end local v6  # "newAutoBrightness":F
    .restart local p5  # "newAutoBrightness":F
    goto :goto_19

    .line 3004
    .end local v2  # "lux":F
    .end local v3  # "packageName":Ljava/lang/String;
    .end local v4  # "category":I
    .end local v5  # "oldAutoBrightness":F
    .end local v8  # "isManuallySet":Z
    .restart local p1  # "lux":F
    .restart local p2  # "packageName":Ljava/lang/String;
    .restart local p3  # "category":I
    .restart local p4  # "oldAutoBrightness":F
    .restart local p6  # "isManuallySet":Z
    :cond_13
    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    .line 3010
    .end local p1  # "lux":F
    .end local p2  # "packageName":Ljava/lang/String;
    .end local p3  # "category":I
    .end local p4  # "oldAutoBrightness":F
    .end local p6  # "isManuallySet":Z
    .restart local v2  # "lux":F
    .restart local v3  # "packageName":Ljava/lang/String;
    .restart local v4  # "category":I
    .restart local v5  # "oldAutoBrightness":F
    .restart local v8  # "isManuallySet":Z
    :goto_19
    return p5
.end method

.method public getDisplayID()I
    .registers 2

    .line 3397
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    return v0
.end method

.method public getDisplayType()I
    .registers 3

    .line 3456
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3457
    return v1

    .line 3459
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 3460
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_11

    .line 3461
    iget v1, v0, Landroid/view/DisplayInfo;->type:I

    return v1

    .line 3463
    :cond_11
    return v1
.end method

.method public getDozeBrightnessThreshold(Z)[F
    .registers 3
    .param p1, "state"  # Z

    .line 3164
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->getDozeBrightnessThreshold(Z)[F

    move-result-object v0

    return-object v0
.end method

.method protected getGalleryHdrBoostFactor(FF)F
    .registers 9
    .param p1, "sdrBacklight"  # F
    .param p2, "hdrBacklight"  # F

    .line 1665
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isGalleryHdrEnable()Z

    move-result v0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGalleryHdrBoostFactor:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    .line 1667
    return v1

    .line 1669
    :cond_f
    const-string/jumbo v0, "null"

    .line 1670
    .local v0, "tempReason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v1

    .line 1671
    .local v1, "hdrNit":F
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v2

    .line 1672
    .local v2, "sdrNit":F
    invoke-direct {p0, v1, v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->calculateGalleryHdrBoostFactor(FF)F

    move-result v3

    .line 1674
    .local v3, "factor":F
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isEnterGalleryHdr()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1676
    const-string v0, "enter_gallery_hdr_boost"

    goto :goto_40

    .line 1677
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isExitGalleryHdr()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1679
    const-string v0, "exit_gallery_hdr_boost"

    goto :goto_40

    .line 1680
    :cond_34
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedDimming:Z

    if-eqz v4, :cond_40

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isGalleryHdrEnable()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1682
    const-string v0, "enter_dim_state"

    .line 1684
    :cond_40
    :goto_40
    iput v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGalleryHdrBoostFactor:F

    .line 1685
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    if-eqz v4, :cond_a9

    .line 1686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getGalleryHdrBoostFactor: reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hdrBrightness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sdrBrightness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentBrightness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentBrightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentSdrBrightness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentSdrBrightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hdrNit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sdrNit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", factor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DisplayPowerControllerImpl"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_a9
    return v3
.end method

.method getGrayBrightnessFactor()F
    .registers 2

    .line 1538
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGrayBrightnessFactor:F

    return v0
.end method

.method public getHbmDataMinimumLux()F
    .registers 3

    .line 3037
    const v0, 0x45bb8000  # 6000.0f

    .line 3038
    .local v0, "minimumLux":F
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3040
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->getHbmData()Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v1

    iget v0, v1, Lcom/android/server/display/config/HighBrightnessModeData;->minimumLux:F

    .line 3042
    :cond_17
    return v0
.end method

.method public getMaxHbmBrightnessForPeak()F
    .registers 2

    .line 2290
    sget v0, Lcom/android/server/display/DisplayPowerControllerImpl;->MAX_HBM_BRIGHTNESS_FOR_PEAK:F

    return v0
.end method

.method public getMaxManualBrightness(F)F
    .registers 3
    .param p1, "maxBrightness"  # F

    .line 3555
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v0, :cond_b

    .line 3556
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getRefactorBrightness2(F)F

    move-result v0

    return v0

    .line 3558
    :cond_b
    const/high16 v0, -0x40800000  # -1.0f

    return v0
.end method

.method public getMaxManualBrightnessBoost()F
    .registers 3

    .line 872
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutoBrightnessEnable:Z

    const/high16 v1, -0x40800000  # -1.0f

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->shouldManualBoostForCurrentApp()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMaxManualBoostBrightness:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15

    .line 874
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMaxManualBoostBrightness:F

    return v0

    .line 876
    :cond_15
    return v1
.end method

.method public getMaxManualDynamicBrightness()F
    .registers 2

    .line 887
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

    if-eqz v0, :cond_f

    .line 888
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/ManualMaxBrightnessController;->getManualMaxBrightness()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getMaxManualBrightness(F)F

    move-result v0

    return v0

    .line 890
    :cond_f
    const/high16 v0, -0x40800000  # -1.0f

    return v0
.end method

.method public getMaxOutdoorBrightness()F
    .registers 2

    .line 3377
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsOutdoorModeEnable:Z

    if-eqz v0, :cond_7

    .line 3378
    const/high16 v0, 0x3f800000  # 1.0f

    return v0

    .line 3380
    :cond_7
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMaxOutdoorNormalBrightness:F

    return v0
.end method

.method public getMinBrightness()F
    .registers 2

    .line 3053
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz v0, :cond_f

    .line 3054
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v0

    return v0

    .line 3056
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public getNormalMaxBrightness()F
    .registers 2

    .line 3046
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz v0, :cond_f

    .line 3047
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->getNormalBrightnessMax()F

    move-result v0

    return v0

    .line 3049
    :cond_f
    const/high16 v0, 0x3f800000  # 1.0f

    return v0
.end method

.method public getProximityNegativeDebounceDelay(I)I
    .registers 3
    .param p1, "delay"  # I

    .line 3257
    const/4 v0, 0x0

    return v0
.end method

.method public getRefactorBrightness(FFZZ)F
    .registers 8
    .param p1, "lux"  # F
    .param p2, "logicalNit"  # F
    .param p3, "isNeedUpdateCurve"  # Z
    .param p4, "isTemporary"  # Z

    .line 3527
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3528
    const/4 p1, 0x0

    .line 3530
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    if-eqz v0, :cond_4a

    .line 3531
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1e

    if-eqz p3, :cond_1e

    .line 3532
    move v0, p1

    .line 3533
    .local v0, "finalLux":F
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    new-instance v2, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/DisplayPowerControllerImpl;FF)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->post(Ljava/lang/Runnable;)Z

    .line 3537
    .end local v0  # "finalLux":F
    :cond_1e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    .line 3538
    invoke-virtual {v1, p1, p2, p4}, Lcom/android/server/display/RefactorNitController;->getCurrentNit(FFZ)F

    move-result v1

    .line 3537
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v0

    .line 3539
    .local v0, "brightness":F
    if-eqz p3, :cond_49

    .line 3540
    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastSetBrightness:F

    .line 3541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRefactorBrightness , mLastSetBrightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastSetBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayPowerControllerImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    :cond_49
    return v0

    .line 3545
    .end local v0  # "brightness":F
    :cond_4a
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0
.end method

.method public getScreenBrightnessSetting()F
    .registers 2

    .line 3022
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v0

    return v0
.end method

.method public getSliderValue()F
    .registers 2

    .line 1858
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    invoke-virtual {v0}, Lcom/android/server/display/RefactorNitController;->getCurrentSliderValue()F

    move-result v0

    return v0
.end method

.method public getTargetBrightness()F
    .registers 2

    .line 3599
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mTargetBrightness:F

    return v0
.end method

.method public getTargetBrightness(FFZZ)F
    .registers 6
    .param p1, "lux"  # F
    .param p2, "logicalNit"  # F
    .param p3, "isNeedUpdateCurve"  # Z
    .param p4, "isTemporary"  # Z

    .line 3505
    if-eqz p3, :cond_14

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSdrBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    if-eqz v0, :cond_14

    .line 3506
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSdrBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    invoke-virtual {v0, p2}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->updateCurrentLogical(F)V

    .line 3507
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    invoke-virtual {v0, p2}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->updateCurrentLogical(F)V

    .line 3509
    :cond_14
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayPowerControllerImpl;->getRefactorBrightness(FFZZ)F

    move-result v0

    return v0
.end method

.method public handleOnSwitchUser(I)V
    .registers 3
    .param p1, "userSerial"  # I

    .line 2147
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    if-eqz v0, :cond_9

    .line 2148
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/RefactorNitController;->handleOnSwitchUser(I)V

    .line 2150
    :cond_9
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->loadSettings()V

    .line 2151
    return-void
.end method

.method public init(Lcom/android/server/display/DisplayPowerController;Landroid/content/Context;Landroid/os/Looper;IFFLcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/HighBrightnessModeController;Lcom/android/server/display/brightness/DisplayBrightnessController;)V
    .registers 27
    .param p1, "displayPowerController"  # Lcom/android/server/display/DisplayPowerController;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "looper"  # Landroid/os/Looper;
    .param p4, "displayId"  # I
    .param p5, "brightnessMin"  # F
    .param p6, "brightnessMax"  # F
    .param p7, "displayDeviceConfig"  # Lcom/android/server/display/DisplayDeviceConfig;
    .param p8, "logicalDisplay"  # Lcom/android/server/display/LogicalDisplay;
    .param p9, "hbmController"  # Lcom/android/server/display/HighBrightnessModeController;
    .param p10, "displayBrightnessController"  # Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 494
    move-object/from16 v4, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v5, p4

    iput-object v1, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    .line 495
    move-object/from16 v9, p1

    iput-object v9, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    .line 496
    iput v5, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    .line 497
    move-object/from16 v6, p7

    iput-object v6, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 498
    move-object/from16 v10, p8

    iput-object v10, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 499
    move-object/from16 v11, p9

    iput-object v11, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 500
    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/display/DisplayManagerServiceImpl;

    if-eqz v0, :cond_2c

    .line 501
    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerServiceImpl;

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayMangerServiceImpl:Lcom/android/server/display/DisplayManagerServiceImpl;

    .line 503
    :cond_2c
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayMangerServiceImpl:Lcom/android/server/display/DisplayManagerServiceImpl;

    if-eqz v0, :cond_39

    iget v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    if-nez v0, :cond_39

    .line 504
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayMangerServiceImpl:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayManagerServiceImpl;->setUpDisplayPowerControllerImpl(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    .line 506
    :cond_39
    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerControllerImpl;->isRearScreenDevice()Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_4d

    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayMangerServiceImpl:Lcom/android/server/display/DisplayManagerServiceImpl;

    if-eqz v0, :cond_4d

    iget v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    if-ne v0, v7, :cond_4d

    .line 508
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayMangerServiceImpl:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayManagerServiceImpl;->setUpSubDisplayPowerControllerImpl(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    .line 510
    :cond_4d
    new-instance v0, Lcom/android/server/display/ManualMaxBrightnessController;

    iget v3, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/display/ManualMaxBrightnessController;-><init>(Landroid/content/Context;ILandroid/os/Looper;)V

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

    .line 511
    nop

    .line 512
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayFeatureManagerServiceStub;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayFeatureManagerServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    .line 513
    iget v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    const/4 v3, 0x0

    if-nez v0, :cond_6e

    .line 514
    const-string v0, "config_sunlight_mode_available"

    invoke-static {v0, v7}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6e

    move v0, v7

    goto :goto_6f

    :cond_6e
    move v0, v3

    :goto_6f
    iput-boolean v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightModeAvailable:Z

    .line 515
    iget v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    if-nez v0, :cond_7f

    .line 516
    const-string v0, "config_outdoor_mode_available"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7f

    move v0, v7

    goto :goto_80

    :cond_7f
    move v0, v3

    :goto_80
    iput-boolean v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mOutdoorModeAvailable:Z

    .line 517
    iget v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    if-nez v0, :cond_97

    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    .line 518
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x11050016

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_97

    move v3, v7

    goto :goto_98

    :cond_97
    nop

    :goto_98
    iput-boolean v3, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurtainAnimationAvailable:Z

    .line 520
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 521
    const v3, 0x11050087

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalBrightnessControlAvailable:Z

    .line 522
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 523
    const v3, 0x1105006c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprBrightnessControlAvailable:Z

    .line 524
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 525
    const v3, 0x110b001d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprAmbientLuxThreshold:I

    .line 526
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1103004a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprGrayscaleThreshold:[I

    .line 528
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1103004b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprNitThreshold:[I

    .line 530
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 531
    const v3, 0x110b001e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprMaxNitThreshold:I

    .line 532
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 533
    const v3, 0x1107002f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mMaxManualBoostBrightness:F

    .line 534
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 535
    const v3, 0x11070101

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mMaxOutdoorNormalBrightness:F

    .line 536
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 537
    const v3, 0x110500ab

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mEnablePeakForIllegalGrayscale:Z

    .line 539
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11030040

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLevelThreshold:[I

    .line 541
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1103003f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mLowBatteryLevelBrightnessThreshold:[I

    .line 543
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x110500a8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mCineLookBoostAvailable:Z

    .line 545
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x110300f7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mBclBrightnessLimitThreshold:[F

    .line 547
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x110b0044

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mBclLowPowerMaxLevel:I

    .line 549
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x110500ce

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprHdrBrightnessControlAvailable:Z

    .line 551
    sget-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_REFACTOR_BRIGHTNESS_POLICY:Z

    if-eqz v0, :cond_1a4

    .line 552
    new-instance v0, Lcom/android/server/display/RefactorNitController;

    iget-object v3, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    iget-object v8, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v12, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    iget-object v13, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

    invoke-direct {v0, v3, v8, v12, v13}, Lcom/android/server/display/RefactorNitController;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;ILcom/android/server/display/ManualMaxBrightnessController;)V

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    .line 553
    new-instance v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    const-string v3, "_sdr"

    invoke-direct {v0, v3}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;-><init>(Ljava/lang/String;)V

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mSdrBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    .line 554
    new-instance v0, Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    const-string v3, "_hdr"

    invoke-direct {v0, v3}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;-><init>(Ljava/lang/String;)V

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    .line 556
    :cond_1a4
    iget-boolean v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprHdrBrightnessControlAvailable:Z

    if-eqz v0, :cond_1f6

    .line 557
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11030100

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprGrayscaleThresholdForHdr:[I

    .line 559
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11030101

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprNitThresholdForHdr:[I

    .line 561
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x110300fb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mLuxThresholdForHdr:[F

    .line 563
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x110300fc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mNitThresholdForHdr:[F

    .line 565
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mLuxThresholdForHdr:[F

    iget-object v3, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mNitThresholdForHdr:[F

    invoke-static {v0, v3}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mLuxToNitSplineForHdr:Landroid/util/Spline;

    .line 568
    :cond_1f6
    new-instance v0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    invoke-direct {v0, v4, v2}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;-><init>(Lcom/android/server/display/DisplayPowerControllerImpl;Landroid/os/Looper;)V

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    .line 569
    iget-boolean v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightModeAvailable:Z

    if-eqz v0, :cond_208

    .line 570
    new-instance v0, Lcom/android/server/display/SunlightController;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/android/server/display/SunlightController;-><init>(Landroid/content/Context;Lcom/android/server/display/SunlightController$Callback;Landroid/os/Looper;I)V

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightController:Lcom/android/server/display/SunlightController;

    .line 572
    :cond_208
    iget-boolean v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mOutdoorModeAvailable:Z

    if-eqz v0, :cond_213

    .line 573
    new-instance v0, Lcom/android/server/display/OutdoorModeController;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/android/server/display/OutdoorModeController;-><init>(Landroid/content/Context;Lcom/android/server/display/OutdoorModeController$Callback;Landroid/os/Looper;I)V

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mOutdoorModeController:Lcom/android/server/display/OutdoorModeController;

    .line 575
    :cond_213
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mISurfaceFlinger:Landroid/os/IBinder;

    .line 576
    move/from16 v12, p5

    iput v12, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mScreenBrightnessRangeMinimum:F

    .line 577
    move/from16 v13, p6

    iput v13, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mScreenBrightnessRangeMaximum:F

    .line 579
    new-instance v0, Lcom/android/server/display/DisplayPowerControllerImpl$SettingsObserver;

    iget-object v3, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    invoke-direct {v0, v4, v3}, Lcom/android/server/display/DisplayPowerControllerImpl$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerControllerImpl;Landroid/os/Handler;)V

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mSettingsObserver:Lcom/android/server/display/DisplayPowerControllerImpl$SettingsObserver;

    .line 580
    invoke-direct {v4}, Lcom/android/server/display/DisplayPowerControllerImpl;->registerSettingsObserver()V

    .line 581
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 582
    new-instance v0, Lcom/android/server/display/DisplayPowerControllerImpl$TaskStackListenerImpl;

    invoke-direct {v0, v4}, Lcom/android/server/display/DisplayPowerControllerImpl$TaskStackListenerImpl;-><init>(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mTaskStackListener:Lcom/android/server/display/DisplayPowerControllerImpl$TaskStackListenerImpl;

    .line 583
    const-class v0, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 584
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 585
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 586
    new-instance v0, Lcom/android/server/display/RampRateController;

    iget-object v3, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    move-object v15, v4

    move-object v4, v2

    move-object v2, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/RampRateController;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayPowerControllerImpl;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Looper;I)V

    move-object v8, v2

    move-object v14, v4

    iput-object v0, v8, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    .line 587
    if-eqz p4, :cond_27e

    iget v0, v8, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    if-ne v0, v7, :cond_279

    invoke-virtual {v8}, Lcom/android/server/display/DisplayPowerControllerImpl;->isRearScreenDevice()Z

    move-result v0

    if-eqz v0, :cond_279

    goto :goto_27e

    :cond_279
    move-object v4, v8

    move-object/from16 v8, p2

    goto/16 :goto_358

    .line 588
    :cond_27e
    :goto_27e
    new-instance v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v1, v8, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 589
    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v3

    iget-object v1, v8, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 590
    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->getNormalBrightnessMax()F

    move-result v4

    .line 591
    invoke-virtual {v8}, Lcom/android/server/display/DisplayPowerControllerImpl;->getHbmDataMinimumLux()F

    move-result v5

    move-object/from16 v1, p2

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;FFF)V

    iput-object v0, v8, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    .line 592
    new-instance v0, Lcom/android/server/display/MiuiDisplayCloudController;

    invoke-direct {v0, v14, v8, v1}, Lcom/android/server/display/MiuiDisplayCloudController;-><init>(Landroid/os/Looper;Lcom/android/server/display/MiuiDisplayCloudController$Callback;Landroid/content/Context;)V

    iput-object v0, v8, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    .line 594
    iget-object v0, v8, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11050033

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v8, Lcom/android/server/display/DisplayPowerControllerImpl;->mSupportIndividualBrightness:Z

    .line 596
    iget-object v0, v8, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11050017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v8, Lcom/android/server/display/DisplayPowerControllerImpl;->mSupportCustomBrightness:Z

    .line 598
    iget-boolean v0, v8, Lcom/android/server/display/DisplayPowerControllerImpl;->mSupportIndividualBrightness:Z

    if-nez v0, :cond_2c9

    iget-boolean v0, v8, Lcom/android/server/display/DisplayPowerControllerImpl;->mSupportCustomBrightness:Z

    if-eqz v0, :cond_2c6

    goto :goto_2c9

    :cond_2c6
    move-object v4, v8

    move-object v8, v1

    goto :goto_2f3

    .line 599
    :cond_2c9
    :goto_2c9
    new-instance v0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    iget-object v5, v8, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    .line 601
    invoke-virtual {v8}, Lcom/android/server/display/DisplayPowerControllerImpl;->getHbmDataMinimumLux()F

    move-result v6

    invoke-virtual {v8}, Lcom/android/server/display/DisplayPowerControllerImpl;->getNormalMaxBrightness()F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getMinBrightness()F

    move-result v8

    move-object/from16 v4, p0

    move-object/from16 v3, p7

    move-object v2, v14

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/DisplayPowerControllerImpl;Lcom/android/server/display/statistics/BrightnessDataProcessor;FFF)V

    move-object v8, v1

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    .line 602
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    iget-object v1, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    invoke-virtual {v0, v1}, Lcom/android/server/display/MiuiDisplayCloudController;->addCloudListener(Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;)V

    .line 603
    new-instance v0, Lcom/android/server/display/DisplayPowerControllerImpl$RotationWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lcom/android/server/display/DisplayPowerControllerImpl$RotationWatcher;-><init>(Lcom/android/server/display/DisplayPowerControllerImpl;Lcom/android/server/display/DisplayPowerControllerImpl-IA;)V

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mRotationWatcher:Lcom/android/server/display/DisplayPowerControllerImpl$RotationWatcher;

    .line 606
    :goto_2f3
    new-instance v0, Lcom/android/server/display/ThermalObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/android/server/display/ThermalObserver;-><init>(Landroid/os/Looper;Lcom/android/server/display/DisplayPowerControllerImpl;)V

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalObserver:Lcom/android/server/display/ThermalObserver;

    .line 607
    iget-boolean v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalBrightnessControlAvailable:Z

    if-eqz v0, :cond_32e

    .line 608
    new-instance v0, Lcom/android/server/display/ThermalBrightnessController;

    iget-object v1, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    .line 609
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalBrightnessCallback:Lcom/android/server/display/ThermalBrightnessController$Callback;

    iget v5, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/ThermalBrightnessController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/display/ThermalBrightnessController$Callback;Lcom/android/server/display/DisplayPowerControllerImpl;I)V

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalBrightnessController:Lcom/android/server/display/ThermalBrightnessController;

    .line 610
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalBrightnessController:Lcom/android/server/display/ThermalBrightnessController;

    iget-object v1, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0, v1}, Lcom/android/server/display/ThermalBrightnessController;->addThermalListener(Lcom/android/server/display/ThermalBrightnessController$ThermalListener;)V

    .line 611
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    iget-object v1, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalBrightnessController:Lcom/android/server/display/ThermalBrightnessController;

    invoke-virtual {v0, v1}, Lcom/android/server/display/MiuiDisplayCloudController;->addCloudListener(Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;)V

    .line 612
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    iget-object v1, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0, v1}, Lcom/android/server/display/MiuiDisplayCloudController;->addCloudListener(Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;)V

    .line 615
    :cond_32e
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, v4}, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->post(Ljava/lang/Runnable;)Z

    .line 619
    sget-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->IS_FOLDABLE_OR_FLIP_DEVICE:Z

    if-eqz v0, :cond_358

    .line 620
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 622
    .local v0, "deviceStateManager":Landroid/hardware/devicestate/DeviceStateManager;
    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    new-instance v3, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v3, v4}, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    invoke-direct {v2, v8, v3}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 627
    .end local v0  # "deviceStateManager":Landroid/hardware/devicestate/DeviceStateManager;
    :cond_358
    :goto_358
    invoke-static {}, Lcom/android/server/display/statistics/DisplayUsageStates;->getInstance()Lcom/android/server/display/statistics/DisplayUsageStates;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/statistics/DisplayUsageStates;->init()V

    .line 628
    nop

    .line 629
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getDozeBrightnessStrategy()Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->getStrategyStub()Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyStub;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;

    .line 630
    iget-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;

    iget-object v1, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    iget-object v3, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayFeatureManagerServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    iget v5, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    iget-object v6, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v7, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mScreenBrightnessRangeMinimum:F

    move-object v15, v4

    move-object v4, v3

    move-object v3, v15

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayPowerControllerImpl;Lcom/android/server/display/DisplayFeatureManagerServiceImpl;ILcom/android/server/display/DisplayDeviceConfig;F)V

    .line 633
    move-object v4, v3

    invoke-direct {v4}, Lcom/android/server/display/DisplayPowerControllerImpl;->computeBCBCAdjustmentParams()V

    .line 636
    new-instance v0, Lcom/android/server/display/DisplayPowerControllerImpl$2;

    invoke-direct {v0, v4}, Lcom/android/server/display/DisplayPowerControllerImpl$2;-><init>(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mHdrStateListener:Lcom/android/server/display/HighBrightnessModeController$HdrStateListener;

    .line 662
    const-class v0, Lcom/miui/server/rtboost/SchedBoostManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/rtboost/SchedBoostManagerInternal;

    iput-object v0, v4, Lcom/android/server/display/DisplayPowerControllerImpl;->mSchedBoostManagerInternal:Lcom/miui/server/rtboost/SchedBoostManagerInternal;

    .line 663
    return-void
.end method

.method public isAnimating()Z
    .registers 2

    .line 3102
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-eqz v0, :cond_b

    .line 3103
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v0

    return v0

    .line 3105
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isAnimating(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 3109
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-eqz v0, :cond_b

    .line 3110
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 3112
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isAutomaticBrightness()Z
    .registers 2

    .line 3401
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    if-eqz v0, :cond_b

    .line 3402
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    invoke-virtual {v0}, Lcom/android/server/display/RampRateController;->isAutomaticBrightness()Z

    move-result v0

    return v0

    .line 3404
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isBrightnessCurveOptimizePolicyDisable()Z
    .registers 2

    .line 3138
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    .line 3139
    invoke-virtual {v0}, Lcom/android/server/display/MiuiDisplayCloudController;->isBrightnessCurveOptimizePolicyDisable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 3138
    :goto_f
    return v0
.end method

.method public isCineLookBoostEnable()Z
    .registers 2

    .line 1587
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCineLookBoostEnable:Z

    return v0
.end method

.method public isColorInversionEnabled()Z
    .registers 2

    .line 1561
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mColorInversionEnabled:Z

    return v0
.end method

.method public isCurtainAnimationAvailable()Z
    .registers 2

    .line 690
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurtainAnimationAvailable:Z

    return v0
.end method

.method public isCurtainAnimationNeeded()Z
    .registers 2

    .line 695
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPendingShowCurtainAnimation:Z

    return v0
.end method

.method protected isEnterGalleryHdr()Z
    .registers 3

    .line 1646
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isGalleryHdrEnable()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastSlowChange:Z

    if-nez v0, :cond_20

    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mTargetBrightness:F

    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mTargetSdrBrightness:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedDimming:Z

    if-nez v0, :cond_20

    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mTargetBrightness:F

    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentBrightness:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method protected isExitGalleryHdr()Z
    .registers 3

    .line 1655
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentBrightness:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17

    .line 1656
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isGalleryHdrEnable()Z

    move-result v0

    if-nez v0, :cond_17

    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGalleryHdrBoostFactor:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 1655
    :goto_18
    return v0
.end method

.method public isFullAodState(I)Z
    .registers 3
    .param p1, "displayId"  # I

    .line 3385
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayFeatureManagerServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->isFullAodState(I)Z

    move-result v0

    return v0
.end method

.method public isFullAodStateForBrightness()Z
    .registers 2

    .line 1180
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;

    if-eqz v0, :cond_b

    .line 1181
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->getFullAodStateForBrightness()Z

    move-result v0

    return v0

    .line 1183
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isGalleryHdrEnable()Z
    .registers 2

    .line 1640
    sget-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSupportGalleryHdr:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsGalleryHdrEnable:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGalleryHdrThrottled:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isRearScreenDevice()Z
    .registers 2

    .line 3595
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isIndependentRearDevice()Z

    move-result v0

    return v0
.end method

.method public isResetShortTermModelPolicyDisable()Z
    .registers 2

    .line 3147
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    .line 3148
    invoke-virtual {v0}, Lcom/android/server/display/MiuiDisplayCloudController;->isResetShortTermModelPolicyDisable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 3147
    :goto_f
    return v0
.end method

.method public isShaderDynamicEffect()Z
    .registers 3

    .line 3311
    const-string/jumbo v0, "persist.display.state.shader"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSupportManualBrightnessBoost()Z
    .registers 2

    .line 868
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_MANUAL_BRIGHTNESS_BOOST:Z

    return v0
.end method

.method public isSupportManualDynamicBrightness()Z
    .registers 2

    .line 880
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

    if-eqz v0, :cond_b

    .line 881
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/ManualMaxBrightnessController;->isSupportManualDynamicRange()Z

    move-result v0

    return v0

    .line 883
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportOutdoorMode()Z
    .registers 2

    .line 3373
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOutdoorModeAvailable:Z

    return v0
.end method

.method public isSupportPeakBrightness()Z
    .registers 3

    .line 2286
    sget v0, Lcom/android/server/display/DisplayPowerControllerImpl;->MAX_HBM_BRIGHTNESS_FOR_PEAK:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected isTemporaryDimmingEnabled()Z
    .registers 3

    .line 2961
    const/4 v0, 0x0

    .line 2962
    .local v0, "enable":Z
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    if-eqz v1, :cond_b

    .line 2963
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    invoke-virtual {v1}, Lcom/android/server/display/RampRateController;->isTemporaryDimming()Z

    move-result v0

    .line 2965
    :cond_b
    return v0
.end method

.method public isUpdateBrightnessSetting(Z)V
    .registers 2
    .param p1, "state"  # Z

    .line 1811
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mUpdateBrightnessSetting:Z

    .line 1812
    return-void
.end method

.method public isWaitingScreenOffAnimator()Z
    .registers 3

    .line 3316
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mStopWaitingScreenOffAnimator:Z

    if-eqz v0, :cond_11

    .line 3317
    const-string v0, "DisplayPowerControllerImpl"

    const-string/jumbo v1, "wait screen off animator end"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mStopWaitingScreenOffAnimator:Z

    .line 3319
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mWaitingScreenOffAnimator:Z

    .line 3321
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mWaitingScreenOffAnimator:Z

    return v0
.end method

.method public mayBeReportUserDisableSunlightTemporary(F)V
    .registers 3
    .param p1, "tempBrightness"  # F

    .line 733
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightModeAvailable:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedSunlightMode:Z

    if-eqz v0, :cond_13

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_13

    .line 734
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightController:Lcom/android/server/display/SunlightController;

    invoke-virtual {v0}, Lcom/android/server/display/SunlightController;->setSunlightModeDisabledByUserTemporary()V

    .line 736
    :cond_13
    return-void
.end method

.method public notifyAonFlareEvents(IF)V
    .registers 4
    .param p1, "type"  # I
    .param p2, "preLux"  # F

    .line 3238
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    if-eqz v0, :cond_9

    .line 3239
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->notifyAonFlareEvents(IF)V

    .line 3241
    :cond_9
    return-void
.end method

.method public notifyBrightnessChangeIfNeeded(ZFZZFZFFZF)V
    .registers 33
    .param p1, "screenOn"  # Z
    .param p2, "brightness"  # F
    .param p3, "userInitiatedChange"  # Z
    .param p4, "useAutoBrightness"  # Z
    .param p5, "brightnessOverrideFromWindow"  # F
    .param p6, "lowPowerMode"  # Z
    .param p7, "ambientLux"  # F
    .param p8, "userDataPoint"  # F
    .param p9, "defaultConfig"  # Z
    .param p10, "actualBrightness"  # F

    .line 1090
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    if-eqz v1, :cond_66

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v1, :cond_66

    .line 1091
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->getHighBrightnessMode()I

    move-result v1

    if-eq v1, v3, :cond_21

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 1092
    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->isDolbyEnable()Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_21
    move v1, v2

    goto :goto_24

    :cond_23
    move v1, v4

    :goto_24
    move/from16 v17, v1

    .line 1093
    .local v17, "isHdrLayer":Z
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedDimming:Z

    if-nez v1, :cond_37

    iget v1, v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mPreviousDisplayPolicy:I

    if-ne v1, v3, :cond_34

    iget v1, v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentDisplayPolicy:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_34

    goto :goto_37

    :cond_34
    move/from16 v18, v4

    goto :goto_39

    :cond_37
    :goto_37
    move/from16 v18, v2

    .line 1097
    .local v18, "isDimmingChanged":Z
    :goto_39
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightModeActive:Z

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    .line 1101
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getMainFastAmbientLux()F

    move-result v19

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    .line 1102
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getAssistFastAmbientLux()F

    move-result v20

    .line 1103
    invoke-direct {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getSceneState()I

    move-result v21

    .line 1097
    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move/from16 v8, p10

    move/from16 v16, v1

    invoke-virtual/range {v5 .. v21}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->notifyBrightnessEventIfNeeded(ZFFZZFZFFZZZZFFI)V

    .line 1105
    .end local v17  # "isHdrLayer":Z
    .end local v18  # "isDimmingChanged":Z
    :cond_66
    return-void
.end method

.method public notifyDisableResetShortTermModel(Z)V
    .registers 3
    .param p1, "enable"  # Z

    .line 1756
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v0, :cond_9

    .line 1757
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->notifyDisableResetShortTermModel(Z)V

    .line 1759
    :cond_9
    return-void
.end method

.method public notifyDisplaySwapFinished()V
    .registers 3

    .line 3332
    sget-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->IS_FOLDABLE_OR_FLIP_DEVICE:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mFolded:Z

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastFoldedState:Z

    if-eq v0, v1, :cond_15

    .line 3333
    invoke-static {}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->getInstance()Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->notifyDisplaySwapFinished()V

    .line 3334
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mFolded:Z

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastFoldedState:Z

    .line 3336
    :cond_15
    return-void
.end method

.method public notifyFocusedWindowChanged(Ljava/lang/String;)V
    .registers 3
    .param p1, "focusedPackageName"  # Ljava/lang/String;

    .line 3327
    invoke-static {}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->getInstance()Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->notifyFocusedWindowChanged(Ljava/lang/String;)V

    .line 3328
    return-void
.end method

.method public notifyFullAodState(ZZ)V
    .registers 6
    .param p1, "isFullAodOpen"  # Z
    .param p2, "isFullAod"  # Z

    .line 3244
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    if-eqz v0, :cond_f

    .line 3245
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget v1, v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAmbientLux:F

    const-string v2, "aod_state_change"

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->notifyFullAodState(ZFZLjava/lang/String;)V

    .line 3247
    :cond_f
    return-void
.end method

.method public notifyOutdoorModeChanged(ZZ)V
    .registers 7
    .param p1, "isOutdoorModeEnable"  # Z
    .param p2, "autoBrightnessEnable"  # Z

    .line 1776
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsOutdoorModeEnable:Z

    if-eq v0, p1, :cond_4a

    .line 1777
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsOutdoorModeEnable:Z

    .line 1778
    const/4 v0, -0x2

    const-string v1, "brt_before_outdoor_mode"

    if-eqz p1, :cond_2a

    .line 1779
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    .line 1780
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerController;->getDisplayPowerState()Lcom/android/server/display/DisplayPowerState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v2

    .line 1781
    .local v2, "currentScreenBrightness":F
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1785
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOutdoorModeStateChangedListener:Lcom/android/server/display/DisplayPowerControllerStub$OutdoorModeStateChangedListener;

    if-eqz v0, :cond_49

    .line 1786
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOutdoorModeStateChangedListener:Lcom/android/server/display/DisplayPowerControllerStub$OutdoorModeStateChangedListener;

    .line 1787
    const/high16 v1, 0x3f800000  # 1.0f

    invoke-interface {v0, v1}, Lcom/android/server/display/DisplayPowerControllerStub$OutdoorModeStateChangedListener;->updateScreenBrightnessSettingDueToOutdoorMode(F)V

    goto :goto_49

    .line 1789
    .end local v2  # "currentScreenBrightness":F
    :cond_2a
    if-nez p2, :cond_49

    .line 1790
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    .line 1791
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/high16 v3, 0x7fc00000  # Float.NaN

    invoke-static {v2, v1, v3, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 1795
    .local v0, "brightnessBeforeOutdoorMode":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1796
    return-void

    .line 1798
    :cond_3f
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOutdoorModeStateChangedListener:Lcom/android/server/display/DisplayPowerControllerStub$OutdoorModeStateChangedListener;

    if-eqz v1, :cond_4a

    .line 1799
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOutdoorModeStateChangedListener:Lcom/android/server/display/DisplayPowerControllerStub$OutdoorModeStateChangedListener;

    .line 1800
    invoke-interface {v1, v0}, Lcom/android/server/display/DisplayPowerControllerStub$OutdoorModeStateChangedListener;->updateScreenBrightnessSettingDueToOutdoorMode(F)V

    goto :goto_4a

    .line 1789
    .end local v0  # "brightnessBeforeOutdoorMode":F
    :cond_49
    :goto_49
    nop

    .line 1804
    :cond_4a
    :goto_4a
    return-void
.end method

.method public notifyResetShortTermModelPolicy()V
    .registers 2

    .line 1532
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    if-eqz v0, :cond_9

    .line 1533
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteResetShortTermModelPolicy()V

    .line 1535
    :cond_9
    return-void
.end method

.method public notifySchedBoostScreenState(II)V
    .registers 4
    .param p1, "state"  # I
    .param p2, "displayId"  # I

    .line 3390
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSchedBoostManagerInternal:Lcom/miui/server/rtboost/SchedBoostManagerInternal;

    if-eqz v0, :cond_9

    .line 3391
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSchedBoostManagerInternal:Lcom/miui/server/rtboost/SchedBoostManagerInternal;

    invoke-interface {v0, p1, p2}, Lcom/miui/server/rtboost/SchedBoostManagerInternal;->updateScreenState(II)V

    .line 3393
    :cond_9
    return-void
.end method

.method public notifyScreenOffAnimatorEnd()V
    .registers 3

    .line 3261
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->sendEmptyMessage(I)Z

    .line 3262
    return-void
.end method

.method public notifySunlightModeChanged(Z)V
    .registers 3
    .param p1, "isSunlightModeEnable"  # Z

    .line 857
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_MANUAL_BRIGHTNESS_BOOST:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsSunlightModeEnable:Z

    if-eq v0, p1, :cond_18

    .line 859
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBootCompleted:Z

    if-nez v0, :cond_11

    if-eqz p1, :cond_11

    .line 860
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualBrightnessBoostEnable:Z

    .line 862
    :cond_11
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsSunlightModeEnable:Z

    .line 863
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 865
    :cond_18
    return-void
.end method

.method public notifySunlightStateChange(Z)V
    .registers 4
    .param p1, "active"  # Z

    .line 831
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    if-eqz v0, :cond_1d

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifySunlightStateChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_1d
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightModeActive:Z

    .line 835
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightStateListener:Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;

    if-eqz v0, :cond_28

    .line 836
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightStateListener:Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;

    invoke-interface {v0}, Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;->onSunlightStateChange()V

    .line 838
    :cond_28
    return-void
.end method

.method public notifyThresholdSunlightNitChanged(F)V
    .registers 4
    .param p1, "thresholdSunlightNit"  # F

    .line 1763
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightController:Lcom/android/server/display/SunlightController;

    if-eqz v0, :cond_d

    .line 1764
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightController:Lcom/android/server/display/SunlightController;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/SunlightController;->updateThresholdSunlightNit(Ljava/lang/Float;)V

    .line 1766
    :cond_d
    return-void
.end method

.method public notifyUpdateBrightness()V
    .registers 2

    .line 3250
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    if-eqz v0, :cond_9

    .line 3251
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->notifyUpdateBrightness()V

    .line 3253
    :cond_9
    return-void
.end method

.method public notifyUpdateBrightnessAnimInfo(FFF)V
    .registers 5
    .param p1, "currentBrightnessAnim"  # F
    .param p2, "brightnessAnim"  # F
    .param p3, "targetBrightnessAnim"  # F

    .line 2605
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mUpdateBrightnessAnimInfoEnable:Z

    if-eqz v0, :cond_13

    .line 2607
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isTemporaryDimmingEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2608
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->notifyUpdateBrightnessAnimInfo(FFF)V

    .line 2611
    :cond_13
    return-void
.end method

.method public notifyUpdateTempBrightnessTimeStamp(Z)V
    .registers 3
    .param p1, "enable"  # Z

    .line 2620
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    if-eqz v0, :cond_9

    .line 2621
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->notifyUpdateTempBrightnessTimeStampIfNeeded(Z)V

    .line 2623
    :cond_9
    return-void
.end method

.method public onAmbientLuxChange(F)V
    .registers 3
    .param p1, "ambientLux"  # F

    .line 3340
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalBrightnessController:Lcom/android/server/display/ThermalBrightnessController;

    if-eqz v0, :cond_9

    .line 3341
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mThermalBrightnessController:Lcom/android/server/display/ThermalBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ThermalBrightnessController;->onAmbientLuxChange(F)V

    .line 3343
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprHdrBrightnessControlAvailable:Z

    if-eqz v0, :cond_10

    .line 3344
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateHdrBrightnessForLux(F)V

    .line 3346
    :cond_10
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    if-eqz v0, :cond_1d

    .line 3347
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iput p1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAmbientLux:F

    .line 3348
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->onAmbientLuxChange(F)V

    .line 3350
    :cond_1d
    return-void
.end method

.method public onAnimateValueChanged(F)V
    .registers 3
    .param p1, "animateValue"  # F

    .line 3228
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBasedBrightness:F

    invoke-static {p1, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3229
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->onAnimateValueChanged(Z)V

    .line 3230
    return-void

    .line 3232
    :cond_d
    iput p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBasedBrightness:F

    .line 3233
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetRateModifierOnAnimateValueChanged()V

    .line 3234
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->onAnimateValueChanged(Z)V

    .line 3235
    return-void
.end method

.method public onAnimationEnd()V
    .registers 2

    .line 3219
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    if-eqz v0, :cond_9

    .line 3220
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    invoke-virtual {v0}, Lcom/android/server/display/RampRateController;->clearAllRateModifier()V

    .line 3222
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mUpdateBrightnessSetting:Z

    .line 3223
    return-void
.end method

.method public onBootCompleted()V
    .registers 2

    .line 2664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBootCompleted:Z

    .line 2665
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    if-eqz v0, :cond_c

    .line 2666
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->onBootCompleted()V

    .line 2671
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOutdoorModeAvailable:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsOutdoorModeEnable:Z

    if-eqz v0, :cond_17

    .line 2672
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->restoreOutdoorModeForBoot()V

    .line 2674
    :cond_17
    return-void
.end method

.method public onCurtainAnimationFinished()V
    .registers 2

    .line 700
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->setPendingShowCurtainAnimation(Z)V

    .line 701
    return-void
.end method

.method public receiveNoticeFromDisplayPowerController(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "code"  # I
    .param p2, "bundle"  # Landroid/os/Bundle;

    .line 1890
    packed-switch p1, :pswitch_data_16

    :pswitch_3  #0x2, 0x4, 0x6
    goto :goto_14

    .line 1901
    :pswitch_4  #0x7
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateCurrentGrayScaleForIPA(Landroid/os/Bundle;)V

    .line 1902
    goto :goto_14

    .line 1898
    :pswitch_8  #0x5
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateCurrentGrayScale(Landroid/os/Bundle;)V

    .line 1899
    goto :goto_14

    .line 1895
    :pswitch_c  #0x3
    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateDolbyState(Landroid/os/Bundle;)V

    .line 1896
    goto :goto_14

    .line 1892
    :pswitch_10  #0x1
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateGrayScale(Landroid/os/Bundle;)V

    .line 1893
    nop

    .line 1906
    :goto_14
    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_10  #00000001
        :pswitch_3  #00000002
        :pswitch_c  #00000003
        :pswitch_3  #00000004
        :pswitch_8  #00000005
        :pswitch_3  #00000006
        :pswitch_4  #00000007
    .end packed-switch
.end method

.method protected registerRotationWatcher(Z)V
    .registers 6
    .param p1, "enable"  # Z

    .line 2978
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSupportIndividualBrightness:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSupportCustomBrightness:Z

    if-eqz v0, :cond_37

    :cond_8
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRotationWatcher:Lcom/android/server/display/DisplayPowerControllerImpl$RotationWatcher;

    if-eqz v0, :cond_37

    .line 2980
    const-string v0, "DisplayPowerControllerImpl"

    const/4 v1, 0x0

    if-eqz p1, :cond_25

    .line 2981
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRotationListenerEnabled:Z

    if-nez v2, :cond_37

    .line 2982
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRotationListenerEnabled:Z

    .line 2983
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRotationWatcher:Lcom/android/server/display/DisplayPowerControllerImpl$RotationWatcher;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowManagerService;->watchRotation(Landroid/view/IRotationWatcher;I)I

    .line 2984
    const-string v1, "Register rotation listener."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 2987
    :cond_25
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRotationListenerEnabled:Z

    if-eqz v2, :cond_37

    .line 2988
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRotationListenerEnabled:Z

    .line 2989
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRotationWatcher:Lcom/android/server/display/DisplayPowerControllerImpl$RotationWatcher;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 2990
    const-string v1, "Unregister rotation listener."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    :cond_37
    :goto_37
    return-void
.end method

.method public resetAnimatorValue(ZZ)V
    .registers 4
    .param p1, "isSdr"  # Z
    .param p2, "isNeedUpdateFactor"  # Z

    .line 3482
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSdrBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    if-eqz v0, :cond_15

    .line 3483
    if-eqz p1, :cond_10

    .line 3484
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSdrBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    invoke-virtual {v0, p2}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->reset(Z)V

    goto :goto_15

    .line 3486
    :cond_10
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    invoke-virtual {v0, p2}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->reset(Z)V

    .line 3489
    :cond_15
    :goto_15
    return-void
.end method

.method public resetDefaultSpline()V
    .registers 3

    .line 3566
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    if-eqz v0, :cond_e

    .line 3567
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->post(Ljava/lang/Runnable;)Z

    .line 3571
    :cond_e
    return-void
.end method

.method public resetShortTermModel(Z)V
    .registers 3
    .param p1, "manually"  # Z

    .line 3027
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    if-eqz v0, :cond_9

    .line 3028
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->resetShortTermModel(Z)V

    .line 3030
    :cond_9
    return-void
.end method

.method public sendBrightnessToSurfaceFlingerIfNeeded(FFZ)V
    .registers 6
    .param p1, "target"  # F
    .param p2, "dozeBrightness"  # F
    .param p3, "isDimming"  # Z

    .line 1054
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->getDisplayPowerState()Lcom/android/server/display/DisplayPowerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    packed-switch v0, :pswitch_data_5a

    goto :goto_59

    .line 1056
    :pswitch_e  #0x2
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mActualScreenOnBrightness:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_59

    if-nez p3, :cond_59

    .line 1058
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightModeActive:Z

    if-eqz v0, :cond_22

    .line 1059
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastSettingsBrightnessBeforeApplySunlight:F

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_23

    .line 1060
    :cond_22
    move v0, p1

    :goto_23
    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mActualScreenOnBrightness:F

    goto :goto_59

    .line 1065
    :pswitch_26  #0x1, 0x3
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeScreenBrightness:F

    invoke-static {p2, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1066
    iput p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeScreenBrightness:F

    .line 1067
    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeInLowBrightness:Z

    .line 1070
    :cond_3b
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeInLowBrightness:Z

    if-eqz v0, :cond_42

    .line 1071
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeScreenBrightness:F

    goto :goto_44

    :cond_42
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mActualScreenOnBrightness:F

    .line 1072
    .local v0, "pendingBrightness":F
    :goto_44
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDesiredBrightness:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_59

    .line 1073
    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDesiredBrightness:F

    .line 1074
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDesiredBrightness:F

    .line 1075
    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDesiredBrightnessInt:I

    .line 1076
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDesiredBrightnessInt:I

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->sendSurfaceFlingerActualBrightness(I)V

    .line 1082
    .end local v0  # "pendingBrightness":F
    :cond_59
    :goto_59
    return-void

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_26  #00000001
        :pswitch_e  #00000002
        :pswitch_26  #00000003
    .end packed-switch
.end method

.method public sendDimStateToSurfaceFlinger(Z)V
    .registers 9
    .param p1, "isDim"  # Z

    .line 2681
    sget-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_IDLE_DIM:Z

    if-eqz v0, :cond_5f

    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    if-eqz v0, :cond_9

    goto :goto_5f

    .line 2684
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    const-string v1, "DisplayPowerControllerImpl"

    if-eqz v0, :cond_26

    .line 2685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDimStateToSurfaceFlinger is dim "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    :cond_26
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mISurfaceFlinger:Landroid/os/IBinder;

    if-eqz v0, :cond_5e

    .line 2688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2689
    .local v0, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2690
    move v2, p1

    .line 2691
    .local v2, "val":I
    const/16 v3, 0x106

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2692
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2693
    const-string/jumbo v3, "system"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2695
    :try_start_42
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mISurfaceFlinger:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x7983

    invoke-interface {v3, v6, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4b} :catch_52
    .catch Ljava/lang/SecurityException; {:try_start_42 .. :try_end_4b} :catch_52
    .catchall {:try_start_42 .. :try_end_4b} :catchall_50

    .line 2700
    nop

    :goto_4c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2701
    goto :goto_5e

    .line 2700
    :catchall_50
    move-exception v1

    goto :goto_5a

    .line 2697
    :catch_52
    move-exception v3

    .line 2698
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_53
    const-string v4, "Failed to send brightness to SurfaceFlinger"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_50

    .line 2700
    nop

    .end local v3  # "ex":Ljava/lang/Exception;
    goto :goto_4c

    :goto_5a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2701
    throw v1

    .line 2703
    .end local v0  # "data":Landroid/os/Parcel;
    .end local v2  # "val":I
    :cond_5e
    :goto_5e
    return-void

    .line 2682
    :cond_5f
    :goto_5f
    return-void
.end method

.method public setAppliedScreenBrightnessOverride(Z)V
    .registers 3
    .param p1, "isApplied"  # Z

    .line 1732
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedScreenBrightnessOverride:Z

    if-eq v0, p1, :cond_18

    .line 1733
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutoBrightnessEnable:Z

    if-eqz v0, :cond_d

    if-nez p1, :cond_d

    .line 1734
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetBCBCState()V

    .line 1736
    :cond_d
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedScreenBrightnessOverride:Z

    .line 1737
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    if-eqz v0, :cond_18

    .line 1738
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/RampRateController;->addOverrideRateModifier(Z)V

    .line 1741
    :cond_18
    return-void
.end method

.method public setAutoBrightnessState(Z)V
    .registers 3
    .param p1, "isAutoBrightness"  # Z

    .line 3585
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mUseAutoBrightness:Z

    if-eq p1, v0, :cond_6

    .line 3586
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mUseAutoBrightness:Z

    .line 3588
    :cond_6
    sget-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_REFACTOR_BRIGHTNESS_POLICY:Z

    if-eqz v0, :cond_f

    .line 3589
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/RefactorNitController;->setAutoBrightnessState(Z)V

    .line 3591
    :cond_f
    return-void
.end method

.method public setBrightnessBoost(F)V
    .registers 3
    .param p1, "brightnessBoostRatio"  # F

    .line 1609
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    if-eqz v0, :cond_b

    .line 1610
    iput p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessBoostRatio:F

    .line 1611
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 1613
    :cond_b
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 4
    .param p1, "config"  # Landroid/hardware/display/BrightnessConfiguration;

    .line 3033
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V

    .line 3034
    return-void
.end method

.method public setCustomCurveEnabledOnCommand(Z)V
    .registers 3
    .param p1, "enable"  # Z

    .line 3074
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    if-eqz v0, :cond_9

    .line 3075
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->setCustomCurveEnabledOnCommand(Z)V

    .line 3077
    :cond_9
    return-void
.end method

.method public setForceTrainEnabledOnCommand(Z)V
    .registers 3
    .param p1, "enable"  # Z

    .line 3088
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    if-eqz v0, :cond_9

    .line 3089
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->setForceTrainEnabledOnCommand(Z)V

    .line 3091
    :cond_9
    return-void
.end method

.method public setGrayScaleHist(Z)V
    .registers 6
    .param p1, "enbale"  # Z

    .line 997
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mEnableGrayHist:Z

    .line 998
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    if-eqz v0, :cond_1f

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGrayScaleHist enbale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_1f
    const v0, 0x90ff

    const/16 v1, 0x38

    if-eqz p1, :cond_2f

    .line 1002
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v2

    .line 1003
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v0}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    goto :goto_41

    .line 1005
    :cond_2f
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v2

    .line 1006
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    .line 1008
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastTimeStamp:J

    .line 1009
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAccumulatedGrayValue:J

    .line 1010
    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentGrayScaleForIPA:F

    .line 1012
    :goto_41
    return-void
.end method

.method public setIndividualModelEnabledOnCommand(Z)V
    .registers 3
    .param p1, "enable"  # Z

    .line 3081
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    if-eqz v0, :cond_9

    .line 3082
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->setIndividualModelEnabledOnCommand(Z)V

    .line 3084
    :cond_9
    return-void
.end method

.method public setManualAmbientLuxEnabled(ZZZ)V
    .registers 5
    .param p1, "isManualEnabled"  # Z
    .param p2, "isManualAmbientLuxEnabled"  # Z
    .param p3, "isManualAmbientLuxDisabledDueToDisplayOff"  # Z

    .line 3550
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/ManualMaxBrightnessController;->setManualAmbientLuxEnabled(ZZZ)V

    .line 3552
    return-void
.end method

.method public setOutdoorModeListener(Lcom/android/server/display/DisplayPowerControllerStub$OutdoorModeStateChangedListener;)V
    .registers 2
    .param p1, "listener"  # Lcom/android/server/display/DisplayPowerControllerStub$OutdoorModeStateChangedListener;

    .line 754
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOutdoorModeStateChangedListener:Lcom/android/server/display/DisplayPowerControllerStub$OutdoorModeStateChangedListener;

    .line 755
    return-void
.end method

.method public setRampAnimator(Lcom/android/server/display/RampAnimator$DualRampAnimator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/RampAnimator$DualRampAnimator<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;)V"
        }
    .end annotation

    .line 2091
    .local p1, "rampAnimator":Lcom/android/server/display/RampAnimator$DualRampAnimator;, "Lcom/android/server/display/RampAnimator$DualRampAnimator<Lcom/android/server/display/DisplayPowerState;>;"
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 2092
    return-void
.end method

.method public setScreenBrightnessByUser(FFLjava/lang/String;)V
    .registers 12
    .param p1, "lux"  # F
    .param p2, "brightness"  # F
    .param p3, "packageName"  # Ljava/lang/String;

    .line 3014
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(F)F

    move-result v0

    goto :goto_d

    :cond_b
    const/high16 v0, -0x40800000  # -1.0f

    .line 3015
    .local v0, "unAdjustedBrightness":F
    :goto_d
    cmpg-float v1, v0, p2

    if-gez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    move v5, v1

    .line 3016
    .local v5, "isBrightening":Z
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    if-eqz v1, :cond_24

    .line 3017
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    iget v7, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOrientation:I

    move v3, p1

    move v4, p2

    move-object v6, p3

    .end local p1  # "lux":F
    .end local p2  # "brightness":F
    .end local p3  # "packageName":Ljava/lang/String;
    .local v3, "lux":F
    .local v4, "brightness":F
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->setScreenBrightnessByUser(FFZLjava/lang/String;I)V

    goto :goto_27

    .line 3016
    .end local v3  # "lux":F
    .end local v4  # "brightness":F
    .end local v6  # "packageName":Ljava/lang/String;
    .restart local p1  # "lux":F
    .restart local p2  # "brightness":F
    .restart local p3  # "packageName":Ljava/lang/String;
    :cond_24
    move v3, p1

    move v4, p2

    move-object v6, p3

    .line 3019
    .end local p1  # "lux":F
    .end local p2  # "brightness":F
    .end local p3  # "packageName":Ljava/lang/String;
    .restart local v3  # "lux":F
    .restart local v4  # "brightness":F
    .restart local v6  # "packageName":Ljava/lang/String;
    :goto_27
    return-void
.end method

.method public setSunlightListener(Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;)V
    .registers 2
    .param p1, "listener"  # Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;

    .line 749
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSunlightStateListener:Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;

    .line 750
    return-void
.end method

.method public setUpAutoBrightness(Lcom/android/server/display/BrightnessMappingStrategy;Lcom/android/server/display/AutomaticBrightnessControllerStub;Lcom/android/server/display/DisplayDeviceConfig;Landroid/hardware/Sensor;)V
    .registers 9
    .param p1, "brightnessMapper"  # Lcom/android/server/display/BrightnessMappingStrategy;
    .param p2, "stub"  # Lcom/android/server/display/AutomaticBrightnessControllerStub;
    .param p3, "displayDeviceConfig"  # Lcom/android/server/display/DisplayDeviceConfig;
    .param p4, "lightSensor"  # Landroid/hardware/Sensor;

    .line 2057
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 2058
    iput-object p3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 2059
    move-object v0, p2

    check-cast v0, Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    .line 2060
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p0}, Lcom/android/server/display/BrightnessMappingStrategy;->setDisplayPowerControllerImpl(Lcom/android/server/display/DisplayPowerControllerStub;)V

    .line 2061
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v0, :cond_77

    .line 2062
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->setUpAutoBrightness(Lcom/android/server/display/DisplayPowerControllerImpl;Lcom/android/server/display/BrightnessMappingStrategy;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/LogicalDisplay;)V

    .line 2064
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    if-eqz v0, :cond_3d

    .line 2065
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCloudListener:Lcom/android/server/display/AutomaticBrightnessControllerImpl$CloudControllerListener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->setUpCloudControllerListener(Lcom/android/server/display/AutomaticBrightnessControllerImpl$CloudControllerListener;)V

    .line 2066
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->setDisplayDeviceConfig(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 2067
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->setBrightnessMapper(Lcom/android/server/display/BrightnessMappingStrategy;)V

    .line 2068
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessControllerImpl;)V

    .line 2071
    :cond_3d
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    if-eqz v0, :cond_48

    .line 2072
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->setAutoBrightnessComponent(Lcom/android/server/display/BrightnessMappingStrategy;)V

    .line 2074
    :cond_48
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 2075
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v0

    .line 2076
    .local v0, "highBrightnessModeData":Lcom/android/server/display/config/HighBrightnessModeData;
    if-eqz v0, :cond_61

    .line 2077
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->recalculationForBCBC()V

    .line 2078
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_HDR_HBM_BRIGHTEN:Z

    invoke-virtual {v1, v2}, Lcom/android/server/display/HighBrightnessModeController;->supportHdrBrightenHbm(Z)V

    .line 2079
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHdrStateListener:Lcom/android/server/display/HighBrightnessModeController$HdrStateListener;

    invoke-virtual {v1, v2}, Lcom/android/server/display/HighBrightnessModeController;->registerListener(Lcom/android/server/display/HighBrightnessModeController$HdrStateListener;)V

    .line 2081
    :cond_61
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v1, :cond_77

    sget v1, Lcom/android/server/display/DisplayPowerControllerImpl;->MAX_POWER_SAVE_MODE_NIT:F

    const/high16 v2, -0x40800000  # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_77

    .line 2083
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    sget v2, Lcom/android/server/display/DisplayPowerControllerImpl;->MAX_POWER_SAVE_MODE_NIT:F

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToBrightness(F)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMaxPowerSaveModeBrightness:F

    .line 2086
    .end local v0  # "highBrightnessModeData":Lcom/android/server/display/config/HighBrightnessModeData;
    :cond_77
    invoke-direct {p0, p4}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateAmbientLightSensor(Landroid/hardware/Sensor;)V

    .line 2087
    return-void
.end method

.method public setWaitingScreenOffAnimator(Z)V
    .registers 8
    .param p1, "performScreenOffTransition"  # Z

    .line 3266
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayId:I

    if-eqz v0, :cond_5

    .line 3267
    return-void

    .line 3270
    :cond_5
    const/4 v0, 0x0

    const-string v1, "DisplayPowerControllerImpl"

    if-eqz p1, :cond_59

    .line 3271
    const-string v2, ""

    .line 3273
    .local v2, "reason":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceStub;->get()Lcom/android/server/power/PowerManagerServiceStub;

    move-result-object v3

    .line 3274
    invoke-virtual {v3, v0}, Lcom/android/server/power/PowerManagerServiceStub;->getPowerGroupLastGoToSleep(I)Lcom/android/server/power/PowerManagerServiceStub$PowerGroupSleepData;

    move-result-object v3

    .line 3276
    .local v3, "powerGroupSleepData":Lcom/android/server/power/PowerManagerServiceStub$PowerGroupSleepData;
    if-eqz v3, :cond_26

    iget v4, v3, Lcom/android/server/power/PowerManagerServiceStub$PowerGroupSleepData;->goToSleepReason:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_26

    .line 3278
    const-string/jumbo v4, "skip wait screen off Animator due to device fold sleep"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    const-string v2, "device fold sleep"

    .line 3280
    const/4 p1, 0x0

    goto :goto_40

    .line 3281
    :cond_26
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mStopWaitingScreenOffAnimator:Z

    if-eqz v4, :cond_2f

    .line 3282
    const-string/jumbo v2, "stop request"

    .line 3283
    const/4 p1, 0x0

    goto :goto_40

    .line 3284
    :cond_2f
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerController;->getDisplayPowerState()Lcom/android/server/display/DisplayPowerState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_40

    .line 3286
    const-string/jumbo v2, "invalid"

    .line 3287
    const/4 p1, 0x0

    .line 3289
    :cond_40
    :goto_40
    if-nez p1, :cond_59

    .line 3290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skip wait screen off Animator due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    .end local v2  # "reason":Ljava/lang/String;
    .end local v3  # "powerGroupSleepData":Lcom/android/server/power/PowerManagerServiceStub$PowerGroupSleepData;
    :cond_59
    if-nez p1, :cond_5d

    .line 3294
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mStopWaitingScreenOffAnimator:Z

    .line 3297
    :cond_5d
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mWaitingScreenOffAnimator:Z

    if-eq v0, p1, :cond_9a

    .line 3298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wait screen off animator: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mWaitingScreenOffAnimator:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mWaitingScreenOffAnimator:Z

    .line 3301
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->removeMessages(I)V

    .line 3302
    if-eqz p1, :cond_9a

    .line 3303
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    const/high16 v2, 0x447a0000  # 1000.0f

    iget v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAnimatorDurationScale:F

    mul-float/2addr v3, v2

    float-to-long v2, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3307
    :cond_9a
    return-void
.end method

.method public shouldUseAutoBrightness()Z
    .registers 2

    .line 3580
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mUseAutoBrightness:Z

    return v0
.end method

.method public shouldUseGoodCurve()V
    .registers 2

    .line 3574
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    if-eqz v0, :cond_9

    .line 3575
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    invoke-virtual {v0}, Lcom/android/server/display/RefactorNitController;->shouldUseGoodCurve()V

    .line 3577
    :cond_9
    return-void
.end method

.method public showTouchCoverProtectionRect(Z)V
    .registers 3
    .param p1, "isShow"  # Z

    .line 2592
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v0, :cond_9

    .line 2593
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->showTouchCoverProtectionRect(Z)V

    .line 2595
    :cond_9
    return-void
.end method

.method protected startCbmStatsJob()V
    .registers 2

    .line 3067
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    if-eqz v0, :cond_9

    .line 3068
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->startCbmStatsJob()V

    .line 3070
    :cond_9
    return-void
.end method

.method protected startDetailThermalUsageStatsOnThermalChanged(IFZ)V
    .registers 6
    .param p1, "conditionId"  # I
    .param p2, "temperature"  # F
    .param p3, "brightnessChanged"  # Z

    .line 2923
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayPowerControllerImpl;IFZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->post(Ljava/lang/Runnable;)Z

    .line 2932
    return-void
.end method

.method public stop()V
    .registers 3

    .line 2579
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSettingsObserver:Lcom/android/server/display/DisplayPowerControllerImpl$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2580
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBatteryReceiver:Lcom/android/server/display/DisplayPowerControllerImpl$BatteryReceiver;

    if-eqz v0, :cond_16

    .line 2581
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBatteryReceiver:Lcom/android/server/display/DisplayPowerControllerImpl$BatteryReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2583
    :cond_16
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;

    if-eqz v0, :cond_1f

    .line 2584
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->stop()V

    .line 2586
    :cond_1f
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->post(Ljava/lang/Runnable;)Z

    .line 2588
    return-void
.end method

.method public stopManualMaxBrightnessController()V
    .registers 2

    .line 3562
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/ManualMaxBrightnessController;->stop()V

    .line 3563
    return-void
.end method

.method public supportRefactorBrightnessPolicy()Z
    .registers 2

    .line 3408
    sget-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->SUPPORT_REFACTOR_BRIGHTNESS_POLICY:Z

    return v0
.end method

.method public temporaryBrightnessStartChange(F)V
    .registers 3
    .param p1, "brightness"  # F

    .line 1720
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isOverrideBrightnessPolicyEnable()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedScreenBrightnessOverride:Z

    if-eqz v0, :cond_14

    .line 1721
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerServiceStub;->notifySystemBrightnessChange()V

    .line 1722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedScreenBrightnessOverride:Z

    .line 1724
    :cond_14
    iput p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastTemporaryBrightness:F

    .line 1725
    return-void
.end method

.method public updateAutoBrightness()V
    .registers 2

    .line 2997
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v0, :cond_9

    .line 2998
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->update()V

    .line 3000
    :cond_9
    return-void
.end method

.method public updateBCBCStateIfNeeded()V
    .registers 5

    .line 2240
    sget-boolean v0, Lcom/android/server/display/DisplayPowerControllerImpl;->BCBC_ENABLE:Z

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    if-eqz v0, :cond_85

    .line 2243
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    .line 2241
    invoke-virtual {v0}, Lcom/android/server/display/MiuiDisplayCloudController;->getBCBCAppList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mForegroundAppPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutoBrightnessEnable:Z

    if-eqz v0, :cond_27

    .line 2242
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isHdrScene()Z

    move-result v0

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsScreenOn:Z

    if-eqz v0, :cond_27

    .line 2243
    move v0, v1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 2244
    .local v0, "state":I
    :goto_28
    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBCBCState:I

    const-string v3, "DisplayPowerControllerImpl"

    if-eq v0, v2, :cond_69

    .line 2245
    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBCBCState:I

    .line 2246
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayFeatureManagerServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->updateBCBCState(I)V

    .line 2247
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    if-eqz v2, :cond_85

    .line 2248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v0, v1, :cond_43

    const-string v1, "Enter "

    goto :goto_45

    :cond_43
    const-string v1, "Exit "

    :goto_45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BCBC State, mForegroundAppPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mForegroundAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAutoBrightnessEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutoBrightnessEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 2252
    :cond_69
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDebug:Z

    if-eqz v1, :cond_85

    .line 2253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip BCBC State, mBCBCState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBCBCState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    .end local v0  # "state":I
    :cond_85
    :goto_85
    return-void
.end method

.method public updateBrightness()V
    .registers 2

    .line 1807
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 1808
    return-void
.end method

.method public updateBrightnessAnimInfoIfNeeded(Z)V
    .registers 3
    .param p1, "enable"  # Z

    .line 2632
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mUpdateBrightnessAnimInfoEnable:Z

    if-eq p1, v0, :cond_13

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    if-eqz v0, :cond_13

    .line 2633
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mUpdateBrightnessAnimInfoEnable:Z

    .line 2634
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mUpdateBrightnessAnimInfoEnable:Z

    if-nez v0, :cond_13

    .line 2635
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->notifyResetBrightnessAnimInfo()V

    .line 2638
    :cond_13
    return-void
.end method

.method public updateBrightnessChangeStatus(ZIZZFFFFILcom/android/server/display/brightness/BrightnessReason;Lcom/android/server/display/brightness/BrightnessReason;)V
    .registers 28
    .param p1, "animating"  # Z
    .param p2, "displayState"  # I
    .param p3, "slowChange"  # Z
    .param p4, "appliedDimming"  # Z
    .param p5, "currentBrightness"  # F
    .param p6, "currentSdrBrightness"  # F
    .param p7, "targetBrightness"  # F
    .param p8, "targetSdrBrightness"  # F
    .param p9, "displayPolicy"  # I
    .param p10, "reason"  # Lcom/android/server/display/brightness/BrightnessReason;
    .param p11, "reasonTemp"  # Lcom/android/server/display/brightness/BrightnessReason;

    .line 1415
    move-object/from16 v1, p0

    move/from16 v4, p1

    move/from16 v15, p2

    move/from16 v5, p3

    move/from16 v2, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    iget v0, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentSdrBrightness:F

    cmpl-float v0, v7, v0

    const-string v3, "DisplayPowerControllerImpl"

    if-nez v0, :cond_22

    iget v0, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mTargetBrightness:F

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_95

    .line 1417
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateBrightnessChangeStatus: animating: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", displayState: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", slowChange: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", appliedDimming: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", currentBrightness: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", currentSdrBrightness: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", targetBrightness: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", targetSdrBrightness: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", previousDisplayPolicy: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v11, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentDisplayPolicy:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", currentDisplayPolicy: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_95
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->sFlingOptimizeFeatureEnabled:Z

    if-eqz v0, :cond_d6

    .line 1431
    :try_start_99
    invoke-static {v9}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0

    iget v11, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->disable_idle_fps_value:I

    if-le v0, v11, :cond_a3

    const/4 v0, 0x1

    goto :goto_a4

    :cond_a3
    const/4 v0, 0x0

    :goto_a4
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->isCurrentCanSetFPS:Z

    .line 1432
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->isCurrentCanSetFPS:Z

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->isLastCanSetFPS:Z

    if-eq v0, v11, :cond_bd

    .line 1433
    const-class v0, Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->isCurrentCanSetFPS:Z

    invoke-interface {v0, v11}, Lcom/miui/app/smartpower/SmartPowerServiceInternal;->notifyBrightnessCanSetFPS(Z)V

    .line 1434
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->isCurrentCanSetFPS:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->isLastCanSetFPS:Z
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_bd} :catch_be

    .line 1438
    :cond_bd
    goto :goto_d6

    .line 1436
    :catch_be
    move-exception v0

    .line 1437
    .local v0, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateBrightnessChangeStatus: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_d6
    :goto_d6
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    if-eqz v0, :cond_eb

    .line 1442
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->isAnimating()Z

    move-result v3

    iget v11, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentDisplayPolicy:I

    iget v12, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastDisplayState:I

    move-object/from16 v14, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v2 .. v15}, Lcom/android/server/display/RampRateController;->updateBrightnessState(ZZZFFFFIIILcom/android/server/display/brightness/BrightnessReason;Lcom/android/server/display/brightness/BrightnessReason;I)V

    .line 1448
    :cond_eb
    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastAnimating:Z

    .line 1449
    iput v15, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastDisplayState:I

    .line 1450
    iput v6, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentBrightness:F

    .line 1451
    iput v7, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentSdrBrightness:F

    .line 1452
    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastSlowChange:Z

    .line 1453
    move/from16 v2, p4

    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mAppliedDimming:Z

    .line 1454
    iput v8, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mTargetBrightness:F

    .line 1455
    iput v9, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mTargetSdrBrightness:F

    .line 1456
    iget v0, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentDisplayPolicy:I

    iput v0, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mPreviousDisplayPolicy:I

    .line 1457
    iput v10, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mCurrentDisplayPolicy:I

    .line 1459
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v0, :cond_10c

    .line 1460
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v0, v5, v2, v6, v7}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->updateSlowChangeStatus(ZZFF)V

    .line 1463
    :cond_10c
    return-void
.end method

.method public updateBrightnessToDoze(F)V
    .registers 3
    .param p1, "brightnessState"  # F

    .line 2883
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;

    if-eqz v0, :cond_9

    .line 2884
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->updateNormalBrightness(F)V

    .line 2886
    :cond_9
    return-void
.end method

.method protected updateCbmState(Z)V
    .registers 3
    .param p1, "autoBrightnessEnabled"  # Z

    .line 3128
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    if-eqz v0, :cond_9

    .line 3129
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->updateCbmState(Z)V

    .line 3131
    :cond_9
    return-void
.end method

.method public updateCineLookBoostStateLocked(ZF)V
    .registers 4
    .param p1, "cineLookBoostEnable"  # Z
    .param p2, "cineLookBoostRatio"  # F

    .line 1577
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCineLookBoostAvailable:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCineLookBoostEnable:Z

    if-ne v0, p1, :cond_e

    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCineLookBoostRatio:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_17

    .line 1580
    :cond_e
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCineLookBoostEnable:Z

    .line 1581
    iput p2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCineLookBoostRatio:F

    .line 1582
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 1584
    :cond_17
    return-void
.end method

.method public updateCurrentGrayScale(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"  # Landroid/os/Bundle;

    .line 1923
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->removeMessages(I)V

    .line 1924
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1925
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1926
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1927
    return-void
.end method

.method public updateCurrentGrayScaleForIPA(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"  # Landroid/os/Bundle;

    .line 1930
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->removeMessages(I)V

    .line 1931
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1932
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1933
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1934
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mEnableGrayHist:Z

    if-eqz v1, :cond_1c

    .line 1935
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->CalculateCumulatedGrayValues()V

    .line 1937
    :cond_1c
    return-void
.end method

.method public updateCurrentLogicalNit(ZF)V
    .registers 5
    .param p1, "isSdr"  # Z
    .param p2, "currentBrightness"  # F

    .line 3513
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSdrBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-nez v0, :cond_d

    goto :goto_21

    .line 3517
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0, p2}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v0

    .line 3518
    .local v0, "currentNit":F
    if-eqz p1, :cond_1b

    .line 3519
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSdrBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    invoke-virtual {v1, v0}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->actualCurrentBrtToLogicalBrt(F)V

    goto :goto_20

    .line 3521
    :cond_1b
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    invoke-virtual {v1, v0}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->actualCurrentBrtToLogicalBrt(F)V

    .line 3523
    :goto_20
    return-void

    .line 3515
    .end local v0  # "currentNit":F
    :cond_21
    :goto_21
    return-void
.end method

.method protected updateCustomSceneState(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 3122
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    if-eqz v0, :cond_b

    .line 3123
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOrientation:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->updateCustomSceneState(Ljava/lang/String;I)V

    .line 3125
    :cond_b
    return-void
.end method

.method public updateFastRateStatus(F)V
    .registers 3
    .param p1, "brightness"  # F

    .line 2311
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v0, :cond_9

    .line 2312
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->updateFastRateStatus(F)V

    .line 2314
    :cond_9
    return-void
.end method

.method public updateGalleryHdrState(Z)V
    .registers 3
    .param p1, "enable"  # Z

    .line 1618
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsGalleryHdrEnable:Z

    if-eq v0, p1, :cond_b

    .line 1619
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsGalleryHdrEnable:Z

    .line 1620
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 1622
    :cond_b
    return-void
.end method

.method public updateGalleryHdrThermalThrottler(Z)V
    .registers 3
    .param p1, "throttled"  # Z

    .line 1629
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGalleryHdrThrottled:Z

    if-eq v0, p1, :cond_b

    .line 1630
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mGalleryHdrThrottled:Z

    .line 1631
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 1633
    :cond_b
    return-void
.end method

.method public updateGrayScale(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"  # Landroid/os/Bundle;

    .line 1909
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1910
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1911
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mHandler:Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1912
    return-void
.end method

.method public updateLogicalNit(F)V
    .registers 14
    .param p1, "brightness"  # F

    .line 3412
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz v0, :cond_ca

    const/high16 v0, -0x40800000  # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_ca

    .line 3413
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 3414
    .local v0, "firstFactor":D
    const-wide v2, 0x3fe21cac00000000L  # 0.5659999847412109

    .line 3415
    .local v2, "secondFactor":D
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v4, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v4

    .line 3416
    .local v4, "currentNit":F
    const/4 v5, 0x0

    .line 3417
    .local v5, "lux":F
    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutoBrightnessEnable:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_4b

    .line 3418
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getCurrentAmbientLux()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_5b

    .line 3419
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getCurrentAmbientLux()F

    move-result v5

    .line 3420
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    if-eqz v6, :cond_42

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    iget-object v6, v6, Lcom/android/server/display/RefactorNitController;->mHighLuxPoints:[F

    aget v6, v6, v7

    cmpl-float v6, v5, v6

    if-lez v6, :cond_42

    iget v6, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLastSetBrightness:F

    .line 3422
    invoke-static {p1, v6}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 3423
    return-void

    .line 3425
    :cond_42
    invoke-static {v5}, Lcom/android/server/display/RefactorBrightnessUtil;->getFirstFactor(F)D

    move-result-wide v0

    .line 3426
    invoke-static {v5}, Lcom/android/server/display/RefactorBrightnessUtil;->getSecondFactor(F)D

    move-result-wide v2

    goto :goto_5b

    .line 3428
    :cond_4b
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

    if-eqz v6, :cond_5b

    .line 3429
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

    invoke-virtual {v6}, Lcom/android/server/display/ManualMaxBrightnessController;->getManualFactorFirst()D

    move-result-wide v0

    .line 3430
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mManualMaxBrightnessController:Lcom/android/server/display/ManualMaxBrightnessController;

    invoke-virtual {v6}, Lcom/android/server/display/ManualMaxBrightnessController;->getManualFactorSecond()D

    move-result-wide v2

    .line 3432
    :cond_5b
    :goto_5b
    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/server/display/RefactorBrightnessUtil;->actualNitToLogicalNit(FDD)D

    move-result-wide v8

    const-wide/high16 v10, 0x4024000000000000L  # 10.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-float v6, v8

    const/high16 v8, 0x41200000  # 10.0f

    div-float/2addr v6, v8

    .line 3434
    .local v6, "logicalNit":F
    iget-object v8, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    invoke-virtual {v8}, Lcom/android/server/display/RefactorNitController;->getCurrentLogicalNit()F

    move-result v8

    .line 3435
    .local v8, "currentLogicalNit":F
    iget-boolean v9, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutoBrightnessEnable:Z

    if-eqz v9, :cond_80

    iget-object v9, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    if-eqz v9, :cond_80

    cmpl-float v9, v6, v8

    if-eqz v9, :cond_80

    .line 3437
    const/4 v9, 0x1

    invoke-virtual {p0, v5, v6, v9, v7}, Lcom/android/server/display/DisplayPowerControllerImpl;->getRefactorBrightness(FFZZ)F

    .line 3439
    :cond_80
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateLogicalNit currentNit: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", logicalNit: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", currentLogicalNit:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", firstFactor: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", secondFactor: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "DisplayPowerControllerImpl"

    invoke-static {v9, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3442
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    if-eqz v7, :cond_ca

    .line 3443
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRefactorNitController:Lcom/android/server/display/RefactorNitController;

    invoke-virtual {v7, v6}, Lcom/android/server/display/RefactorNitController;->setCurrentLogicalNit(F)V

    .line 3446
    .end local v0  # "firstFactor":D
    .end local v2  # "secondFactor":D
    .end local v4  # "currentNit":F
    .end local v5  # "lux":F
    .end local v6  # "logicalNit":F
    .end local v8  # "currentLogicalNit":F
    :cond_ca
    return-void
.end method

.method public updateRampAnimatorLux(ZFF)V
    .registers 6
    .param p1, "isSdr"  # Z
    .param p2, "currentNit"  # F
    .param p3, "targetNit"  # F

    .line 3469
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSdrBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    if-eqz v0, :cond_4a

    .line 3470
    if-eqz p1, :cond_14

    .line 3471
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mSdrBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getCurrentAmbientLux()F

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->updateLux(FFF)V

    goto :goto_1d

    .line 3473
    :cond_14
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mBrightnessAnimator:Lcom/android/server/display/RefactorAutoBrightnessAnimator;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getCurrentAmbientLux()F

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/display/RefactorAutoBrightnessAnimator;->updateLux(FFF)V

    .line 3475
    :goto_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRampAnimatorLux: isSdr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " currentNit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetNit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    :cond_4a
    return-void
.end method

.method public updateRampRate(Ljava/lang/String;FFF)F
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "currentBrightness"  # F
    .param p3, "targetBrightness"  # F
    .param p4, "rate"  # F

    .line 3182
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    if-eqz v0, :cond_b

    .line 3183
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mRampRateController:Lcom/android/server/display/RampRateController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/RampRateController;->updateBrightnessRate(Ljava/lang/String;FFF)F

    move-result v0

    return v0

    .line 3186
    :cond_b
    return p4
.end method

.method public updateScreenGrayscaleStateIfNeeded()V
    .registers 9

    .line 2262
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isSupportPeakBrightness()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->clampHdrBrightnessIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2263
    :cond_e
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isHdrVideo()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    .line 2264
    .local v0, "peakState":Z
    :goto_17
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprBrightnessControlAvailable:Z

    if-eqz v3, :cond_34

    .line 2265
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isHdrScene()Z

    move-result v3

    if-nez v3, :cond_34

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    .line 2267
    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getCurrentAmbientLux()F

    move-result v3

    iget v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprAmbientLuxThreshold:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_34

    move v3, v1

    goto :goto_35

    :cond_34
    move v3, v2

    .line 2268
    .local v3, "oprState":Z
    :goto_35
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mOprHdrBrightnessControlAvailable:Z

    if-eqz v4, :cond_53

    .line 2269
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isHdrScene()Z

    move-result v4

    if-eqz v4, :cond_53

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v4, :cond_53

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    .line 2271
    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getCurrentAmbientLux()F

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mLuxThresholdForHdr:[F

    aget v5, v5, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_53

    move v4, v1

    goto :goto_54

    :cond_53
    move v4, v2

    .line 2273
    .local v4, "oprHdrState":Z
    :goto_54
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutoBrightnessEnable:Z

    if-eqz v5, :cond_68

    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsScreenOn:Z

    if-eqz v5, :cond_68

    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mEnablePeakForIllegalGrayscale:Z

    if-nez v5, :cond_68

    if-nez v0, :cond_66

    if-nez v3, :cond_66

    if-eqz v4, :cond_68

    :cond_66
    move v5, v1

    goto :goto_69

    :cond_68
    move v5, v2

    .line 2277
    .local v5, "state":Z
    :goto_69
    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mScreenGrayscaleState:Z

    if-eq v5, v6, :cond_99

    .line 2278
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_77

    const-string v7, "Starting"

    goto :goto_79

    :cond_77
    const-string v7, "Ending"

    :goto_79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " update screen gray scale."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DisplayPowerControllerImpl"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mScreenGrayscaleState:Z

    .line 2280
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayFeatureManagerServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    iget-boolean v7, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mScreenGrayscaleState:Z

    if-eqz v7, :cond_95

    .line 2281
    goto :goto_96

    :cond_95
    move v1, v2

    .line 2280
    :goto_96
    invoke-virtual {v6, v1}, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->updateScreenGrayscaleState(I)V

    .line 2283
    :cond_99
    return-void
.end method

.method public updateScreenState(FI)V
    .registers 6
    .param p1, "brightnessState"  # F
    .param p2, "policy"  # I

    .line 2867
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    .line 2868
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->getDisplayPowerState()Lcom/android/server/display/DisplayPowerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    const/4 v0, 0x3

    if-eq p2, v0, :cond_17

    if-ne p2, v1, :cond_19

    :cond_17
    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 2870
    .local v0, "state":Z
    :goto_1a
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsScreenOn:Z

    if-eq v1, v0, :cond_36

    .line 2871
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsScreenOn:Z

    .line 2872
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v1, :cond_2b

    .line 2873
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->updateScreenState(Z)V

    .line 2875
    :cond_2b
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl;->mIsScreenOn:Z

    invoke-direct {p0, p1, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->startUpdateThermalStats(FZ)V

    .line 2876
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetScreenGrayscaleState()V

    .line 2877
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetBCBCState()V

    .line 2879
    :cond_36
    return-void
.end method
