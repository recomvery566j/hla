# classes.dex

.class public Lcom/android/server/display/statistics/BrightnessDataProcessor;
.super Ljava/lang/Object;
.source "BrightnessDataProcessor.java"

# interfaces
.implements Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;
.implements Lcom/android/server/display/ThermalBrightnessController$ThermalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;,
        Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;,
        Lcom/android/server/display/statistics/BrightnessDataProcessor$TaskStackListenerImpl;,
        Lcom/android/server/display/statistics/BrightnessDataProcessor$RotationWatcher;,
        Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;,
        Lcom/android/server/display/statistics/BrightnessDataProcessor$SensorListener;,
        Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;,
        Lcom/android/server/display/statistics/BrightnessDataProcessor$ModelEventCallback;,
        Lcom/android/server/display/statistics/BrightnessDataProcessor$ScreenStateReceiver;
    }
.end annotation


# static fields
.field private static final AON_FLARE_EFFECTIVE_TIME:J = 0xea60L

.field private static final BELOW_THRESHOLD_RESET_MODE:Ljava/lang/String; = "below_threshold_reset_mode"

.field private static final DEBOUNCE_REPORT_BRIGHTNESS:I = 0xbb8

.field private static final DEBOUNCE_REPORT_DISABLE_AUTO_BRIGHTNESS_EVENT:J = 0x493e0L

.field private static final DEBUG:Z

.field private static final DEBUG_REPORT_TIME_DURATION:J = 0x1d4c0L

.field private static final DEFAULT_RESET_MODE:Ljava/lang/String; = "default_reset_mode"

.field private static final DISABLE_SECURITY_BY_MI_SHOW:Ljava/lang/String; = "disable_security_by_mishow"

.field private static final EQUAL_THRESHOLD_RESET_MODE:Ljava/lang/String; = "equal_threshold_reset_mode"

.field private static final FACTOR_DARK_MODE:I = 0x4

.field private static final FACTOR_DC_MODE:I = 0x2

.field private static final FACTOR_READING_MODE:I = 0x1

.field private static final LUX_SPLIT_HIGH:I = 0xdac

.field private static final LUX_SPLIT_LOW:I = 0x1e

.field private static final LUX_SPLIT_LOW_ONE:I = 0x5a

.field private static final LUX_SPLIT_LOW_THREE:I = 0x190

.field private static final LUX_SPLIT_LOW_TWO:I = 0x15e

.field private static final LUX_SPLIT_MEDIUM:I = 0x384

.field private static final LUX_SPLIT_SUPREME_FIVE:I = 0x186a0

.field private static final LUX_SPLIT_SUPREME_FOUR:I = 0x15f90

.field private static final LUX_SPLIT_SUPREME_ONE:I = 0x2328

.field private static final LUX_SPLIT_SUPREME_THREE:I = 0x4e20

.field private static final LUX_SPLIT_SUPREME_TWO:I = 0x2710

.field private static final MAX_NIT_SPAN:I = 0x38

.field private static final MAX_SPAN_INDEX:I = 0x43

.field private static final MSG_BRIGHTNESS_REPORT_DEBOUNCE:I = 0x3

.field private static final MSG_HANDLE_EVENT_CHANGED:I = 0x1

.field private static final MSG_HDR_CHANGED:I = 0x10

.field private static final MSG_LUX_SPAN_REPORT_DEBOUNCE:I = 0x11

.field private static final MSG_REPORT_DISABLE_AUTO_BRIGHTNESS_EVENT:I = 0xd

.field private static final MSG_RESET_BRIGHTNESS_ANIMATION_INFO:I = 0xc

.field private static final MSG_RESET_FLARE_NOT_SUPPRESS_DARKEN_STATUS:I = 0xf

.field private static final MSG_RESET_FLARE_SUPPRESS_DARKEN_STATUS:I = 0xe

.field private static final MSG_ROTATION_CHANGED:I = 0x6

.field private static final MSG_UPDATE_BRIGHTNESS_ANIMATION_DURATION:I = 0xa

.field private static final MSG_UPDATE_BRIGHTNESS_ANIMATION_INFO:I = 0x8

.field private static final MSG_UPDATE_BRIGHTNESS_ANIMATION_TARGET:I = 0x9

.field private static final MSG_UPDATE_BRIGHTNESS_STATISTICS_DATA:I = 0x7

.field private static final MSG_UPDATE_FOREGROUND_APP:I = 0x5

.field private static final MSG_UPDATE_MOTION_EVENT:I = 0x2

.field private static final MSG_UPDATE_SCREEN_STATE:I = 0x4

.field private static final MSG_UPDATE_TEMPORARY_BRIGHTNESS_TIME_STAMP:I = 0xb

.field private static final OVER_THRESHOLD_RESET_MODE:Ljava/lang/String; = "over_threshold_reset_mode"

.field private static final REASON_UPDATE_BRIGHTNESS_USAGE_REPORT:Ljava/lang/String; = "report"

.field private static final REASON_UPDATE_BRIGHTNESS_USAGE_SCREEN_OFF:Ljava/lang/String; = "screen off"

.field private static final REASON_UPDATE_BRIGHTNESS_USAGE_SPAN_CHANGE:Ljava/lang/String; = "brightness span change"

.field private static final SCREEN_NIT_SPAN_EIGHT:F = 1200.0f

.field private static final SCREEN_NIT_SPAN_ELEVEN:F = 1.0f

.field private static final SCREEN_NIT_SPAN_FIVE:F = 500.0f

.field private static final SCREEN_NIT_SPAN_FOUR:F = 80.0f

.field private static final SCREEN_NIT_SPAN_NINE:F = 2200.0f

.field private static final SCREEN_NIT_SPAN_ONE:F = 3.5f

.field private static final SCREEN_NIT_SPAN_SEVEN:F = 1060.0f

.field private static final SCREEN_NIT_SPAN_SIX:F = 1000.0f

.field private static final SCREEN_NIT_SPAN_TEN:F = 5000.0f

.field private static final SCREEN_NIT_SPAN_THREE:F = 50.0f

.field private static final SCREEN_NIT_SPAN_TWELVE:F = 2.0f

.field private static final SCREEN_NIT_SPAN_TWO:F = 8.0f

.field private static final SENSOR_TYPE_LIGHT_FOV:I = 0x1fa2a8f

.field private static final SPAN_LUX_STEP_HIGH:I = 0xc8

.field private static final SPAN_LUX_STEP_LOW:I = 0x5

.field private static final SPAN_LUX_STEP_LOW_ONE:I = 0xa

.field private static final SPAN_LUX_STEP_LOW_TWO:I = 0x32

.field private static final SPAN_LUX_STEP_MEDIUM:I = 0x64

.field private static final SPAN_LUX_STEP_SUPREME_ONE:I = 0x1f4

.field private static final SPAN_LUX_STEP_SUPREME_THREE:I = 0x2710

.field private static final SPAN_LUX_STEP_SUPREME_TWO:I = 0x1388

.field private static final SPAN_SCREEN_NIT_STEP_FIVE:F = 200.0f

.field private static final SPAN_SCREEN_NIT_STEP_FOUR:F = 50.0f

.field private static final SPAN_SCREEN_NIT_STEP_ONE:F = 7.0f

.field private static final SPAN_SCREEN_NIT_STEP_SIX:F = 400.0f

.field private static final SPAN_SCREEN_NIT_STEP_THREE:F = 20.0f

.field private static final SPAN_SCREEN_NIT_STEP_TWO:F = 10.0f

.field protected static final TAG:Ljava/lang/String; = "BrightnessDataProcessor"

.field private static final THERMAL_STATUS_INVALID_THERMAL_UNRESTRICTED_BRIGHTNESS:I = 0x1

.field private static final THERMAL_STATUS_VALID_THERMAL_RESTRICTED_BRIGHTNESS:I = 0x3

.field private static final THERMAL_STATUS_VALID_THERMAL_UNRESTRICTED_BRIGHTNESS:I = 0x2

.field public static final TYPE_IN_FLARE_SCENE:I = 0x1

.field public static final TYPE_NOT_IN_FLARE_SCENE:I = 0x2

.field public static final TYPE_NOT_REPORT_IN_TIME:I = 0x3


# instance fields
.field private m1060NitHdrTimesIndex:I

.field private m1060NitPreBrightness:F

.field private m1060NitSdrTimesIndex:I

.field private m1060NitTimesIndex:I

.field private mAccSensor:Landroid/hardware/Sensor;

.field private mAccSensorEnabled:Z

.field private final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private mActualNit:F

.field private mAdvancedBrightnessEventsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/statistics/AggregationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field public mAmbientLux:F

.field private mAodBrightnessSpanStartTime:J

.field private mAodLuxSpanStartTime:J

.field private mAonFlareEventsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/statistics/AggregationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppClassifier:Lcom/android/server/display/aiautobrt/AppClassifier;

.field private mAppsIn20000LuxUsageStartTime:J

.field private mAutoBrightnessDuration:F

.field private mAutoBrightnessEnable:Z

.field private mAutoBrightnessIntegral:F

.field private mAutoBrightnessModeChanged:Z

.field private mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private mBrighteningSceneSpline:Landroid/util/Spline;

.field private mBrightnessAnimStart:Z

.field private mBrightnessAnimStartTime:J

.field private mBrightnessChangedState:I

.field private mBrightnessEventsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/statistics/AggregationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mBrightnessMin:F

.field private mCbmEventsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/statistics/AggregationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudControllerListener:Lcom/android/server/display/AutomaticBrightnessControllerImpl$CloudControllerListener;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBrightnessAnimValue:F

.field private mCurrentUserId:I

.field private mDarkeningSceneSpline:Landroid/util/Spline;

.field private mDefaultSceneSpline:Landroid/util/Spline;

.field private mDefaultSplineError:F

.field private final mDetailThermalRestrictedUsage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDetailThermalUnrestrictedUsage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field private mExpId:I

.field private mForcedReportTrainDataEnabled:Z

.field private mForegroundAppPackageName:Ljava/lang/String;

.field private final mForegroundWindowListener:Lmiui/process/IForegroundWindowListener;

.field private mFullAodPreLuxSpan:I

.field private mGrayScale:F

.field private mHaveValidMotionForWindowBrightness:Z

.field private mHaveValidWindowBrightness:Z

.field private final mHbmMinLux:F

.field private mHdrAppPackageName:Ljava/lang/String;

.field public final mIndividualEventNormalizer:Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;

.field private mIsAonSuppressDarken:Z

.field private mIsHdrLayer:Z

.field private mIsMiShow:Z

.field private mIsNotAonSuppressDarken:Z

.field private mIsTemporaryBrightnessAdjustment:Z

.field private mIsValidResetAutoBrightnessMode:Z

.field private mLastAmbientLux:F

.field private mLastAssistAmbientLux:F

.field private mLastAutoBrightness:F

.field private mLastAutoBrightnessEnable:Z

.field private mLastBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

.field private mLastBrightnessOverrideFromWindow:F

.field private mLastBrightnessRestrictedTimeStamp:F

.field private mLastBrightnessSpline:Landroid/util/Spline;

.field private mLastConditionId:I

.field private mLastDetailThermalUsageTimeStamp:J

.field private mLastForegroundApp:Ljava/lang/String;

.field private mLastHdrEnableTimeStamp:J

.field private mLastMainAmbientLux:F

.field private mLastManualBrightness:F

.field private mLastResetBrightnessModeTime:J

.field private mLastRestrictedBrightness:F

.field private mLastScreenBrightness:F

.field private mLastScreenOnTimeStamp:J

.field private mLastStoreBrightness:F

.field private mLastTemperature:F

.field private mLastThermalStatusTimeStamp:J

.field private mLastUnrestrictedBrightness:F

.field private mLastUserDataPoint:F

.field private mLatestDraggingChangedTime:J

.field private mLightFovSensor:Landroid/hardware/Sensor;

.field private mLightFovSensorEnabled:Z

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnabled:Z

.field private mLongTermModelSplineError:F

.field private mLuxSpanStartTimeStamp:J

.field private mManualBrightnessDuration:F

.field private mManualBrightnessIntegral:F

.field private mModelEventCallback:Lcom/android/server/display/statistics/BrightnessDataProcessor$ModelEventCallback;

.field private mModelTrainIndicatorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNormalBrightnessMax:F

.field private final mOnAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mOriSpline:Landroid/util/Spline;

.field private mOrientation:I

.field private mOriginalNit:F

.field private mOver1060NitHdr:Z

.field private mOver1060NitHdrEnableTimeStamp:J

.field private mOver1060NitHdrLastDuration:F

.field private mOver1060NitSdr:Z

.field private mOver1060NitSdrEnableTimeStamp:J

.field private mOver1060NitSdrLastDuration:F

.field private mPendingAnimationStart:Z

.field private mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

.field private mPendingBrightnessChangedState:I

.field private mPendingTargetBrightnessAnimValue:F

.field private mPointerEventListener:Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;

.field private mPointerEventListenerEnabled:Z

.field private final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreDozeState:Z

.field private volatile mReportBrightnessEventsEnable:Z

.field private mResetDetailsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResetMode:Ljava/lang/String;

.field private mRotationListenerEnabled:Z

.field private mRotationWatcher:Lcom/android/server/display/statistics/BrightnessDataProcessor$RotationWatcher;

.field private mScreenOn:Z

.field private mSensorListener:Lcom/android/server/display/statistics/BrightnessDataProcessor$SensorListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;

.field private mStartTimeStamp:J

.field private mStatLastAmbientlux:F

.field private mSwitchStatsHelper:Lcom/android/server/display/statistics/SwitchStatsHelper;

.field private mTargetBrightnessAnimValue:F

.field private mTaskStackListener:Lcom/android/server/display/statistics/BrightnessDataProcessor$TaskStackListenerImpl;

.field private final mTemperatureSpan:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mTemporaryBrightnessTimeStamp:J

.field private final mThermalBrightnessRestrictedUsage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private mThermalEventsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/statistics/AggregationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mThermalStatus:I

.field private mUserDragging:Z

.field private mWindowOverrideBrightnessChanging:Z

.field private final mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$9AiFDppn4rPlO3v8laj9zRvYwgs(Lcom/android/server/display/statistics/BrightnessDataProcessor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->lambda$updateExpId$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gbb3FwaFJKa-nEHvMAI9WKvyLRQ(Lcom/android/server/display/statistics/BrightnessDataProcessor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->lambda$aggregateIndividualModelTrainTimes$13(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$LF-IAo876VTpCvRM_T8F-Suzn0o(Lcom/android/server/display/statistics/BrightnessDataProcessor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->lambda$forceReportTrainDataEnabled$12(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$MXjOYigSgHyluD4gCRCmRoq_HUY(Lcom/android/server/display/statistics/BrightnessDataProcessor;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->lambda$onAmbientLuxChange$2(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$OyMxh1-pv5DKB3AzB24MV3ucgxI(Lcom/android/server/display/statistics/BrightnessDataProcessor;ZF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->lambda$noteAverageTemperature$9(ZF)V

    return-void
.end method

.method public static synthetic $r8$lambda$XG6Nyrg7dT0h8UqdBKTqXrN85Bw(Lcom/android/server/display/statistics/BrightnessDataProcessor;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->lambda$updateGrayScale$1(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$XHLQUFUVv-k4pl_IaKgng8bW_4s(Lcom/android/server/display/statistics/BrightnessDataProcessor;ZFZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->lambda$updateThermalStats$8(ZFZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$YY-1U93FbvqjS-B7dfqof2_ishA(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->lambda$aggregateModelPredictTimeoutTimes$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$areMo5jiWn5nZ3AG1YcgmZu305g(Lcom/android/server/display/statistics/BrightnessDataProcessor;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->lambda$updateScreenNits$11(FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$eEWYDH48tRthmbWC7sUel5OAIAc(Lcom/android/server/display/statistics/BrightnessDataProcessor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->lambda$startHdyUsageStats$10(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$eKFUvXj2uJU7qVml6gTGqRLN3WM(Lcom/android/server/display/statistics/BrightnessDataProcessor;FFIF)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->lambda$noteFullSceneThermalUsageStats$6(FFIF)V

    return-void
.end method

.method public static synthetic $r8$lambda$k4_KDsx5lnY_JZUVyDKugACPMNQ(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$oruORthZh3zq1JDTxX_bgoi6pGQ(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->start()V

    return-void
.end method

.method public static synthetic $r8$lambda$ozxABlUePvr2z00HeNBWEeQypj8(Lcom/android/server/display/statistics/BrightnessDataProcessor;IF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->lambda$noteDetailThermalUsage$7(IF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBackgroundHandler(Lcom/android/server/display/statistics/BrightnessDataProcessor;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/server/display/statistics/BrightnessDataProcessor;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReportBrightnessEventsEnable(Lcom/android/server/display/statistics/BrightnessDataProcessor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mReportBrightnessEventsEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserDragging(Lcom/android/server/display/statistics/BrightnessDataProcessor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mUserDragging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAutoBrightnessEnable(Lcom/android/server/display/statistics/BrightnessDataProcessor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAutoBrightnessModeChanged(Lcom/android/server/display/statistics/BrightnessDataProcessor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessModeChanged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAonSuppressDarken(Lcom/android/server/display/statistics/BrightnessDataProcessor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsAonSuppressDarken:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsMiShow(Lcom/android/server/display/statistics/BrightnessDataProcessor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsMiShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsNotAonSuppressDarken(Lcom/android/server/display/statistics/BrightnessDataProcessor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsNotAonSuppressDarken:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOrientation(Lcom/android/server/display/statistics/BrightnessDataProcessor;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOrientation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTargetBrightnessAnimValue(Lcom/android/server/display/statistics/BrightnessDataProcessor;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTargetBrightnessAnimValue:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTemporaryBrightnessTimeStamp(Lcom/android/server/display/statistics/BrightnessDataProcessor;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemporaryBrightnessTimeStamp:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mbrightnessChangedTriggerAggregation(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->brightnessChangedTriggerAggregation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAmbientLuxSpanIndex(Lcom/android/server/display/statistics/BrightnessDataProcessor;F)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getAmbientLuxSpanIndex(F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetOver1060nitBrightnessUsage(Lcom/android/server/display/statistics/BrightnessDataProcessor;FZZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getOver1060nitBrightnessUsage(FZZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAccSensor(Lcom/android/server/display/statistics/BrightnessDataProcessor;Landroid/hardware/SensorEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->handleAccSensor(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleBrightnessChangeEvent(Lcom/android/server/display/statistics/BrightnessDataProcessor;Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->handleBrightnessChangeEvent(Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleLightFovSensor(Lcom/android/server/display/statistics/BrightnessDataProcessor;Landroid/hardware/SensorEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->handleLightFovSensor(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleLightSensor(Lcom/android/server/display/statistics/BrightnessDataProcessor;Landroid/hardware/SensorEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->handleLightSensor(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadyToReportEvent(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->readyToReportEvent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportDisabledAutoBrightnessEvent(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->reportDisabledAutoBrightnessEvent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportEventToServer(Lcom/android/server/display/statistics/BrightnessDataProcessor;Lcom/android/server/display/statistics/BrightnessEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->reportEventToServer(Lcom/android/server/display/statistics/BrightnessEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetBrightnessAnimInfo(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->resetBrightnessAnimInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetPendingParams(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->resetPendingParams()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBrightnessAnimInfo(Lcom/android/server/display/statistics/BrightnessDataProcessor;FFZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateBrightnessAnimInfo(FFZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBrightnessStatisticsData(Lcom/android/server/display/statistics/BrightnessDataProcessor;ZF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateBrightnessStatisticsData(ZF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateForegroundApps(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateForegroundApps()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateInterruptBrightnessAnimDuration(Lcom/android/server/display/statistics/BrightnessDataProcessor;IF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateInterruptBrightnessAnimDuration(IF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLuxSpanUsage(Lcom/android/server/display/statistics/BrightnessDataProcessor;IZZLjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateLuxSpanUsage(IZZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePointerEventMotionState(Lcom/android/server/display/statistics/BrightnessDataProcessor;ZII)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updatePointerEventMotionState(ZII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateResetMode(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateResetMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateScreenStateChanged(Lcom/android/server/display/statistics/BrightnessDataProcessor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateScreenStateChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUserResetAutoBrightnessModeTimes(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateUserResetAutoBrightnessModeTimes()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 110
    nop

    .line 111
    const-string v0, "debug.miui.display.dgb"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    :cond_b
    sput-boolean v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;FFF)V
    .registers 16
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "displayDeviceConfig"  # Lcom/android/server/display/DisplayDeviceConfig;
    .param p3, "min"  # F
    .param p4, "normalMax"  # F
    .param p5, "hbmMinLux"  # F

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCurrentUserId:I

    .line 258
    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastStoreBrightness:F

    .line 259
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAutoBrightness:F

    .line 260
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastManualBrightness:F

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessChangedState:I

    .line 277
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangedState:I

    .line 279
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLongTermModelSplineError:F

    .line 281
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDefaultSplineError:F

    .line 309
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessEventsMap:Ljava/util/Map;

    .line 311
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAdvancedBrightnessEventsMap:Ljava/util/Map;

    .line 317
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalEventsMap:Ljava/util/Map;

    .line 330
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalUnrestrictedUsage:Landroid/util/SparseArray;

    .line 332
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalRestrictedUsage:Landroid/util/SparseArray;

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemperatureSpan:Ljava/util/List;

    .line 343
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalBrightnessRestrictedUsage:Landroid/util/SparseArray;

    .line 393
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAmbientLux:F

    .line 395
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastMainAmbientLux:F

    .line 397
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAssistAmbientLux:F

    .line 424
    new-instance v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor$1;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForegroundWindowListener:Lmiui/process/IForegroundWindowListener;

    .line 432
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCbmEventsMap:Ljava/util/Map;

    .line 434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mModelTrainIndicatorsList:Ljava/util/List;

    .line 442
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAonFlareEventsMap:Ljava/util/Map;

    .line 445
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastUserDataPoint:F

    .line 447
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mResetMode:Ljava/lang/String;

    .line 449
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mResetDetailsMap:Ljava/util/Map;

    .line 508
    new-instance v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOnAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 453
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContext:Landroid/content/Context;

    .line 454
    iput-object p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 455
    iput p3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessMin:F

    .line 456
    iput p4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mNormalBrightnessMax:F

    .line 457
    iput p5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mHbmMinLux:F

    .line 458
    const-class v0, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 459
    new-instance v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    .line 460
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 461
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 462
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPowerManager:Landroid/os/PowerManager;

    .line 463
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAlarmManager:Landroid/app/AlarmManager;

    .line 464
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 465
    invoke-static {}, Lcom/android/server/display/aiautobrt/AppClassifier;->getInstance()Lcom/android/server/display/aiautobrt/AppClassifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAppClassifier:Lcom/android/server/display/aiautobrt/AppClassifier;

    .line 466
    new-instance v1, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;

    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessMin:F

    .line 467
    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v2

    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mNormalBrightnessMax:F

    .line 468
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v3

    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mHbmMinLux:F

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float v5, v0, v4

    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mNormalBrightnessMax:F

    .line 470
    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessSpanByNit(F)I

    move-result v0

    int-to-float v7, v0

    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mHbmMinLux:F

    sub-float/2addr v0, v4

    .line 471
    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getAmbientLuxSpanIndex(F)I

    move-result v0

    int-to-float v9, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;-><init>(FFFFFFFF)V

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIndividualEventNormalizer:Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;

    .line 472
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    return-void
.end method

.method private AggregateOver1060nitBrightnessUsage(FLjava/lang/String;)V
    .registers 8
    .param p1, "duration"  # F
    .param p2, "screeenState"  # Ljava/lang/String;

    .line 1179
    const-string/jumbo v0, "hdr"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "over_1060nit_times"

    const-string/jumbo v3, "over_1060nit_usage"

    const/4 v4, 0x0

    if-eqz v1, :cond_49

    .line 1180
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1181
    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitHdrTimesIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitHdrTimesIndex:I

    .line 1182
    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitHdrTimesIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1183
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrLastDuration:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_32

    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrLastDuration:F

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_38

    :cond_32
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrLastDuration:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_8a

    .line 1184
    :cond_38
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitTimesIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "over_1060nit_hdr_longest_time"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8a

    .line 1186
    :cond_49
    const-string/jumbo v0, "sdr"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 1187
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1188
    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitSdrTimesIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitSdrTimesIndex:I

    .line 1189
    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitSdrTimesIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1190
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrLastDuration:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_74

    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrLastDuration:F

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_7a

    :cond_74
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrLastDuration:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_8a

    .line 1191
    :cond_7a
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitTimesIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "over_1060nit_sdr_longest_time"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1194
    :cond_8a
    :goto_8a
    return-void
.end method

.method private AggregateTopFiveAppsIn20000Lux(Ljava/lang/String;FLjava/lang/Long;)V
    .registers 8
    .param p1, "appName"  # Ljava/lang/String;
    .param p2, "duration"  # F
    .param p3, "startTime"  # Ljava/lang/Long;

    .line 1557
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "over_20000lux_top5_app_all_usage"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1558
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAppsIn20000LuxUsageStartTime:J

    .line 1559
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v2, "over_20000lux_top5_app_single_longest_usage"

    const/4 v3, 0x5

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSyncOrder(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1560
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "over_20000lux_top5_app_times_usage"

    invoke-direct {p0, v2, p1, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1561
    invoke-direct {p0, v1, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsOrder(Ljava/lang/String;I)V

    .line 1562
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getTopFiveAppTimes()V

    .line 1563
    return-void
.end method

.method private aggregateAdvancedBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "keySubEvent"  # Ljava/lang/String;
    .param p2, "key"  # Ljava/lang/Object;
    .param p3, "value"  # Ljava/lang/Object;

    .line 2407
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAdvancedBrightnessEventsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/statistics/AggregationEvent;

    .line 2408
    .local v0, "event":Lcom/android/server/display/statistics/AggregationEvent;
    if-nez v0, :cond_10

    .line 2409
    new-instance v1, Lcom/android/server/display/statistics/AggregationEvent$AdvancedAggregationEvent;

    invoke-direct {v1}, Lcom/android/server/display/statistics/AggregationEvent$AdvancedAggregationEvent;-><init>()V

    move-object v0, v1

    .line 2411
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/display/statistics/AggregationEvent;->getQuotaEvents()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->statsSummary(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2412
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAdvancedBrightnessEventsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2413
    return-void
.end method

.method private aggregateAonFlareEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "keySubEvent"  # Ljava/lang/String;
    .param p2, "key"  # Ljava/lang/Object;
    .param p3, "value"  # Ljava/lang/Object;

    .line 3674
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAonFlareEventsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/statistics/AggregationEvent;

    .line 3675
    .local v0, "event":Lcom/android/server/display/statistics/AggregationEvent;
    if-nez v0, :cond_10

    .line 3676
    new-instance v1, Lcom/android/server/display/statistics/AggregationEvent$AonFlareAggregationEvent;

    invoke-direct {v1}, Lcom/android/server/display/statistics/AggregationEvent$AonFlareAggregationEvent;-><init>()V

    move-object v0, v1

    .line 3678
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/display/statistics/AggregationEvent;->getQuotaEvents()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->statsSummary(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3679
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAonFlareEventsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3680
    return-void
.end method

.method private aggregateBrightnessEventsAvg(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "keySubEvent"  # Ljava/lang/String;
    .param p2, "key"  # Ljava/lang/Object;
    .param p3, "value"  # Ljava/lang/Object;

    .line 2369
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessAggregationEvent(Ljava/lang/String;)Lcom/android/server/display/statistics/AggregationEvent;

    move-result-object v0

    .line 2370
    .local v0, "event":Lcom/android/server/display/statistics/AggregationEvent;
    move-object v1, p3

    check-cast v1, Ljava/lang/Float;

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->statsAverageValues(Lcom/android/server/display/statistics/AggregationEvent;Ljava/lang/Object;Ljava/lang/Float;)V

    .line 2371
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessEventsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2372
    return-void
.end method

.method private aggregateBrightnessEventsOrder(Ljava/lang/String;I)V
    .registers 5
    .param p1, "keySubEvent"  # Ljava/lang/String;
    .param p2, "limitNumber"  # I

    .line 2345
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessAggregationEvent(Ljava/lang/String;)Lcom/android/server/display/statistics/AggregationEvent;

    move-result-object v0

    .line 2346
    .local v0, "event":Lcom/android/server/display/statistics/AggregationEvent;
    invoke-virtual {v0}, Lcom/android/server/display/statistics/AggregationEvent;->getQuotaEvents()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->statsOrder(Ljava/util/Map;I)V

    .line 2347
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessEventsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2348
    return-void
.end method

.method private aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "keySubEvent"  # Ljava/lang/String;
    .param p2, "key"  # Ljava/lang/Object;
    .param p3, "value"  # Ljava/lang/Object;

    .line 2357
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessAggregationEvent(Ljava/lang/String;)Lcom/android/server/display/statistics/AggregationEvent;

    move-result-object v0

    .line 2358
    .local v0, "event":Lcom/android/server/display/statistics/AggregationEvent;
    invoke-virtual {v0}, Lcom/android/server/display/statistics/AggregationEvent;->getQuotaEvents()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->statsSummary(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2359
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessEventsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2360
    return-void
.end method

.method private aggregateBrightnessEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "keySubEvent"  # Ljava/lang/String;
    .param p2, "key"  # Ljava/lang/Object;
    .param p3, "value"  # Ljava/lang/Object;

    .line 2381
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessAggregationEvent(Ljava/lang/String;)Lcom/android/server/display/statistics/AggregationEvent;

    move-result-object v0

    .line 2382
    .local v0, "event":Lcom/android/server/display/statistics/AggregationEvent;
    invoke-virtual {v0}, Lcom/android/server/display/statistics/AggregationEvent;->getQuotaEvents()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2383
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessEventsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2384
    return-void
.end method

.method private aggregateBrightnessEventsSyncOrder(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 7
    .param p1, "keySubEvent"  # Ljava/lang/String;
    .param p2, "key"  # Ljava/lang/Object;
    .param p3, "value"  # Ljava/lang/Object;
    .param p4, "limitNumber"  # I

    .line 2394
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessAggregationEvent(Ljava/lang/String;)Lcom/android/server/display/statistics/AggregationEvent;

    move-result-object v0

    .line 2395
    .local v0, "event":Lcom/android/server/display/statistics/AggregationEvent;
    invoke-virtual {v0}, Lcom/android/server/display/statistics/AggregationEvent;->getQuotaEvents()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->putIfGreater(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2396
    invoke-virtual {v0}, Lcom/android/server/display/statistics/AggregationEvent;->getQuotaEvents()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->statsOrder(Ljava/util/Map;I)V

    .line 2397
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessEventsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2398
    return-void
.end method

.method private aggregateBrightnessUsageDuration()V
    .registers 6

    .line 853
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenBrightness:F

    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessSpanByNit(F)I

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "report"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateBrightnessUsage(IZLjava/lang/String;)V

    .line 855
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAmbientLux:F

    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getAmbientLuxSpanIndex(F)I

    move-result v0

    invoke-direct {p0, v0, v1, v1, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateLuxSpanUsage(IZZLjava/lang/String;)V

    .line 857
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitPreBrightness:F

    iget-boolean v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsHdrLayer:Z

    const/4 v4, 0x1

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getOver1060nitBrightnessUsage(FZZZ)V

    .line 858
    const/high16 v0, 0x7fc00000  # Float.NaN

    invoke-virtual {p0, v0, v1, v1, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getTopFiveAppsIn20000Lux(FZZZ)V

    .line 859
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPreDozeState:Z

    if-ne v0, v4, :cond_31

    .line 860
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAmbientLux:F

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->notifyFullAodState(ZFZLjava/lang/String;)V

    .line 861
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAmbientLux:F

    invoke-virtual {p0, v4, v0, v4, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->notifyFullAodState(ZFZLjava/lang/String;)V

    .line 863
    :cond_31
    return-void
.end method

.method private aggregateCbmEventsAvg(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "keySubEvent"  # Ljava/lang/String;
    .param p2, "key"  # Ljava/lang/Object;
    .param p3, "value"  # Ljava/lang/Object;

    .line 3447
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getCbmAggregationEvent(Ljava/lang/String;)Lcom/android/server/display/statistics/AggregationEvent;

    move-result-object v0

    .line 3448
    .local v0, "event":Lcom/android/server/display/statistics/AggregationEvent;
    move-object v1, p3

    check-cast v1, Ljava/lang/Float;

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->statsAverageValues(Lcom/android/server/display/statistics/AggregationEvent;Ljava/lang/Object;Ljava/lang/Float;)V

    .line 3449
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCbmEventsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3450
    return-void
.end method

.method private aggregateCbmEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "keySubEvent"  # Ljava/lang/String;
    .param p2, "key"  # Ljava/lang/Object;
    .param p3, "value"  # Ljava/lang/Object;

    .line 3435
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getCbmAggregationEvent(Ljava/lang/String;)Lcom/android/server/display/statistics/AggregationEvent;

    move-result-object v0

    .line 3436
    .local v0, "event":Lcom/android/server/display/statistics/AggregationEvent;
    invoke-virtual {v0}, Lcom/android/server/display/statistics/AggregationEvent;->getQuotaEvents()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->statsSummary(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3437
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCbmEventsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3438
    return-void
.end method

.method private aggregateCbmEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "keySubEvent"  # Ljava/lang/String;
    .param p2, "key"  # Ljava/lang/Object;
    .param p3, "value"  # Ljava/lang/Object;

    .line 3423
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getCbmAggregationEvent(Ljava/lang/String;)Lcom/android/server/display/statistics/AggregationEvent;

    move-result-object v0

    .line 3424
    .local v0, "event":Lcom/android/server/display/statistics/AggregationEvent;
    invoke-virtual {v0}, Lcom/android/server/display/statistics/AggregationEvent;->getQuotaEvents()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3425
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCbmEventsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3426
    return-void
.end method

.method private aggregateSwitchEvents()V
    .registers 4

    .line 2519
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSwitchStatsHelper:Lcom/android/server/display/statistics/SwitchStatsHelper;

    invoke-virtual {v0}, Lcom/android/server/display/statistics/SwitchStatsHelper;->getAllSwitchStats()Ljava/util/List;

    move-result-object v0

    .line 2520
    .local v0, "allSwitchStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;>;"
    sget-boolean v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v1, :cond_22

    .line 2521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aggregateSwitchEvents: allSwitchStats:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessDataProcessor"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    :cond_22
    const-string/jumbo v1, "switch_stats"

    const-string/jumbo v2, "switch_stats_details"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2524
    return-void
.end method

.method private aggregateThermalEventsAvg(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "keySubEvent"  # Ljava/lang/String;
    .param p2, "key"  # Ljava/lang/Object;
    .param p3, "value"  # Ljava/lang/Object;

    .line 2614
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getThermalAggregationEvent(Ljava/lang/String;)Lcom/android/server/display/statistics/AggregationEvent;

    move-result-object v0

    .line 2615
    .local v0, "event":Lcom/android/server/display/statistics/AggregationEvent;
    move-object v1, p3

    check-cast v1, Ljava/lang/Float;

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->statsAverageValues(Lcom/android/server/display/statistics/AggregationEvent;Ljava/lang/Object;Ljava/lang/Float;)V

    .line 2616
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalEventsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2617
    return-void
.end method

.method private aggregateThermalEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "keySubEvent"  # Ljava/lang/String;
    .param p2, "key"  # Ljava/lang/Object;
    .param p3, "value"  # Ljava/lang/Object;

    .line 2602
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getThermalAggregationEvent(Ljava/lang/String;)Lcom/android/server/display/statistics/AggregationEvent;

    move-result-object v0

    .line 2603
    .local v0, "event":Lcom/android/server/display/statistics/AggregationEvent;
    invoke-virtual {v0}, Lcom/android/server/display/statistics/AggregationEvent;->getQuotaEvents()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->statsSummary(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2604
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalEventsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2605
    return-void
.end method

.method private aggregateThermalEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "keySubEvent"  # Ljava/lang/String;
    .param p2, "key"  # Ljava/lang/Object;
    .param p3, "value"  # Ljava/lang/Object;

    .line 2590
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getThermalAggregationEvent(Ljava/lang/String;)Lcom/android/server/display/statistics/AggregationEvent;

    move-result-object v0

    .line 2591
    .local v0, "event":Lcom/android/server/display/statistics/AggregationEvent;
    invoke-virtual {v0}, Lcom/android/server/display/statistics/AggregationEvent;->getQuotaEvents()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2592
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalEventsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2593
    return-void
.end method

.method private brightnessChangedTriggerAggregation()V
    .registers 14

    .line 2271
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    if-eqz v0, :cond_1a9

    .line 2272
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v0, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    .line 2273
    .local v0, "type":I
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget-object v1, v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->packageName:Ljava/lang/String;

    .line 2274
    .local v1, "pkg":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->convergeAffectFactors()I

    move-result v2

    .line 2275
    .local v2, "factor":I
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v3, v3, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->ambientLux:F

    invoke-direct {p0, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getAmbientLuxSpanIndex(F)I

    move-result v3

    .line 2276
    .local v3, "luxSpan":I
    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenBrightness:F

    invoke-direct {p0, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessSpanByNit(F)I

    move-result v4

    .line 2277
    .local v4, "preBrightnessSpan":I
    iget-object v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v5, v5, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalBrightness:F

    invoke-direct {p0, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessSpanByNit(F)I

    move-result v5

    .line 2278
    .local v5, "curBrightnessSpan":I
    iget-object v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v6, v6, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalBrightness:F

    .line 2279
    .local v6, "brightness":F
    iget-object v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v7, v6}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    .line 2281
    .local v7, "curNit":F
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "brightness_adj_times"

    invoke-direct {p0, v11, v8, v10}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2282
    const/4 v8, 0x3

    if-ne v0, v8, :cond_52

    .line 2284
    const-string/jumbo v8, "override_adj_app_ranking"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v8, v1, v9}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_146

    .line 2285
    :cond_52
    const/4 v8, 0x2

    if-ne v0, v8, :cond_146

    .line 2287
    const-string v8, "auto_manual_adj_app_ranking"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v8, v1, v10}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2289
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v11, "auto_manual_adj_avg_nits_lux_span"

    invoke-direct {p0, v11, v8, v10}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsAvg(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2291
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "auto_manual_adj_display_mode"

    invoke-direct {p0, v11, v8, v10}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2293
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "auto_manual_adj_lux_span"

    invoke-direct {p0, v11, v8, v10}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2295
    iget-object v8, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mResetMode:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "auto_reset_curve"

    invoke-direct {p0, v11, v8, v10}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2296
    const-string v8, "event_auto_reset_curve_details"

    iget-object v10, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mResetDetailsMap:Ljava/util/Map;

    invoke-direct {p0, v11, v8, v10}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2300
    if-ge v5, v4, :cond_ef

    .line 2301
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "auto_manual_adj_low_lux_span"

    invoke-direct {p0, v11, v8, v10}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2302
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->flareStatisticalManualAdjustTimes(Z)V

    .line 2303
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v11, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenBrightness:F

    .line 2304
    invoke-virtual {v10, v11}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v10

    iget-object v11, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v12, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v12, v12, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalBrightness:F

    .line 2305
    invoke-virtual {v11, v12}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v11

    sub-float/2addr v10, v11

    .line 2304
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 2303
    const-string v11, "auto_manual_adj_low_avg_nits"

    invoke-direct {p0, v11, v8, v10}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsAvg(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2306
    const-string v8, "auto_manual_adj_low_app_times"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v8, v1, v10}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2307
    iget-object v8, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v10, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenBrightness:F

    .line 2308
    invoke-virtual {v8, v10}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v8

    iget-object v10, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v11, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v11, v11, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalBrightness:F

    .line 2309
    invoke-virtual {v10, v11}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v10

    sub-float/2addr v8, v10

    .line 2308
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 2307
    const-string v10, "auto_manual_adj_app_low_avg_nits"

    invoke-direct {p0, v10, v1, v8}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsAvg(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2312
    :cond_ef
    if-le v5, v4, :cond_146

    .line 2313
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "auto_manual_adj_high_lux_span"

    invoke-direct {p0, v11, v8, v10}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2314
    invoke-direct {p0, v9}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->flareStatisticalManualAdjustTimes(Z)V

    .line 2315
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v11, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v11, v11, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalBrightness:F

    .line 2316
    invoke-virtual {v10, v11}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v10

    iget-object v11, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v12, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenBrightness:F

    .line 2317
    invoke-virtual {v11, v12}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v11

    sub-float/2addr v10, v11

    .line 2316
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 2315
    const-string v11, "auto_manual_adj_high_avg_nits"

    invoke-direct {p0, v11, v8, v10}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsAvg(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2318
    const-string v8, "auto_manual_adj_high_app_times"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v8, v1, v9}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2319
    iget-object v8, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v9, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v9, v9, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalBrightness:F

    .line 2320
    invoke-virtual {v8, v9}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v8

    iget-object v9, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v10, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenBrightness:F

    .line 2321
    invoke-virtual {v9, v10}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v9

    sub-float/2addr v8, v9

    .line 2320
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 2319
    const-string v9, "auto_manual_adj_app_high_avg_nits"

    invoke-direct {p0, v9, v1, v8}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsAvg(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2325
    :cond_146
    :goto_146
    invoke-direct {p0, v0, v6}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteAdjHighTimesOnBrightnessRestricted(IF)V

    .line 2326
    sget-boolean v8, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v8, :cond_1a9

    .line 2327
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "brightnessChangedTriggerAggregation: type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mLastScreenBrightness: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenBrightness:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", brightness: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", curNit: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", preBrightnessSpan: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", curBrightnessSpan: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mBrightnessEventsMap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessEventsMap:Ljava/util/Map;

    .line 2334
    invoke-interface {v9}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2327
    const-string v9, "BrightnessDataProcessor"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    .end local v0  # "type":I
    .end local v1  # "pkg":Ljava/lang/String;
    .end local v2  # "factor":I
    .end local v3  # "luxSpan":I
    .end local v4  # "preBrightnessSpan":I
    .end local v5  # "curBrightnessSpan":I
    .end local v6  # "brightness":F
    .end local v7  # "curNit":F
    :cond_1a9
    return-void
.end method

.method private checkIsValidMotionForWindowBrightness(II)Z
    .registers 6
    .param p1, "distanceX"  # I
    .param p2, "distanceY"  # I

    .line 976
    const/4 v0, 0x1

    .line 977
    .local v0, "isValid":Z
    const/16 v1, 0xa

    if-le p2, v1, :cond_c

    if-eqz p1, :cond_18

    div-int v1, p2, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_18

    .line 979
    :cond_c
    const/4 v0, 0x0

    .line 980
    sget-boolean v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v1, :cond_18

    .line 981
    const-string v1, "BrightnessDataProcessor"

    const-string v2, "checkIsValidMotionForWindowBrightness: invalid and return."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_18
    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mHaveValidMotionForWindowBrightness:Z

    .line 985
    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mHaveValidMotionForWindowBrightness:Z

    return v1
.end method

.method private clampBrightness(F)F
    .registers 3
    .param p1, "brightness"  # F

    .line 3384
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3385
    const/high16 v0, -0x40800000  # -1.0f

    return v0

    .line 3387
    :cond_9
    return p1
.end method

.method private computeAverageBrightnessIfNeeded(F)V
    .registers 8
    .param p1, "brightness"  # F

    .line 1886
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastStoreBrightness:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessModeChanged:Z

    if-nez v0, :cond_b

    .line 1887
    return-void

    .line 1889
    :cond_b
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastStoreBrightness:F

    .line 1890
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1891
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenOnTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    .line 1892
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->computeLastAverageBrightness(J)V

    .line 1894
    :cond_1c
    const/high16 v2, 0x7fc00000  # Float.NaN

    iput v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAutoBrightness:F

    .line 1895
    iput v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastManualBrightness:F

    .line 1896
    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessEnable:Z

    if-eqz v2, :cond_29

    .line 1897
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAutoBrightness:F

    goto :goto_2b

    .line 1899
    :cond_29
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastManualBrightness:F

    .line 1901
    :goto_2b
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenOnTimeStamp:J

    .line 1902
    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessModeChanged:Z

    if-eqz v2, :cond_34

    .line 1903
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessModeChanged:Z

    .line 1905
    :cond_34
    sget-boolean v2, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v2, :cond_68

    .line 1906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "computeAverageBrightnessIfNeeded: current brightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAutoBrightnessEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenOnTimeStamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BrightnessDataProcessor"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    :cond_68
    return-void
.end method

.method private computeLastAverageBrightness(J)V
    .registers 10
    .param p1, "now"  # J

    .line 1917
    iget-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenOnTimeStamp:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const v1, 0x3a83126f  # 0.001f

    mul-float/2addr v0, v1

    .line 1919
    .local v0, "timeDuration":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_e4

    .line 1920
    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAutoBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const-string v2, ", avgNits: "

    const-string v3, "BrightnessDataProcessor"

    const-string v4, "average_brightness"

    if-nez v1, :cond_7e

    .line 1921
    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessDuration:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessDuration:F

    .line 1922
    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessIntegral:F

    iget-object v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAutoBrightness:F

    .line 1923
    invoke-virtual {v5, v6}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v5

    mul-float/2addr v5, v0

    add-float/2addr v1, v5

    iput v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessIntegral:F

    .line 1924
    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessIntegral:F

    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessDuration:F

    div-float/2addr v1, v5

    .line 1925
    .local v1, "avgNits":F
    nop

    .line 1926
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 1925
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1927
    sget-boolean v4, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v4, :cond_e4

    .line 1928
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeLastAverageBrightness: compute last auto average brightness, timeDuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s, mAutoBrightnessDuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessDuration:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s, mAutoBrightnessIntegral: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessIntegral:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    .line 1935
    .end local v1  # "avgNits":F
    :cond_7e
    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mManualBrightnessDuration:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mManualBrightnessDuration:F

    .line 1936
    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mManualBrightnessIntegral:F

    iget-object v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastManualBrightness:F

    float-to-int v6, v6

    .line 1937
    invoke-static {v6}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v6

    .line 1936
    invoke-virtual {v5, v6}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v5

    mul-float/2addr v5, v0

    add-float/2addr v1, v5

    iput v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mManualBrightnessIntegral:F

    .line 1938
    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mManualBrightnessIntegral:F

    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mManualBrightnessDuration:F

    div-float/2addr v1, v5

    .line 1939
    .restart local v1  # "avgNits":F
    nop

    .line 1940
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 1939
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1941
    sget-boolean v4, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v4, :cond_e4

    .line 1942
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeLastAverageBrightness: compute last manual average brightness, timeDuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s, mManualBrightnessDuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mManualBrightnessDuration:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s, mManualBrightnessIntegral: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mManualBrightnessIntegral:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    .end local v1  # "avgNits":F
    :cond_e4
    :goto_e4
    return-void
.end method

.method private convergeAffectFactors()I
    .registers 3

    .line 1334
    const/4 v0, 0x0

    .line 1335
    .local v0, "factor":I
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSwitchStatsHelper:Lcom/android/server/display/statistics/SwitchStatsHelper;

    invoke-virtual {v1}, Lcom/android/server/display/statistics/SwitchStatsHelper;->isReadModeSettingsEnable()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1336
    or-int/lit8 v0, v0, 0x1

    .line 1338
    :cond_b
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSwitchStatsHelper:Lcom/android/server/display/statistics/SwitchStatsHelper;

    invoke-virtual {v1}, Lcom/android/server/display/statistics/SwitchStatsHelper;->isDcBacklightSettingsEnable()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1339
    or-int/lit8 v0, v0, 0x2

    .line 1341
    :cond_15
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSwitchStatsHelper:Lcom/android/server/display/statistics/SwitchStatsHelper;

    invoke-virtual {v1}, Lcom/android/server/display/statistics/SwitchStatsHelper;->isDarkModeSettingsEnable()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1342
    or-int/lit8 v0, v0, 0x4

    .line 1344
    :cond_1f
    return v0
.end method

.method private countThermalBrightnessRestrictedUsage(FLandroid/util/SparseArray;II)V
    .registers 8
    .param p1, "duration"  # F
    .param p3, "nit"  # I
    .param p4, "brightnessSpan"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;>;II)V"
        }
    .end annotation

    .line 3018
    .local p2, "usage":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/Float;>;>;"
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 3019
    .local v0, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    if-nez v0, :cond_e

    .line 3020
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 3022
    :cond_e
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3023
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr p1, v1

    .line 3025
    :cond_1f
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3026
    invoke-virtual {p2, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3027
    sget-boolean v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v1, :cond_59

    .line 3028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countThermalBrightnessRestrictedUsage: nit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", brightnessSpan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessDataProcessor"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    :cond_59
    return-void
.end method

.method private countThermalUsage(FLandroid/util/SparseArray;II)V
    .registers 8
    .param p1, "duration"  # F
    .param p3, "conditionId"  # I
    .param p4, "temperatureSpan"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;>;II)V"
        }
    .end annotation

    .line 2993
    .local p2, "usage":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Ljava/lang/Float;>;>;"
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 2994
    .local v0, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    if-nez v0, :cond_e

    .line 2995
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 2997
    :cond_e
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2998
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr p1, v1

    .line 3000
    :cond_1f
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3001
    invoke-virtual {p2, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3002
    sget-boolean v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v1, :cond_59

    .line 3003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countThermalUsage: conditionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", temperatureSpan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessDataProcessor"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    :cond_59
    return-void
.end method

.method private createModelEvent(Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;)Lcom/xiaomi/aiautobrt/IndividualModelEvent;
    .registers 8
    .param p1, "item"  # Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    .line 787
    iget v1, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->ambientLux:F

    iget-object v2, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalBrightness:F

    iget v4, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->orientation:I

    iget v5, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->sceneState:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->createModelEvent(FLjava/lang/String;FII)Lcom/xiaomi/aiautobrt/IndividualModelEvent;

    move-result-object v1

    return-object v1
.end method

.method private debounceBrightnessEvent(J)V
    .registers 5
    .param p1, "debounceTime"  # J

    .line 620
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForcedReportTrainDataEnabled:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_8

    :cond_7
    move-wide v0, p1

    .line 621
    .end local p1  # "debounceTime":J
    .local v0, "debounceTime":J
    :goto_8
    iget-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    iget-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 623
    .local p1, "msg":Landroid/os/Message;
    iget-object p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 624
    return-void
.end method

.method private debounceLuxSpanEvent(J)V
    .registers 5
    .param p1, "debounceTime"  # J

    .line 627
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForcedReportTrainDataEnabled:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_8

    :cond_7
    move-wide v0, p1

    .line 628
    .end local p1  # "debounceTime":J
    .local v0, "debounceTime":J
    :goto_8
    iget-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 629
    iget-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 630
    .local p1, "msg":Landroid/os/Message;
    iget-object p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 631
    return-void
.end method

.method private flareStatisticalManualAdjustTimes(Z)V
    .registers 7
    .param p1, "isIncrease"  # Z

    .line 3710
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_35

    .line 3711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "manual adjust brightness: mIsAonSuppressDarken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsAonSuppressDarken:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsNotAonSuppressDarken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsNotAonSuppressDarken:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isIncrease:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3715
    :cond_35
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsAonSuppressDarken:Z

    const/4 v1, 0x1

    const-string v2, "flare_manual_adjust_times"

    const/4 v3, 0x0

    if-eqz v0, :cond_4d

    .line 3716
    iput-boolean v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsAonSuppressDarken:Z

    .line 3717
    if-eqz p1, :cond_44

    .line 3718
    const-string v0, "2"

    goto :goto_46

    .line 3719
    :cond_44
    const-string v0, "1"

    :goto_46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3717
    invoke-direct {p0, v2, v0, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateAonFlareEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3721
    :cond_4d
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsNotAonSuppressDarken:Z

    if-eqz v0, :cond_61

    .line 3722
    iput-boolean v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsNotAonSuppressDarken:Z

    .line 3723
    if-eqz p1, :cond_58

    .line 3724
    const-string v0, "4"

    goto :goto_5a

    .line 3725
    :cond_58
    const-string v0, "3"

    :goto_5a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3723
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateAonFlareEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3727
    :cond_61
    return-void
.end method

.method private flareStatisticalResetBrightnessModeTimes()V
    .registers 6

    .line 3733
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_2b

    .line 3734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset brightness mode: mIsAonSuppressDarken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsAonSuppressDarken:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsNotAonSuppressDarken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsNotAonSuppressDarken:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    :cond_2b
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsAonSuppressDarken:Z

    const/4 v1, 0x1

    const-string v2, "flare_user_reset_brightness_mode_times"

    const/4 v3, 0x0

    if-eqz v0, :cond_3f

    .line 3739
    iput-boolean v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsAonSuppressDarken:Z

    .line 3740
    nop

    .line 3741
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3740
    const-string v4, "1"

    invoke-direct {p0, v2, v4, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateAonFlareEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3743
    :cond_3f
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsNotAonSuppressDarken:Z

    if-eqz v0, :cond_4f

    .line 3744
    iput-boolean v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsNotAonSuppressDarken:Z

    .line 3745
    nop

    .line 3746
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3745
    const-string v1, "2"

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateAonFlareEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3748
    :cond_4f
    return-void
.end method

.method private getAmbientLuxSpanIndex(F)I
    .registers 6
    .param p1, "lux"  # F

    .line 1261
    const/4 v0, 0x0

    .line 1262
    .local v0, "index":I
    const/high16 v1, 0x41f00000  # 30.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_e

    .line 1263
    const/high16 v1, 0x40a00000  # 5.0f

    div-float v1, p1, v1

    float-to-int v0, v1

    goto/16 :goto_a6

    .line 1264
    :cond_e
    const/high16 v1, 0x42b40000  # 90.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1e

    .line 1265
    const/high16 v1, 0x41200000  # 10.0f

    div-float v1, p1, v1

    const/high16 v2, 0x42280000  # 42.0f

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto/16 :goto_a6

    .line 1266
    :cond_1e
    const/high16 v1, 0x43af0000  # 350.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2e

    .line 1267
    const/high16 v1, 0x42480000  # 50.0f

    div-float v1, p1, v1

    const/high16 v2, 0x42440000  # 49.0f

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto/16 :goto_a6

    .line 1268
    :cond_2e
    const/high16 v1, 0x43c80000  # 400.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_38

    .line 1269
    const/16 v0, 0x37

    goto/16 :goto_a6

    .line 1270
    :cond_38
    const/high16 v1, 0x44610000  # 900.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_47

    .line 1271
    const/high16 v1, 0x42c80000  # 100.0f

    div-float v1, p1, v1

    const/high16 v2, 0x40c00000  # 6.0f

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_a6

    .line 1272
    :cond_47
    const v2, 0x455ac000  # 3500.0f

    cmpg-float v3, p1, v2

    if-gez v3, :cond_58

    .line 1274
    sub-float v1, p1, v1

    const/high16 v2, 0x43480000  # 200.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41700000  # 15.0f

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_a6

    .line 1275
    :cond_58
    const v1, 0x460ca000  # 9000.0f

    cmpg-float v1, p1, v1

    const/high16 v3, 0x43fa0000  # 500.0f

    if-gez v1, :cond_69

    .line 1277
    sub-float v1, p1, v2

    div-float/2addr v1, v3

    const/high16 v2, 0x41e00000  # 28.0f

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_a6

    .line 1278
    :cond_69
    const v1, 0x461c4000  # 10000.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_77

    .line 1279
    const/high16 v1, 0x42180000  # 38.0f

    div-float v2, p1, v3

    add-float/2addr v2, v1

    float-to-int v0, v2

    goto :goto_a6

    .line 1280
    :cond_77
    const v2, 0x469c4000  # 20000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_88

    .line 1281
    const v1, 0x459c4000  # 5000.0f

    div-float v1, p1, v1

    const/high16 v2, 0x42600000  # 56.0f

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_a6

    .line 1282
    :cond_88
    const v2, 0x47afc800  # 90000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_96

    .line 1283
    const/high16 v2, 0x42680000  # 58.0f

    div-float v1, p1, v1

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_a6

    .line 1284
    :cond_96
    const v2, 0x47c35000  # 100000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_a4

    .line 1285
    const/high16 v2, 0x42640000  # 57.0f

    div-float v1, p1, v1

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_a6

    .line 1287
    :cond_a4
    const/16 v0, 0x43

    .line 1289
    :goto_a6
    sget-boolean v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v1, :cond_cd

    .line 1290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lux = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessDataProcessor"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_cd
    return v0
.end method

.method private getBrightnessAggregationEvent(Ljava/lang/String;)Lcom/android/server/display/statistics/AggregationEvent;
    .registers 4
    .param p1, "keySubEvent"  # Ljava/lang/String;

    .line 2421
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessEventsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/statistics/AggregationEvent;

    .line 2422
    .local v0, "event":Lcom/android/server/display/statistics/AggregationEvent;
    if-nez v0, :cond_10

    .line 2423
    new-instance v1, Lcom/android/server/display/statistics/AggregationEvent$BrightnessAggregationEvent;

    invoke-direct {v1}, Lcom/android/server/display/statistics/AggregationEvent$BrightnessAggregationEvent;-><init>()V

    move-object v0, v1

    .line 2425
    :cond_10
    return-object v0
.end method

.method private getBrightnessChangedState(FF)I
    .registers 5
    .param p1, "currentValue"  # F
    .param p2, "targetValue"  # F

    .line 2188
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_18

    cmpl-float v0, p2, v0

    if-nez v0, :cond_a

    goto :goto_18

    .line 2191
    :cond_a
    cmpl-float v0, p2, p1

    if-lez v0, :cond_10

    .line 2192
    const/4 v0, 0x0

    return v0

    .line 2193
    :cond_10
    cmpg-float v0, p2, p1

    if-gez v0, :cond_16

    .line 2194
    const/4 v0, 0x1

    return v0

    .line 2196
    :cond_16
    const/4 v0, 0x2

    return v0

    .line 2189
    :cond_18
    :goto_18
    const/4 v0, 0x3

    return v0
.end method

.method private getBrightnessSpanByNit(F)I
    .registers 8
    .param p1, "brightness"  # F

    .line 1296
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 1298
    .local v0, "screenNit":F
    const/4 v1, 0x0

    .line 1299
    .local v1, "index":I
    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v2, v0, v2

    const/high16 v3, 0x40000000  # 2.0f

    if-ltz v2, :cond_1c

    cmpg-float v2, v0, v3

    if-gez v2, :cond_1c

    .line 1300
    const/16 v1, 0x39

    goto/16 :goto_d3

    .line 1301
    :cond_1c
    cmpl-float v2, v0, v3

    const/high16 v3, 0x40600000  # 3.5f

    if-ltz v2, :cond_2a

    cmpg-float v2, v0, v3

    if-gez v2, :cond_2a

    .line 1302
    const/16 v1, 0x3a

    goto/16 :goto_d3

    .line 1303
    :cond_2a
    cmpl-float v2, v0, v3

    const/high16 v3, 0x41000000  # 8.0f

    if-ltz v2, :cond_38

    cmpg-float v2, v0, v3

    if-gez v2, :cond_38

    .line 1304
    const/16 v1, 0x3b

    goto/16 :goto_d3

    .line 1305
    :cond_38
    cmpl-float v2, v0, v3

    const/high16 v4, 0x42480000  # 50.0f

    if-ltz v2, :cond_4c

    cmpg-float v2, v0, v4

    if-gez v2, :cond_4c

    .line 1306
    sub-float v2, v0, v3

    const/high16 v3, 0x40e00000  # 7.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v1, v2, 0x2

    goto/16 :goto_d3

    .line 1307
    :cond_4c
    cmpl-float v2, v0, v4

    const/high16 v3, 0x42a00000  # 80.0f

    if-ltz v2, :cond_62

    cmpg-float v2, v0, v3

    if-gez v2, :cond_62

    .line 1308
    sub-float v2, v0, v4

    const/high16 v3, 0x41200000  # 10.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v2, 0x6

    goto/16 :goto_d3

    .line 1309
    :cond_62
    cmpl-float v2, v0, v3

    const/high16 v5, 0x43fa0000  # 500.0f

    if-ltz v2, :cond_77

    cmpg-float v2, v0, v5

    if-gez v2, :cond_77

    .line 1310
    sub-float v2, v0, v3

    const/high16 v3, 0x41a00000  # 20.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v2, 0x9

    goto :goto_d3

    .line 1311
    :cond_77
    cmpl-float v2, v0, v5

    const/high16 v3, 0x447a0000  # 1000.0f

    if-ltz v2, :cond_8a

    cmpg-float v2, v0, v3

    if-gez v2, :cond_8a

    .line 1312
    sub-float v2, v0, v5

    div-float/2addr v2, v4

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v2, 0x1e

    goto :goto_d3

    .line 1313
    :cond_8a
    cmpl-float v2, v0, v3

    const v3, 0x44848000  # 1060.0f

    if-ltz v2, :cond_98

    cmpg-float v2, v0, v3

    if-gez v2, :cond_98

    .line 1314
    const/16 v1, 0x2a

    goto :goto_d3

    .line 1315
    :cond_98
    cmpl-float v2, v0, v3

    const/high16 v3, 0x44960000  # 1200.0f

    if-ltz v2, :cond_a5

    cmpg-float v2, v0, v3

    if-gez v2, :cond_a5

    .line 1316
    const/16 v1, 0x2b

    goto :goto_d3

    .line 1317
    :cond_a5
    cmpl-float v2, v0, v3

    const v4, 0x45098000  # 2200.0f

    if-ltz v2, :cond_b9

    cmpg-float v2, v0, v4

    if-gez v2, :cond_b9

    .line 1318
    sub-float v2, v0, v3

    const/high16 v3, 0x43480000  # 200.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v1, v2, 0x2c

    goto :goto_d3

    .line 1319
    :cond_b9
    cmpl-float v2, v0, v4

    const v3, 0x459c4000  # 5000.0f

    if-ltz v2, :cond_cd

    cmpg-float v2, v0, v3

    if-gez v2, :cond_cd

    .line 1320
    sub-float v2, v0, v4

    const/high16 v3, 0x43c80000  # 400.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v1, v2, 0x31

    goto :goto_d3

    .line 1321
    :cond_cd
    cmpl-float v2, v0, v3

    if-ltz v2, :cond_d3

    .line 1322
    const/16 v1, 0x38

    .line 1324
    :cond_d3
    :goto_d3
    sget-boolean v2, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v2, :cond_103

    .line 1325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "brightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", screenNit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BrightnessDataProcessor"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_103
    return v1
.end method

.method private getBrightnessType(ZZFZ)I
    .registers 7
    .param p1, "userInitiatedChange"  # Z
    .param p2, "useAutoBrightness"  # Z
    .param p3, "brightnessOverrideFromWindow"  # F
    .param p4, "sunlightActive"  # Z

    .line 1233
    const/4 v0, 0x0

    .line 1235
    .local v0, "type":I
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1236
    const/4 v0, 0x3

    goto :goto_16

    .line 1237
    :cond_9
    if-eqz p2, :cond_f

    if-eqz p1, :cond_f

    .line 1238
    const/4 v0, 0x2

    goto :goto_16

    .line 1239
    :cond_f
    if-eqz p2, :cond_13

    .line 1240
    const/4 v0, 0x1

    goto :goto_16

    .line 1241
    :cond_13
    if-eqz p4, :cond_16

    .line 1242
    const/4 v0, 0x4

    .line 1244
    :cond_16
    :goto_16
    return v0
.end method

.method private getCbmAggregationEvent(Ljava/lang/String;)Lcom/android/server/display/statistics/AggregationEvent;
    .registers 4
    .param p1, "keySubEvent"  # Ljava/lang/String;

    .line 3409
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCbmEventsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/statistics/AggregationEvent;

    .line 3410
    .local v0, "event":Lcom/android/server/display/statistics/AggregationEvent;
    if-nez v0, :cond_10

    .line 3411
    new-instance v1, Lcom/android/server/display/statistics/AggregationEvent$CbmAggregationEvent;

    invoke-direct {v1}, Lcom/android/server/display/statistics/AggregationEvent$CbmAggregationEvent;-><init>()V

    move-object v0, v1

    .line 3413
    :cond_10
    return-object v0
.end method

.method private getConfigBrightness(FI)F
    .registers 4
    .param p1, "lux"  # F
    .param p2, "sceneState"  # I

    .line 832
    const/4 v0, -0x1

    if-ne p2, v0, :cond_e

    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOriSpline:Landroid/util/Spline;

    if-eqz v0, :cond_e

    .line 833
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOriSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0

    .line 834
    :cond_e
    if-nez p2, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDefaultSceneSpline:Landroid/util/Spline;

    if-eqz v0, :cond_1b

    .line 835
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDefaultSceneSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0

    .line 836
    :cond_1b
    const/4 v0, 0x2

    if-ne p2, v0, :cond_29

    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDarkeningSceneSpline:Landroid/util/Spline;

    if-eqz v0, :cond_29

    .line 837
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDarkeningSceneSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0

    .line 838
    :cond_29
    const/4 v0, 0x1

    if-ne p2, v0, :cond_37

    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrighteningSceneSpline:Landroid/util/Spline;

    if-eqz v0, :cond_37

    .line 839
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrighteningSceneSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0

    .line 841
    :cond_37
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0
.end method

.method private getDisplayIdEvent()V
    .registers 4

    .line 2251
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v0, :cond_16

    .line 2252
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getDisplayID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "display_id"

    const-string/jumbo v2, "value"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2254
    :cond_16
    return-void
.end method

.method private getHourFromTimestamp(J)I
    .registers 5
    .param p1, "timestamp"  # J

    .line 3701
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3702
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3703
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method private getOver1060nitBrightnessUsage(FZZZ)V
    .registers 26
    .param p1, "curBrightness"  # F
    .param p2, "isScreenOnChange"  # Z
    .param p3, "dueToReport"  # Z
    .param p4, "isHdrLayer"  # Z

    .line 1073
    move-object/from16 v0, p0

    move/from16 v3, p4

    iget v4, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitPreBrightness:F

    invoke-direct {v0, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessSpanByNit(F)I

    move-result v4

    .line 1075
    .local v4, "preSpanIndex":I
    const/4 v5, 0x0

    .line 1076
    .local v5, "duration":F
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 1077
    invoke-direct/range {p0 .. p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessSpanByNit(F)I

    move-result v6

    .line 1078
    .local v6, "curSpanIndex":I
    move/from16 v7, p1

    iput v7, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitPreBrightness:F

    goto :goto_1d

    .line 1080
    .end local v6  # "curSpanIndex":I
    :cond_1a
    move/from16 v7, p1

    move v6, v4

    .line 1082
    .restart local v6  # "curSpanIndex":I
    :goto_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1083
    .local v8, "now":J
    const-string v10, "all"

    const-string/jumbo v11, "over_1060nit_times"

    const-string/jumbo v15, "hdr"

    const/16 v16, 0x1

    const-string/jumbo v12, "sdr"

    const/16 v13, 0x38

    const/high16 v18, 0x447a0000  # 1000.0f

    const/16 v14, 0x2b

    if-lt v6, v14, :cond_58

    if-gt v6, v13, :cond_58

    if-eqz p2, :cond_41

    const-wide/16 v19, 0x0

    iget-boolean v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mScreenOn:Z

    if-nez v1, :cond_4d

    goto :goto_43

    :cond_41
    const-wide/16 v19, 0x0

    :goto_43
    if-lt v4, v14, :cond_4d

    const/16 v1, 0x39

    if-lt v4, v1, :cond_5a

    const/16 v1, 0x3b

    if-gt v4, v1, :cond_5a

    .line 1085
    :cond_4d
    invoke-direct {v0, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateOver1060nitTimeStamp(Z)V

    .line 1086
    iget v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitTimesIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitTimesIndex:I

    goto/16 :goto_123

    .line 1083
    :cond_58
    const-wide/16 v19, 0x0

    .line 1087
    :cond_5a
    if-lt v6, v14, :cond_a7

    if-gt v6, v13, :cond_a7

    if-lt v4, v14, :cond_a7

    if-gt v4, v13, :cond_a7

    iget-boolean v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsHdrLayer:Z

    if-eq v1, v3, :cond_a7

    .line 1089
    if-eqz v3, :cond_86

    iget-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrEnableTimeStamp:J

    cmp-long v1, v1, v19

    if-lez v1, :cond_86

    .line 1090
    iget-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrEnableTimeStamp:J

    sub-long v1, v8, v1

    long-to-float v1, v1

    div-float v5, v1, v18

    .line 1091
    invoke-direct {v0, v5, v12}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->AggregateOver1060nitBrightnessUsage(FLjava/lang/String;)V

    .line 1092
    iput-wide v8, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrEnableTimeStamp:J

    .line 1093
    move-wide/from16 v1, v19

    iput-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrEnableTimeStamp:J

    .line 1094
    move/from16 v1, v16

    iput-boolean v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdr:Z

    .line 1095
    iput v5, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrLastDuration:F

    goto/16 :goto_123

    .line 1096
    :cond_86
    if-nez v3, :cond_123

    iget-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrEnableTimeStamp:J

    const-wide/16 v19, 0x0

    cmp-long v1, v1, v19

    if-lez v1, :cond_123

    .line 1097
    iget-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrEnableTimeStamp:J

    sub-long v1, v8, v1

    long-to-float v1, v1

    div-float v5, v1, v18

    .line 1098
    invoke-direct {v0, v5, v15}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->AggregateOver1060nitBrightnessUsage(FLjava/lang/String;)V

    .line 1099
    iput-wide v8, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrEnableTimeStamp:J

    .line 1100
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrEnableTimeStamp:J

    .line 1101
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdr:Z

    .line 1102
    iput v5, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrLastDuration:F

    goto/16 :goto_123

    .line 1104
    :cond_a7
    if-lt v6, v14, :cond_b1

    const/16 v1, 0x39

    if-lt v6, v1, :cond_123

    const/16 v1, 0x3b

    if-gt v6, v1, :cond_123

    :cond_b1
    if-lt v4, v14, :cond_123

    if-gt v4, v13, :cond_123

    .line 1106
    iget v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitTimesIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v11, v10, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1107
    iget-boolean v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdr:Z

    if-ne v3, v1, :cond_ec

    .line 1108
    if-eqz v3, :cond_d7

    iget-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrEnableTimeStamp:J

    const-wide/16 v19, 0x0

    cmp-long v1, v1, v19

    if-lez v1, :cond_d7

    .line 1109
    iget-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrEnableTimeStamp:J

    sub-long v1, v8, v1

    long-to-float v1, v1

    div-float v5, v1, v18

    .line 1110
    invoke-direct {v0, v5, v15}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->AggregateOver1060nitBrightnessUsage(FLjava/lang/String;)V

    goto :goto_115

    .line 1111
    :cond_d7
    if-nez v3, :cond_115

    iget-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrEnableTimeStamp:J

    const-wide/16 v19, 0x0

    cmp-long v1, v1, v19

    if-lez v1, :cond_115

    .line 1112
    iget-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrEnableTimeStamp:J

    sub-long v1, v8, v1

    long-to-float v1, v1

    div-float v5, v1, v18

    .line 1113
    invoke-direct {v0, v5, v12}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->AggregateOver1060nitBrightnessUsage(FLjava/lang/String;)V

    goto :goto_115

    .line 1116
    :cond_ec
    if-eqz v3, :cond_101

    iget-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrEnableTimeStamp:J

    const-wide/16 v19, 0x0

    cmp-long v1, v1, v19

    if-lez v1, :cond_101

    .line 1117
    iget-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrEnableTimeStamp:J

    sub-long v1, v8, v1

    long-to-float v1, v1

    div-float v5, v1, v18

    .line 1118
    invoke-direct {v0, v5, v12}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->AggregateOver1060nitBrightnessUsage(FLjava/lang/String;)V

    goto :goto_115

    .line 1119
    :cond_101
    if-nez v3, :cond_115

    iget-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrEnableTimeStamp:J

    const-wide/16 v19, 0x0

    cmp-long v1, v1, v19

    if-lez v1, :cond_115

    .line 1120
    iget-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrEnableTimeStamp:J

    sub-long v1, v8, v1

    long-to-float v1, v1

    div-float v5, v1, v18

    .line 1121
    invoke-direct {v0, v5, v15}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->AggregateOver1060nitBrightnessUsage(FLjava/lang/String;)V

    .line 1124
    :cond_115
    :goto_115
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrEnableTimeStamp:J

    .line 1125
    iput-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrEnableTimeStamp:J

    .line 1126
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdr:Z

    .line 1127
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrLastDuration:F

    .line 1128
    iput v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrLastDuration:F

    .line 1130
    :cond_123
    :goto_123
    if-eqz p3, :cond_129

    iget-boolean v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mScreenOn:Z

    if-nez v1, :cond_12f

    :cond_129
    if-eqz p2, :cond_16e

    iget-boolean v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mScreenOn:Z

    if-nez v1, :cond_16e

    :cond_12f
    if-lt v6, v14, :cond_16e

    if-gt v6, v13, :cond_16e

    .line 1132
    iget v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitTimesIndex:I

    const/16 v16, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitTimesIndex:I

    .line 1133
    iget v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitTimesIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v11, v10, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1134
    iget-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrEnableTimeStamp:J

    const-wide/16 v19, 0x0

    cmp-long v1, v1, v19

    if-lez v1, :cond_159

    .line 1135
    iget-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrEnableTimeStamp:J

    sub-long v1, v8, v1

    long-to-float v1, v1

    div-float v5, v1, v18

    .line 1136
    invoke-direct {v0, v5, v12}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->AggregateOver1060nitBrightnessUsage(FLjava/lang/String;)V

    .line 1137
    iput-wide v8, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrEnableTimeStamp:J

    goto :goto_18b

    .line 1138
    :cond_159
    iget-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrEnableTimeStamp:J

    const-wide/16 v19, 0x0

    cmp-long v1, v1, v19

    if-lez v1, :cond_18b

    .line 1139
    iget-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrEnableTimeStamp:J

    sub-long v1, v8, v1

    long-to-float v1, v1

    div-float v5, v1, v18

    .line 1140
    invoke-direct {v0, v5, v15}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->AggregateOver1060nitBrightnessUsage(FLjava/lang/String;)V

    .line 1141
    iput-wide v8, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrEnableTimeStamp:J

    goto :goto_18b

    .line 1143
    :cond_16e
    if-eqz p3, :cond_17a

    if-lt v6, v14, :cond_180

    const/16 v1, 0x39

    if-lt v6, v1, :cond_17a

    const/16 v1, 0x3b

    if-le v6, v1, :cond_180

    :cond_17a
    if-eqz p2, :cond_18b

    iget-boolean v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mScreenOn:Z

    if-nez v1, :cond_18b

    .line 1145
    :cond_180
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrEnableTimeStamp:J

    .line 1146
    iput-wide v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrEnableTimeStamp:J

    .line 1147
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrLastDuration:F

    .line 1148
    iput v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrLastDuration:F

    .line 1150
    :cond_18b
    :goto_18b
    if-eqz p3, :cond_194

    .line 1151
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitTimesIndex:I

    .line 1152
    iput v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitHdrTimesIndex:I

    .line 1153
    iput v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitSdrTimesIndex:I

    .line 1155
    :cond_194
    sget-boolean v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v1, :cond_207

    const/16 v17, 0x0

    cmpl-float v1, v5, v17

    if-eqz v1, :cond_207

    .line 1156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getOver1060nitBrightnessUsage:, curspan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->m1060NitPreBrightness:F

    .line 1157
    invoke-direct {v0, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessSpanByNit(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", prespan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dueToReport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ", isScreenOnChange: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v10, p2

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ", mScreenOn: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v11, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mScreenOn:Z

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ", isHdr: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ", duration: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v11, "s"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1156
    const-string v11, "BrightnessDataProcessor"

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20b

    .line 1155
    :cond_207
    move/from16 v10, p2

    move/from16 v2, p3

    .line 1165
    :goto_20b
    return-void
.end method

.method private getSpline(Landroid/hardware/display/BrightnessConfiguration;)Landroid/util/Spline;
    .registers 6
    .param p1, "config"  # Landroid/hardware/display/BrightnessConfiguration;

    .line 2242
    const/4 v0, 0x0

    .line 2243
    .local v0, "spline":Landroid/util/Spline;
    if-eqz p1, :cond_13

    .line 2244
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v1

    .line 2245
    .local v1, "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [F

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [F

    invoke-static {v2, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    .line 2247
    .end local v1  # "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :cond_13
    return-object v0
.end method

.method private getSumValues(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "value"  # Ljava/lang/Object;
    .param p2, "increment"  # Ljava/lang/Object;

    .line 2480
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    .line 2481
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2483
    :cond_1c
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_38

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_38

    .line 2484
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object v2, p2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 2486
    :cond_38
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_54

    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_54

    .line 2487
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 2489
    :cond_54
    return-object p2
.end method

.method private getTemperatureSpan(F)I
    .registers 6
    .param p1, "temperature"  # F

    .line 1391
    const/4 v0, 0x0

    .line 1392
    .local v0, "temperatureSpan":I
    const/4 v1, 0x0

    .line 1393
    .local v1, "index":I
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_70

    .line 1394
    :goto_8
    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemperatureSpan:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_70

    .line 1395
    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemperatureSpan:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemperatureSpan:Ljava/util/List;

    .line 1396
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2c

    .line 1397
    move v0, v1

    .line 1398
    goto :goto_70

    .line 1399
    :cond_2c
    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemperatureSpan:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_49

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemperatureSpan:Ljava/util/List;

    .line 1400
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_49

    .line 1401
    add-int/lit8 v0, v1, 0x1

    .line 1402
    goto :goto_70

    .line 1403
    :cond_49
    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemperatureSpan:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_6d

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemperatureSpan:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    .line 1404
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_6d

    .line 1405
    move v0, v1

    .line 1406
    goto :goto_70

    .line 1408
    :cond_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1411
    :cond_70
    :goto_70
    return v0
.end method

.method private getThermalAggregationEvent(Ljava/lang/String;)Lcom/android/server/display/statistics/AggregationEvent;
    .registers 4
    .param p1, "keySubEvent"  # Ljava/lang/String;

    .line 2576
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalEventsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/statistics/AggregationEvent;

    .line 2577
    .local v0, "event":Lcom/android/server/display/statistics/AggregationEvent;
    if-nez v0, :cond_10

    .line 2578
    new-instance v1, Lcom/android/server/display/statistics/AggregationEvent$ThermalAggregationEvent;

    invoke-direct {v1}, Lcom/android/server/display/statistics/AggregationEvent$ThermalAggregationEvent;-><init>()V

    move-object v0, v1

    .line 2580
    :cond_10
    return-object v0
.end method

.method private getTopFiveAppTimes()V
    .registers 10

    .line 1566
    const-string/jumbo v0, "over_20000lux_top5_app_all_usage"

    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessAggregationEvent(Ljava/lang/String;)Lcom/android/server/display/statistics/AggregationEvent;

    move-result-object v0

    .line 1567
    .local v0, "usageEvent":Lcom/android/server/display/statistics/AggregationEvent;
    const-string/jumbo v1, "over_20000lux_top5_app_times_usage"

    invoke-direct {p0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessAggregationEvent(Ljava/lang/String;)Lcom/android/server/display/statistics/AggregationEvent;

    move-result-object v2

    .line 1568
    .local v2, "timesEvent":Lcom/android/server/display/statistics/AggregationEvent;
    invoke-virtual {v0}, Lcom/android/server/display/statistics/AggregationEvent;->getQuotaEvents()Ljava/util/Map;

    move-result-object v3

    .line 1569
    .local v3, "usageEventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lcom/android/server/display/statistics/AggregationEvent;->getQuotaEvents()Ljava/util/Map;

    move-result-object v4

    .line 1570
    .local v4, "timesEventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1571
    .local v5, "newTimesEventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1572
    .local v7, "key":Ljava/lang/Object;
    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 1573
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1574
    .local v8, "times":Ljava/lang/Object;
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    .end local v7  # "key":Ljava/lang/Object;
    .end local v8  # "times":Ljava/lang/Object;
    :cond_3a
    goto :goto_23

    .line 1577
    :cond_3b
    const/4 v6, 0x5

    invoke-direct {p0, v1, v6}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsOrder(Ljava/lang/String;I)V

    .line 1578
    invoke-direct {p0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessAggregationEvent(Ljava/lang/String;)Lcom/android/server/display/statistics/AggregationEvent;

    move-result-object v6

    .line 1579
    .local v6, "top5TimesEvent":Lcom/android/server/display/statistics/AggregationEvent;
    invoke-virtual {v6}, Lcom/android/server/display/statistics/AggregationEvent;->getQuotaEvents()Ljava/util/Map;

    move-result-object v7

    .line 1580
    .local v7, "top5TimesEventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v5, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1581
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 1582
    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1583
    iget-object v8, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessEventsMap:Ljava/util/Map;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    return-void
.end method

.method private handleAccSensor(Landroid/hardware/SensorEvent;)V
    .registers 4
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 2730
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v0, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    .line 2733
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->accValues:[F

    .line 2734
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->registerAccSensor(Z)V

    .line 2736
    :cond_1b
    return-void
.end method

.method private handleBrightnessChangeEvent(Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;)V
    .registers 12
    .param p1, "item"  # Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    .line 584
    iget v0, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->brightnessOverrideFromWindow:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 585
    .local v0, "windowOverrideApplying":Z
    const/4 v2, 0x0

    if-eqz v0, :cond_15

    iget v3, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->brightnessOverrideFromWindow:F

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastBrightnessOverrideFromWindow:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_15

    move v3, v1

    goto :goto_16

    :cond_15
    move v3, v2

    .line 587
    .local v3, "windowOverrideChanging":Z
    :goto_16
    iget-boolean v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mWindowOverrideBrightnessChanging:Z

    if-eq v3, v4, :cond_1c

    .line 588
    iput-boolean v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mWindowOverrideBrightnessChanging:Z

    .line 591
    :cond_1c
    if-eqz v3, :cond_58

    .line 592
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 594
    .local v4, "now":J
    iget-boolean v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mUserDragging:Z

    if-nez v6, :cond_34

    iget-boolean v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mHaveValidMotionForWindowBrightness:Z

    if-eqz v6, :cond_58

    iget-wide v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLatestDraggingChangedTime:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x32

    cmp-long v6, v6, v8

    if-gez v6, :cond_58

    .line 596
    :cond_34
    iget v6, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalBrightness:F

    iput v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastBrightnessOverrideFromWindow:F

    .line 597
    iput-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mHaveValidWindowBrightness:Z

    .line 598
    sget-boolean v6, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v6, :cond_58

    .line 599
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Brightness from window is changing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalBrightness:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BrightnessDataProcessor"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local v4  # "now":J
    :cond_58
    if-eqz v0, :cond_5f

    iget-boolean v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mHaveValidWindowBrightness:Z

    if-nez v4, :cond_5f

    .line 604
    return-void

    .line 607
    :cond_5f
    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    if-eqz v4, :cond_72

    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v4, v4, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    iget v5, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    if-eq v4, v5, :cond_72

    .line 608
    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v4, v4, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    invoke-direct {p0, v4, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->registerSensorByBrightnessType(IZ)V

    .line 610
    :cond_72
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    .line 612
    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mReportBrightnessEventsEnable:Z

    if-eqz v2, :cond_7d

    .line 613
    iget v2, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    invoke-direct {p0, v2, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->registerSensorByBrightnessType(IZ)V

    .line 616
    :cond_7d
    const-wide/16 v1, 0xbb8

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->debounceBrightnessEvent(J)V

    .line 617
    return-void
.end method

.method private handleLightFovSensor(Landroid/hardware/SensorEvent;)V
    .registers 6
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 2743
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v0, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 2745
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    iput-boolean v2, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->isUseLightFovOptimization:Z

    .line 2746
    invoke-direct {p0, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->registerLightFovSensor(Z)V

    .line 2748
    :cond_1d
    return-void
.end method

.method private handleLightSensor(Landroid/hardware/SensorEvent;)V
    .registers 6
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 2716
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    if-eqz v0, :cond_16

    .line 2717
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v0, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    .line 2718
    .local v0, "type":I
    if-nez v0, :cond_16

    .line 2719
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->ambientLux:F

    .line 2720
    invoke-direct {p0, v0, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->registerSensorByBrightnessType(IZ)V

    .line 2723
    .end local v0  # "type":I
    :cond_16
    return-void
.end method

.method private isValidLuxSpanStartTimeStamp()Z
    .registers 5

    .line 1254
    iget-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLuxSpanStartTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isValidStartTimeStamp()Z
    .registers 5

    .line 1249
    iget-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mStartTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private synthetic lambda$aggregateIndividualModelTrainTimes$13(Z)V
    .registers 5
    .param p1, "isSuccessful"  # Z

    .line 3496
    if-eqz p1, :cond_6

    const-string/jumbo v0, "model_validation_success_count"

    goto :goto_9

    .line 3497
    :cond_6
    const-string/jumbo v0, "model_validation_fail_count"

    :goto_9
    nop

    .line 3498
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "individual_model_train"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateCbmEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3499
    sget-boolean v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v1, :cond_3d

    .line 3500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aggregateIndividualModelTrainTimes: isSuccessful: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCbmEventsMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCbmEventsMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessDataProcessor"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    :cond_3d
    return-void
.end method

.method private synthetic lambda$aggregateModelPredictTimeoutTimes$14()V
    .registers 4

    .line 3511
    nop

    .line 3512
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3511
    const-string/jumbo v1, "individual_model_predict"

    const-string/jumbo v2, "model_predict_timeout_count"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateCbmEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3513
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_2d

    .line 3514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aggregateModelPredictTimeoutTimes: mCbmEventsMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCbmEventsMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    :cond_2d
    return-void
.end method

.method private synthetic lambda$forceReportTrainDataEnabled$12(Z)V
    .registers 2
    .param p1, "enable"  # Z

    .line 3400
    iput-boolean p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForcedReportTrainDataEnabled:Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 509
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->reportScheduleEvent()V

    .line 510
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->setReportScheduleEventAlarm(Z)V

    .line 511
    return-void
.end method

.method private synthetic lambda$noteAverageTemperature$9(ZF)V
    .registers 6
    .param p1, "needComputed"  # Z
    .param p2, "temperature"  # F

    .line 3067
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mScreenOn:Z

    if-nez v0, :cond_5

    .line 3068
    return-void

    .line 3070
    :cond_5
    if-eqz p1, :cond_36

    .line 3071
    const-string v0, "average"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "thermal_average_temperature"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsAvg(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3072
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_36

    .line 3073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "noteAverageTemperature: mThermalEventsMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalEventsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    :cond_36
    return-void
.end method

.method private synthetic lambda$noteDetailThermalUsage$7(IF)V
    .registers 14
    .param p1, "conditionId"  # I
    .param p2, "temperature"  # F

    .line 2881
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mScreenOn:Z

    if-nez v0, :cond_5

    .line 2882
    return-void

    .line 2884
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2886
    .local v0, "now":J
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    const-string/jumbo v3, "restricted_usage"

    const-string/jumbo v4, "thermal_detail_restricted_usage"

    const/4 v5, 0x1

    const-string/jumbo v6, "unrestricted_usage"

    const-string/jumbo v7, "thermal_detail_unrestricted_usage"

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/high16 v10, 0x447a0000  # 1000.0f

    if-eq v2, p1, :cond_6a

    .line 2887
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v2, v9, :cond_40

    .line 2888
    iget-wide v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    div-float/2addr v2, v10

    .line 2889
    .local v2, "duration":F
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalUnrestrictedUsage:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2890
    invoke-direct {p0, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getTemperatureSpan(F)I

    move-result v5

    .line 2889
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->countThermalUsage(FLandroid/util/SparseArray;II)V

    .line 2891
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    .line 2892
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    .line 2893
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalUnrestrictedUsage:Landroid/util/SparseArray;

    invoke-direct {p0, v7, v6, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_ba

    .line 2895
    .end local v2  # "duration":F
    :cond_40
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v2, v8, :cond_61

    .line 2896
    iget-wide v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    sub-long v5, v0, v5

    long-to-float v2, v5

    div-float/2addr v2, v10

    .line 2897
    .restart local v2  # "duration":F
    iget-object v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalRestrictedUsage:Landroid/util/SparseArray;

    iget v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2898
    invoke-direct {p0, v7}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getTemperatureSpan(F)I

    move-result v7

    .line 2897
    invoke-direct {p0, v2, v5, v6, v7}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->countThermalUsage(FLandroid/util/SparseArray;II)V

    .line 2899
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    .line 2900
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    .line 2901
    iget-object v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalRestrictedUsage:Landroid/util/SparseArray;

    invoke-direct {p0, v4, v3, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_ba

    .line 2903
    .end local v2  # "duration":F
    :cond_61
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v2, v5, :cond_ba

    .line 2904
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    .line 2905
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    goto :goto_ba

    .line 2907
    :cond_6a
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_ba

    .line 2908
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v2, v9, :cond_91

    .line 2909
    iget-wide v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    div-float/2addr v2, v10

    .line 2910
    .restart local v2  # "duration":F
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalUnrestrictedUsage:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2911
    invoke-direct {p0, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getTemperatureSpan(F)I

    move-result v5

    .line 2910
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->countThermalUsage(FLandroid/util/SparseArray;II)V

    .line 2912
    iput p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2913
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    .line 2914
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalUnrestrictedUsage:Landroid/util/SparseArray;

    invoke-direct {p0, v7, v6, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_ba

    .line 2916
    .end local v2  # "duration":F
    :cond_91
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v2, v8, :cond_b2

    .line 2917
    iget-wide v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    sub-long v5, v0, v5

    long-to-float v2, v5

    div-float/2addr v2, v10

    .line 2918
    .restart local v2  # "duration":F
    iget-object v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalRestrictedUsage:Landroid/util/SparseArray;

    iget v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2919
    invoke-direct {p0, v7}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getTemperatureSpan(F)I

    move-result v7

    .line 2918
    invoke-direct {p0, v2, v5, v6, v7}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->countThermalUsage(FLandroid/util/SparseArray;II)V

    .line 2920
    iput p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2921
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    .line 2922
    iget-object v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalRestrictedUsage:Landroid/util/SparseArray;

    invoke-direct {p0, v4, v3, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_ba

    .line 2924
    .end local v2  # "duration":F
    :cond_b2
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v2, v5, :cond_ba

    .line 2925
    iput p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2926
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    .line 2929
    :cond_ba
    :goto_ba
    sget-boolean v2, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v2, :cond_109

    .line 2930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "noteDetailThermalUsage: thermal state changed, mThermalStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", conditionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", temperature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLastTemperature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mThermalEventsMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalEventsMap:Ljava/util/Map;

    .line 2935
    invoke-interface {v3}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2930
    const-string v3, "BrightnessDataProcessor"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    :cond_109
    return-void
.end method

.method private synthetic lambda$noteFullSceneThermalUsageStats$6(FFIF)V
    .registers 13
    .param p1, "thermalBrightness"  # F
    .param p2, "brightness"  # F
    .param p3, "conditionId"  # I
    .param p4, "temperature"  # F

    .line 2630
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2631
    .local v4, "now":J
    move-wide v3, v4

    .end local v4  # "now":J
    .local v3, "now":J
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    .end local p1  # "thermalBrightness":F
    .end local p2  # "brightness":F
    .local v1, "thermalBrightness":F
    .local v2, "brightness":F
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteThermalBrightnessRestrictedUsage(FFJZ)V

    .line 2632
    move-wide v4, v3

    .end local v1  # "thermalBrightness":F
    .end local v2  # "brightness":F
    .end local v3  # "now":J
    .restart local v4  # "now":J
    .restart local p1  # "thermalBrightness":F
    .restart local p2  # "brightness":F
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v7, 0x1

    if-nez v0, :cond_32

    .line 2633
    cmpl-float v0, p2, p1

    if-lez v0, :cond_25

    .line 2634
    const/4 v1, 0x3

    const/4 v6, 0x1

    move-object v0, p0

    move v2, p3

    move v3, p4

    .end local p3  # "conditionId":I
    .end local p4  # "temperature":F
    .local v2, "conditionId":I
    .local v3, "temperature":F
    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteDetailThermalUsage(IIFJZ)V

    .line 2636
    const/4 p3, 0x3

    invoke-direct {p0, p3, v4, v5, v7}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteThermalUsage(IJZ)V

    goto :goto_3d

    .line 2638
    .end local v2  # "conditionId":I
    .end local v3  # "temperature":F
    .restart local p3  # "conditionId":I
    .restart local p4  # "temperature":F
    :cond_25
    move-object v0, p0

    move v2, p3

    move v3, p4

    .end local p3  # "conditionId":I
    .end local p4  # "temperature":F
    .restart local v2  # "conditionId":I
    .restart local v3  # "temperature":F
    const/4 v1, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteDetailThermalUsage(IIFJZ)V

    .line 2640
    const/4 p3, 0x2

    invoke-direct {p0, p3, v4, v5, v7}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteThermalUsage(IJZ)V

    goto :goto_3d

    .line 2643
    .end local v2  # "conditionId":I
    .end local v3  # "temperature":F
    .restart local p3  # "conditionId":I
    .restart local p4  # "temperature":F
    :cond_32
    move-object v0, p0

    move v2, p3

    move v3, p4

    .end local p3  # "conditionId":I
    .end local p4  # "temperature":F
    .restart local v2  # "conditionId":I
    .restart local v3  # "temperature":F
    const/4 v1, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteDetailThermalUsage(IIFJZ)V

    .line 2645
    invoke-direct {p0, v7, v4, v5, v7}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteThermalUsage(IJZ)V

    .line 2647
    :goto_3d
    return-void
.end method

.method private synthetic lambda$onAmbientLuxChange$2(F)V
    .registers 4
    .param p1, "ambientLux"  # F

    .line 1495
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getTopFiveAppsIn20000Lux(FZZZ)V

    .line 1496
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPreDozeState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 1497
    const-string/jumbo v0, "lux_change"

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->notifyFullAodState(ZFZLjava/lang/String;)V

    .line 1499
    :cond_f
    return-void
.end method

.method private synthetic lambda$startHdyUsageStats$10(Z)V
    .registers 2
    .param p1, "isHdrLayer"  # Z

    .line 3099
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteHdrUsage(Z)V

    .line 3100
    return-void
.end method

.method static synthetic lambda$statsOrder$4(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 6
    .param p0, "e1"  # Ljava/util/Map$Entry;
    .param p1, "e2"  # Ljava/util/Map$Entry;

    .line 2449
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$statsOrder$5(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "oldValue"  # Ljava/lang/Object;
    .param p1, "newValue"  # Ljava/lang/Object;

    .line 2454
    return-object p0
.end method

.method private synthetic lambda$updateExpId$3(I)V
    .registers 2
    .param p1, "expId"  # I

    .line 2264
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mExpId:I

    return-void
.end method

.method private synthetic lambda$updateGrayScale$1(F)V
    .registers 2
    .param p1, "grayScale"  # F

    .line 845
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mGrayScale:F

    return-void
.end method

.method private synthetic lambda$updateScreenNits$11(FF)V
    .registers 5
    .param p1, "originalNit"  # F
    .param p2, "actualNit"  # F

    .line 3369
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOriginalNit:F

    .line 3370
    iput p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mActualNit:F

    .line 3371
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_2f

    .line 3372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateScreenNits: mOriginalNit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOriginalNit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActualNit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mActualNit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    :cond_2f
    return-void
.end method

.method private synthetic lambda$updateThermalStats$8(ZFZ)V
    .registers 12
    .param p1, "isScreenOn"  # Z
    .param p2, "temperature"  # F
    .param p3, "needComputed"  # Z

    .line 3043
    iget-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastThermalStatusTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_35

    .line 3044
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3045
    .local v4, "now":J
    if-eqz p1, :cond_1a

    .line 3046
    iput-wide v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastThermalStatusTimeStamp:J

    .line 3047
    iput-wide v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    .line 3048
    long-to-float v0, v4

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastBrightnessRestrictedTimeStamp:F

    .line 3049
    invoke-direct {p0, p2, p3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteAverageTemperatureScreenOn(FZ)V

    move-object v1, p0

    goto :goto_36

    .line 3051
    :cond_1a
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastRestrictedBrightness:F

    iget v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastUnrestrictedBrightness:F

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteThermalBrightnessRestrictedUsage(FFJZ)V

    .line 3052
    iget v3, v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    move-wide v5, v4

    .end local v4  # "now":J
    .local v5, "now":J
    iget v4, v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    const/4 v7, 0x0

    const/4 v2, 0x3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteDetailThermalUsage(IIFJZ)V

    .line 3054
    move-wide v4, v5

    .end local v5  # "now":J
    .restart local v4  # "now":J
    iget v0, v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v4, v5, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteThermalUsage(IJZ)V

    goto :goto_36

    .line 3043
    .end local v4  # "now":J
    :cond_35
    move-object v1, p0

    .line 3057
    :goto_36
    return-void
.end method

.method private noteAdjHighTimesOnBrightnessRestricted(IF)V
    .registers 6
    .param p1, "type"  # I
    .param p2, "brightness"  # F

    .line 3172
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eqz p1, :cond_e

    if-eq p1, v0, :cond_e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_e

    if-eq p1, v1, :cond_e

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2b

    :cond_e
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v2, v1, :cond_2b

    .line 3178
    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenBrightness:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2b

    .line 3179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "thermal_brightness_restricted_adj_high_times"

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3181
    :cond_2b
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_72

    .line 3182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "noteAdjHighTimesOnBrightnessRestricted: type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3183
    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastScreenBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThermalEventsMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalEventsMap:Ljava/util/Map;

    .line 3185
    invoke-interface {v1}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3182
    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    :cond_72
    return-void
.end method

.method private noteAverageTemperatureScreenOn(FZ)V
    .registers 6
    .param p1, "temperature"  # F
    .param p2, "needComputed"  # Z

    .line 3085
    if-eqz p2, :cond_31

    .line 3086
    const-string v0, "average"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "thermal_average_temperature"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsAvg(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3087
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_31

    .line 3088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "noteAverageTemperature: mThermalEventsMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalEventsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    :cond_31
    return-void
.end method

.method private noteDetailThermalUsage(IIFJZ)V
    .registers 16
    .param p1, "status"  # I
    .param p2, "conditionId"  # I
    .param p3, "temperature"  # F
    .param p4, "now"  # J
    .param p6, "isScreenOn"  # Z

    .line 2775
    iget-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 2776
    iput p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    .line 2777
    iput p3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2778
    iput-wide p4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    .line 2780
    :cond_e
    const-string/jumbo v0, "restricted_usage"

    const-string/jumbo v1, "thermal_detail_restricted_usage"

    const-string/jumbo v2, "unrestricted_usage"

    const-string/jumbo v3, "thermal_detail_unrestricted_usage"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/high16 v6, 0x447a0000  # 1000.0f

    if-eqz p6, :cond_11b

    .line 2781
    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    const/4 v8, 0x1

    if-eq v7, p2, :cond_73

    .line 2782
    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v7, v5, :cond_47

    .line 2783
    iget-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    sub-long v0, p4, v0

    long-to-float v0, v0

    div-float/2addr v0, v6

    .line 2784
    .local v0, "duration":F
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalUnrestrictedUsage:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2785
    invoke-direct {p0, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getTemperatureSpan(F)I

    move-result v5

    .line 2784
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->countThermalUsage(FLandroid/util/SparseArray;II)V

    .line 2786
    iput p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    .line 2787
    iput-wide p4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    .line 2788
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalUnrestrictedUsage:Landroid/util/SparseArray;

    invoke-direct {p0, v3, v2, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_158

    .line 2790
    .end local v0  # "duration":F
    :cond_47
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v2, v4, :cond_69

    .line 2791
    iget-wide v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    sub-long v2, p4, v2

    long-to-float v2, v2

    div-float/2addr v2, v6

    .line 2792
    .local v2, "duration":F
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalRestrictedUsage:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2793
    invoke-direct {p0, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getTemperatureSpan(F)I

    move-result v5

    .line 2792
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->countThermalUsage(FLandroid/util/SparseArray;II)V

    .line 2794
    iput p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    .line 2795
    iput-wide p4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    .line 2796
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalRestrictedUsage:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_158

    .line 2798
    .end local v2  # "duration":F
    :cond_69
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v0, v8, :cond_158

    .line 2799
    iput p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    .line 2800
    iput-wide p4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    goto/16 :goto_158

    .line 2802
    :cond_73
    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    cmpl-float v7, v7, p3

    if-eqz v7, :cond_c7

    .line 2803
    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v7, v5, :cond_9b

    .line 2804
    iget-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    sub-long v0, p4, v0

    long-to-float v0, v0

    div-float/2addr v0, v6

    .line 2805
    .restart local v0  # "duration":F
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalUnrestrictedUsage:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2806
    invoke-direct {p0, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getTemperatureSpan(F)I

    move-result v5

    .line 2805
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->countThermalUsage(FLandroid/util/SparseArray;II)V

    .line 2807
    iput p3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2808
    iput-wide p4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    .line 2809
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalUnrestrictedUsage:Landroid/util/SparseArray;

    invoke-direct {p0, v3, v2, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_158

    .line 2811
    .end local v0  # "duration":F
    :cond_9b
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v2, v4, :cond_bd

    .line 2812
    iget-wide v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    sub-long v2, p4, v2

    long-to-float v2, v2

    div-float/2addr v2, v6

    .line 2813
    .restart local v2  # "duration":F
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalRestrictedUsage:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2814
    invoke-direct {p0, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getTemperatureSpan(F)I

    move-result v5

    .line 2813
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->countThermalUsage(FLandroid/util/SparseArray;II)V

    .line 2815
    iput p3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2816
    iput-wide p4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    .line 2817
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalRestrictedUsage:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_158

    .line 2819
    .end local v2  # "duration":F
    :cond_bd
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v0, v8, :cond_158

    .line 2820
    iput p3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2821
    iput-wide p4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    goto/16 :goto_158

    .line 2823
    :cond_c7
    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-eq v7, p1, :cond_114

    .line 2824
    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v7, v5, :cond_ec

    .line 2825
    iget-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    sub-long v0, p4, v0

    long-to-float v0, v0

    div-float/2addr v0, v6

    .line 2826
    .restart local v0  # "duration":F
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalUnrestrictedUsage:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2827
    invoke-direct {p0, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getTemperatureSpan(F)I

    move-result v5

    .line 2826
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->countThermalUsage(FLandroid/util/SparseArray;II)V

    .line 2828
    iput p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    .line 2829
    iput-wide p4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    .line 2830
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalUnrestrictedUsage:Landroid/util/SparseArray;

    invoke-direct {p0, v3, v2, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_158

    .line 2832
    .end local v0  # "duration":F
    :cond_ec
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v2, v4, :cond_10d

    .line 2833
    iget-wide v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    sub-long v2, p4, v2

    long-to-float v2, v2

    div-float/2addr v2, v6

    .line 2834
    .restart local v2  # "duration":F
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalRestrictedUsage:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2835
    invoke-direct {p0, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getTemperatureSpan(F)I

    move-result v5

    .line 2834
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->countThermalUsage(FLandroid/util/SparseArray;II)V

    .line 2836
    iput p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    .line 2837
    iput-wide p4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    .line 2838
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalRestrictedUsage:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_158

    .line 2840
    .end local v2  # "duration":F
    :cond_10d
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v0, v8, :cond_158

    .line 2841
    iput-wide p4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    goto :goto_158

    .line 2843
    :cond_114
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v0, v8, :cond_158

    .line 2844
    iput-wide p4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    goto :goto_158

    .line 2847
    :cond_11b
    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v7, v5, :cond_13a

    .line 2848
    iget-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    sub-long v0, p4, v0

    long-to-float v0, v0

    div-float/2addr v0, v6

    .line 2849
    .restart local v0  # "duration":F
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalUnrestrictedUsage:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2850
    invoke-direct {p0, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getTemperatureSpan(F)I

    move-result v5

    .line 2849
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->countThermalUsage(FLandroid/util/SparseArray;II)V

    .line 2851
    iput-wide p4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    .line 2852
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalUnrestrictedUsage:Landroid/util/SparseArray;

    invoke-direct {p0, v3, v2, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_158

    .line 2854
    .end local v0  # "duration":F
    :cond_13a
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    if-ne v2, v4, :cond_158

    .line 2855
    iget-wide v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    sub-long v2, p4, v2

    long-to-float v2, v2

    div-float/2addr v2, v6

    .line 2856
    .restart local v2  # "duration":F
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalRestrictedUsage:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    .line 2857
    invoke-direct {p0, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getTemperatureSpan(F)I

    move-result v5

    .line 2856
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->countThermalUsage(FLandroid/util/SparseArray;II)V

    .line 2858
    iput-wide p4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastDetailThermalUsageTimeStamp:J

    .line 2859
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalRestrictedUsage:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2863
    .end local v2  # "duration":F
    :cond_158
    :goto_158
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_1b1

    .line 2864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "noteDetailThermalUsage: status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThermalStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", conditionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", temperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastTemperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThermalEventsMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalEventsMap:Ljava/util/Map;

    .line 2869
    invoke-interface {v1}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2864
    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    :cond_1b1
    return-void
.end method

.method private noteHbmUsage(FF)V
    .registers 9
    .param p1, "spanIndex"  # F
    .param p2, "duration"  # F

    .line 3143
    const/high16 v0, 0x7fc00000  # Float.NaN

    .line 3144
    .local v0, "transitionBrightness":F
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightness()[F

    move-result-object v1

    .line 3145
    .local v1, "brightness":[F
    if-eqz v1, :cond_18

    .line 3146
    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_13

    .line 3147
    array-length v2, v1

    sub-int/2addr v2, v3

    aget v0, v1, v2

    goto :goto_18

    .line 3149
    :cond_13
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v0, v1, v2

    .line 3152
    :cond_18
    :goto_18
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_77

    .line 3153
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessSpanByNit(F)I

    move-result v2

    int-to-float v2, v2

    .line 3155
    .local v2, "spanTransition":F
    cmpl-float v3, p1, v2

    if-lez v3, :cond_77

    const/high16 v3, 0x42600000  # 56.0f

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_77

    .line 3156
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string/jumbo v5, "hbm_usage"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3157
    sget-boolean v3, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v3, :cond_77

    .line 3158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "noteHbmUsage: spanIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spanTransition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBrightnessEventsMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessEventsMap:Ljava/util/Map;

    .line 3160
    invoke-interface {v4}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3158
    const-string v4, "BrightnessDataProcessor"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    .end local v2  # "spanTransition":F
    :cond_77
    return-void
.end method

.method private noteHdrAppUsage(F)V
    .registers 5
    .param p1, "duration"  # F

    .line 3132
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mHdrAppPackageName:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 3133
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mHdrAppPackageName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "hdr_usage_app_usage"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3135
    :cond_10
    return-void
.end method

.method private noteHdrUsage(Z)V
    .registers 8
    .param p1, "isHdrLayer"  # Z

    .line 3108
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsHdrLayer:Z

    if-eq v0, p1, :cond_5b

    .line 3109
    iput-boolean p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsHdrLayer:Z

    .line 3110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3111
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsHdrLayer:Z

    if-nez v2, :cond_55

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mHdrAppPackageName:Ljava/lang/String;

    if-eqz v2, :cond_55

    .line 3112
    iget-wide v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastHdrEnableTimeStamp:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000  # 1000.0f

    div-float/2addr v2, v3

    .line 3113
    .local v2, "duration":F
    const-string/jumbo v3, "usage_value"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string/jumbo v5, "hdr_usage"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3114
    invoke-direct {p0, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteHdrAppUsage(F)V

    .line 3115
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mHdrAppPackageName:Ljava/lang/String;

    .line 3116
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastHdrEnableTimeStamp:J

    .line 3117
    sget-boolean v3, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v3, :cond_54

    .line 3118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "noteHdrUsage: mBrightnessEventsMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessEventsMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BrightnessDataProcessor"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    .end local v2  # "duration":F
    :cond_54
    goto :goto_5b

    .line 3121
    :cond_55
    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForegroundAppPackageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mHdrAppPackageName:Ljava/lang/String;

    .line 3122
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastHdrEnableTimeStamp:J

    .line 3125
    .end local v0  # "now":J
    :cond_5b
    :goto_5b
    return-void
.end method

.method private noteHdrUsageBeforeReported()V
    .registers 7

    .line 3239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3240
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsHdrLayer:Z

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mHdrAppPackageName:Ljava/lang/String;

    if-eqz v2, :cond_49

    .line 3241
    iget-wide v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastHdrEnableTimeStamp:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000  # 1000.0f

    div-float/2addr v2, v3

    .line 3242
    .local v2, "duration":F
    const-string/jumbo v3, "usage_value"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string/jumbo v5, "hdr_usage"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3243
    invoke-direct {p0, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteHdrAppUsage(F)V

    .line 3244
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastHdrEnableTimeStamp:J

    .line 3245
    sget-boolean v3, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v3, :cond_49

    .line 3246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "noteHdrUsageBeforeReported: mBrightnessEventsMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessEventsMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BrightnessDataProcessor"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    .end local v2  # "duration":F
    :cond_49
    return-void
.end method

.method private noteThermalBrightnessRestrictedUsage(FFJZ)V
    .registers 12
    .param p1, "restrictedBrightness"  # F
    .param p2, "unrestrictedBrightness"  # F
    .param p3, "now"  # J
    .param p5, "isScreenOn"  # Z

    .line 2950
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastBrightnessRestrictedTimeStamp:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    .line 2951
    iput p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastUnrestrictedBrightness:F

    .line 2952
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastRestrictedBrightness:F

    .line 2953
    long-to-float v0, p3

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastBrightnessRestrictedTimeStamp:F

    .line 2956
    :cond_e
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastRestrictedBrightness:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastUnrestrictedBrightness:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1c

    if-nez p5, :cond_68

    .line 2959
    :cond_1c
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_57

    .line 2960
    long-to-float v0, p3

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastBrightnessRestrictedTimeStamp:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x447a0000  # 1000.0f

    div-float/2addr v0, v1

    .line 2961
    .local v0, "duration":F
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastRestrictedBrightness:F

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2962
    .local v1, "nit":I
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastUnrestrictedBrightness:F

    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessSpanByNit(F)I

    move-result v2

    .line 2963
    .local v2, "brightnessSpan":I
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalBrightnessRestrictedUsage:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->countThermalBrightnessRestrictedUsage(FLandroid/util/SparseArray;II)V

    .line 2964
    const-string/jumbo v3, "restricted_usage"

    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalBrightnessRestrictedUsage:Landroid/util/SparseArray;

    const-string/jumbo v5, "thermal_brightness_restricted_usage"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2966
    iput p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastUnrestrictedBrightness:F

    .line 2967
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastRestrictedBrightness:F

    .line 2968
    long-to-float v3, p3

    iput v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastBrightnessRestrictedTimeStamp:F

    .line 2969
    .end local v1  # "nit":I
    .end local v2  # "brightnessSpan":I
    goto :goto_68

    .end local v0  # "duration":F
    :cond_57
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_61

    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_68

    .line 2971
    :cond_61
    iput p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastUnrestrictedBrightness:F

    .line 2972
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastRestrictedBrightness:F

    .line 2973
    long-to-float v0, p3

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastBrightnessRestrictedTimeStamp:F

    .line 2976
    :cond_68
    :goto_68
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_9f

    .line 2977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "noteThermalBrightnessRestrictedUsage: restrictedBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unrestrictedBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThermalEventsMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalEventsMap:Ljava/util/Map;

    .line 2980
    invoke-interface {v1}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2977
    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    :cond_9f
    return-void
.end method

.method private noteThermalUsage(IJZ)V
    .registers 14
    .param p1, "status"  # I
    .param p2, "now"  # J
    .param p4, "isScreenOn"  # Z

    .line 2659
    iget-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastThermalStatusTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 2660
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    .line 2661
    iput-wide p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastThermalStatusTimeStamp:J

    .line 2663
    :cond_c
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    const-string v1, ", mThermalEventsMap: "

    const-string v2, ", duration: "

    const-string/jumbo v3, "noteThermalUsage: status: "

    const-string v4, "BrightnessDataProcessor"

    const-string/jumbo v5, "thermal_usage"

    const/high16 v6, 0x447a0000  # 1000.0f

    if-eq v0, p1, :cond_66

    if-eqz p4, :cond_66

    .line 2664
    iget-wide v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastThermalStatusTimeStamp:J

    sub-long v7, p2, v7

    long-to-float v0, v7

    div-float/2addr v0, v6

    .line 2665
    .local v0, "duration":F
    iget v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2666
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    .line 2667
    iput-wide p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastThermalStatusTimeStamp:J

    .line 2668
    sget-boolean v5, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v5, :cond_ad

    .line 2669
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalEventsMap:Ljava/util/Map;

    .line 2671
    invoke-interface {v2}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2669
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    .line 2673
    .end local v0  # "duration":F
    :cond_66
    if-nez p4, :cond_ad

    .line 2674
    iget-wide v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastThermalStatusTimeStamp:J

    sub-long v7, p2, v7

    long-to-float v0, v7

    div-float/2addr v0, v6

    .line 2675
    .restart local v0  # "duration":F
    iget v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2676
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    .line 2677
    iput-wide p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastThermalStatusTimeStamp:J

    .line 2678
    sget-boolean v5, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v5, :cond_ad

    .line 2679
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalEventsMap:Ljava/util/Map;

    .line 2681
    invoke-interface {v2}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2679
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    .end local v0  # "duration":F
    :cond_ad
    :goto_ad
    return-void
.end method

.method private putIfGreater(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p2, "key"  # Ljava/lang/Object;
    .param p3, "value"  # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2435
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2436
    .local v0, "oldValue":Ljava/lang/Object;
    if-eqz v0, :cond_13

    instance-of v1, p3, Ljava/lang/Comparable;

    if-eqz v1, :cond_16

    move-object v1, p3

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_16

    .line 2437
    :cond_13
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2439
    :cond_16
    return-void
.end method

.method private readyToReportEvent()V
    .registers 2

    .line 676
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    if-eqz v0, :cond_17

    .line 678
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mHaveValidWindowBrightness:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mUserDragging:Z

    if-eqz v0, :cond_d

    .line 679
    return-void

    .line 681
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->reportBrightnessEvent(Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;)V

    .line 684
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->reportIndividualModelEvent(Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;)V

    .line 686
    :cond_17
    return-void
.end method

.method private registerAccSensor(Z)V
    .registers 8
    .param p1, "enable"  # Z

    .line 3277
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAccSensorEnabled:Z

    const-string v1, "BrightnessDataProcessor"

    if-nez v0, :cond_22

    if-eqz p1, :cond_22

    .line 3278
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSensorListener:Lcom/android/server/display/statistics/BrightnessDataProcessor$SensorListener;

    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAccSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 3280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAccSensorEnabled:Z

    .line 3281
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_3e

    .line 3282
    const-string/jumbo v0, "registerAccSensor: register acc sensor."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 3284
    :cond_22
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAccSensorEnabled:Z

    if-eqz v0, :cond_3e

    if-nez p1, :cond_3e

    .line 3285
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSensorListener:Lcom/android/server/display/statistics/BrightnessDataProcessor$SensorListener;

    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAccSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 3286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAccSensorEnabled:Z

    .line 3287
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_3e

    .line 3288
    const-string/jumbo v0, "registerAccSensor: unregister acc sensor."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    :cond_3e
    :goto_3e
    return-void
.end method

.method private registerForegroundAppUpdater()V
    .registers 4

    .line 911
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTaskStackListener:Lcom/android/server/display/statistics/BrightnessDataProcessor$TaskStackListenerImpl;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 912
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForegroundWindowListener:Lmiui/process/IForegroundWindowListener;

    invoke-static {v0}, Lmiui/process/ProcessManager;->registerForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V

    .line 915
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateForegroundApps()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 921
    goto :goto_2d

    .line 916
    :catch_10
    move-exception v0

    .line 917
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v1, :cond_2d

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register foreground app updater: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessDataProcessor"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_2d
    :goto_2d
    return-void
.end method

.method private registerLightFovSensor(Z)V
    .registers 8
    .param p1, "enable"  # Z

    .line 3298
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLightFovSensor:Landroid/hardware/Sensor;

    const-string v1, "BrightnessDataProcessor"

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLightFovSensorEnabled:Z

    if-nez v0, :cond_26

    if-eqz p1, :cond_26

    .line 3299
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSensorListener:Lcom/android/server/display/statistics/BrightnessDataProcessor$SensorListener;

    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLightFovSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 3301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLightFovSensorEnabled:Z

    .line 3302
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_46

    .line 3303
    const-string/jumbo v0, "registerLightFovSensor: register light fov sensor."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 3305
    :cond_26
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLightFovSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLightFovSensorEnabled:Z

    if-eqz v0, :cond_46

    if-nez p1, :cond_46

    .line 3306
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSensorListener:Lcom/android/server/display/statistics/BrightnessDataProcessor$SensorListener;

    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLightFovSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 3307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLightFovSensorEnabled:Z

    .line 3308
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_46

    .line 3309
    const-string/jumbo v0, "registerLightFovSensor: unregister light fov sensor."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    :cond_46
    :goto_46
    return-void
.end method

.method private registerLightSensor(Z)V
    .registers 8
    .param p1, "enable"  # Z

    .line 3256
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLightSensorEnabled:Z

    const-string v1, "BrightnessDataProcessor"

    if-nez v0, :cond_22

    if-eqz p1, :cond_22

    .line 3257
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSensorListener:Lcom/android/server/display/statistics/BrightnessDataProcessor$SensorListener;

    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 3259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLightSensorEnabled:Z

    .line 3260
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_3e

    .line 3261
    const-string/jumbo v0, "registerLightSensor: register light sensor."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 3263
    :cond_22
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLightSensorEnabled:Z

    if-eqz v0, :cond_3e

    if-nez p1, :cond_3e

    .line 3264
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSensorListener:Lcom/android/server/display/statistics/BrightnessDataProcessor$SensorListener;

    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 3265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLightSensorEnabled:Z

    .line 3266
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_3e

    .line 3267
    const-string/jumbo v0, "registerLightSensor: unregister light sensor."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    :cond_3e
    :goto_3e
    return-void
.end method

.method private registerScreenStateReceiver()V
    .registers 4

    .line 953
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 954
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 955
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 956
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 957
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/display/statistics/BrightnessDataProcessor$ScreenStateReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor$ScreenStateReceiver;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 958
    return-void
.end method

.method private registerSensorByBrightnessType(IZ)V
    .registers 4
    .param p1, "type"  # I
    .param p2, "enable"  # Z

    .line 2756
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    .line 2757
    invoke-direct {p0, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->registerAccSensor(Z)V

    .line 2758
    invoke-direct {p0, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->registerLightFovSensor(Z)V

    goto :goto_f

    .line 2759
    :cond_a
    if-nez p1, :cond_f

    .line 2760
    invoke-direct {p0, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->registerLightSensor(Z)V

    .line 2762
    :cond_f
    :goto_f
    return-void
.end method

.method private registerSettingsObserver()V
    .registers 8

    .line 2014
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContentResolver:Landroid/content/ContentResolver;

    .line 2015
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSettingsObserver:Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;

    .line 2014
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2018
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x2

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    move v0, v1

    goto :goto_1d

    :cond_1c
    move v0, v4

    :goto_1d
    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessEnable:Z

    .line 2021
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessEnable:Z

    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAutoBrightnessEnable:Z

    .line 2022
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContentResolver:Landroid/content/ContentResolver;

    .line 2023
    const-string v2, "disable_security_by_mishow"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSettingsObserver:Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;

    .line 2022
    invoke-virtual {v0, v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2026
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_39

    move v4, v1

    :cond_39
    iput-boolean v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsMiShow:Z

    .line 2027
    return-void
.end method

.method private reportAdvancedBrightnessEvents()V
    .registers 5

    .line 2559
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsMiShow:Z

    if-nez v0, :cond_32

    .line 2560
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAdvancedBrightnessEventsMap:Ljava/util/Map;

    const-string v2, "advanced_brightness_aggregation"

    iget v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mExpId:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->reportAggregatedEventsToServer(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)V

    .line 2562
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 2563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportAdvancedBrightnessEvents: mAdvancedBrightnessEventsMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAdvancedBrightnessEventsMap:Ljava/util/Map;

    .line 2564
    invoke-interface {v1}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2563
    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    :cond_32
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAdvancedBrightnessEventsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2568
    return-void
.end method

.method private reportAggregatedBrightnessEvents()V
    .registers 5

    .line 2530
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateSwitchEvents()V

    .line 2531
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessUsageDuration()V

    .line 2532
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteHdrUsageBeforeReported()V

    .line 2533
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getDisplayIdEvent()V

    .line 2534
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsMiShow:Z

    if-nez v0, :cond_45

    .line 2535
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessEventsMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mExpId:I

    const-string v3, "brightness_quota_aggregation"

    invoke-static {v0, v1, v3, v2}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->reportAggregatedEventsToServer(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)V

    .line 2537
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessEventsMap:Ljava/util/Map;

    invoke-static {v0, v1, v3}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->reportAggregatedEventsToServerGlobal(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 2539
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_45

    .line 2540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportAggregatedBrightnessEvents: mBrightnessEventsMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessEventsMap:Ljava/util/Map;

    .line 2541
    invoke-interface {v1}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2540
    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    :cond_45
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->resetStatsCache()V

    .line 2545
    return-void
.end method

.method private reportAonFlareEvents()V
    .registers 5

    .line 3686
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsMiShow:Z

    if-nez v0, :cond_32

    .line 3687
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAonFlareEventsMap:Ljava/util/Map;

    const-string v2, "aon_flare_aggregation"

    iget v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mExpId:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->reportAggregatedEventsToServer(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)V

    .line 3689
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 3690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportAonFlareEvents: mAonFlareEventsMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAonFlareEventsMap:Ljava/util/Map;

    .line 3691
    invoke-interface {v1}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3690
    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    :cond_32
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAonFlareEventsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3695
    return-void
.end method

.method private reportBrightnessEvent(Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;)V
    .registers 10
    .param p1, "item"  # Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    .line 692
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "brightness changed, let\'s make a recode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", foregroundApps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForegroundAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 698
    .local v0, "now":J
    iget v2, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalBrightness:F

    invoke-direct {p0, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessSpanByNit(F)I

    move-result v2

    .line 699
    .local v2, "curSpanIndex":I
    iget v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenBrightness:F

    invoke-direct {p0, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessSpanByNit(F)I

    move-result v3

    .line 702
    .local v3, "preSpanIndex":I
    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v5, :cond_44

    move v4, v6

    goto :goto_45

    :cond_44
    const/4 v4, 0x0

    .line 704
    .local v4, "brightnessRestricted":Z
    :goto_45
    iget v5, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    if-ne v5, v6, :cond_51

    iget-object v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCloudControllerListener:Lcom/android/server/display/AutomaticBrightnessControllerImpl$CloudControllerListener;

    .line 705
    invoke-interface {v5}, Lcom/android/server/display/AutomaticBrightnessControllerImpl$CloudControllerListener;->isAutoBrightnessStatisticsEventEnable()Z

    move-result v5

    if-nez v5, :cond_5a

    :cond_51
    iget v5, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_10d

    iget-boolean v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mReportBrightnessEventsEnable:Z

    if-eqz v5, :cond_10d

    .line 708
    :cond_5a
    new-instance v5, Lcom/android/server/display/statistics/BrightnessEvent;

    invoke-direct {v5}, Lcom/android/server/display/statistics/BrightnessEvent;-><init>()V

    .line 709
    .local v5, "event":Lcom/android/server/display/statistics/BrightnessEvent;
    iget v6, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    invoke-virtual {v5, v6}, Lcom/android/server/display/statistics/BrightnessEvent;->setEventType(I)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    .line 710
    invoke-virtual {v6, v2}, Lcom/android/server/display/statistics/BrightnessEvent;->setCurBrightnessSpanIndex(I)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    .line 711
    invoke-virtual {v6, v3}, Lcom/android/server/display/statistics/BrightnessEvent;->setPreBrightnessSpanIndex(I)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    .line 712
    invoke-virtual {v6, v0, v1}, Lcom/android/server/display/statistics/BrightnessEvent;->setTimeStamp(J)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalBrightness:F

    .line 713
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setScreenBrightness(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenBrightness:F

    .line 714
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setPreviousBrightness(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->ambientLux:F

    .line 715
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setAmbientLux(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->userDataPoint:F

    .line 716
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setUserDataPoint(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->packageName:Ljava/lang/String;

    .line 717
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setForegroundPackage(Ljava/lang/String;)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget-boolean v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->lowPowerMode:Z

    .line 718
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setLowPowerModeFlag(Z)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget-boolean v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->defaultConfig:Z

    .line 719
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setIsDefaultConfig(Z)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    .line 720
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->convergeAffectFactors()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setAffectFactorFlag(I)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->ambientLux:F

    .line 721
    invoke-direct {p0, v7}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getAmbientLuxSpanIndex(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setLuxSpanIndex(I)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOrientation:I

    .line 722
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setOrientation(I)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mGrayScale:F

    .line 723
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setDisplayGrayScale(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCurrentUserId:I

    .line 724
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setUserId(I)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalNit:F

    .line 725
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setOriginalNit(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->actualNit:F

    .line 726
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setActualNit(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsHdrLayer:Z

    .line 727
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setHdrLayerEnable(Z)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    .line 728
    invoke-virtual {v6, v4}, Lcom/android/server/display/statistics/BrightnessEvent;->setBrightnessRestrictedEnable(Z)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->mainLux:F

    .line 729
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setMainAmbientLux(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->assistLux:F

    .line 730
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setAssistAmbientLux(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastMainAmbientLux:F

    .line 731
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setLastMainAmbientLux(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAssistAmbientLux:F

    .line 732
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setLastAssistAmbientLux(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->accValues:[F

    .line 733
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setAccValues([F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget-boolean v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->isUseLightFovOptimization:Z

    .line 734
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setIsUseLightFovOptimization(Z)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSwitchStatsHelper:Lcom/android/server/display/statistics/SwitchStatsHelper;

    .line 735
    invoke-virtual {v7}, Lcom/android/server/display/statistics/SwitchStatsHelper;->getAllSwitchStats()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setSwitchStats(Ljava/util/List;)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mResetMode:Ljava/lang/String;

    .line 736
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setResetModel(Ljava/lang/String;)Lcom/android/server/display/statistics/BrightnessEvent;

    .line 737
    invoke-direct {p0, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->reportEventToServer(Lcom/android/server/display/statistics/BrightnessEvent;)V

    .end local v5  # "event":Lcom/android/server/display/statistics/BrightnessEvent;
    goto/16 :goto_18e

    .line 738
    :cond_10d
    iget v5, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    if-eq v5, v6, :cond_18e

    iget-boolean v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mReportBrightnessEventsEnable:Z

    if-eqz v5, :cond_18e

    .line 740
    new-instance v5, Lcom/android/server/display/statistics/BrightnessEvent;

    invoke-direct {v5}, Lcom/android/server/display/statistics/BrightnessEvent;-><init>()V

    .line 741
    .restart local v5  # "event":Lcom/android/server/display/statistics/BrightnessEvent;
    iget v6, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    invoke-virtual {v5, v6}, Lcom/android/server/display/statistics/BrightnessEvent;->setEventType(I)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    .line 742
    invoke-virtual {v6, v2}, Lcom/android/server/display/statistics/BrightnessEvent;->setCurBrightnessSpanIndex(I)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    .line 743
    invoke-virtual {v6, v3}, Lcom/android/server/display/statistics/BrightnessEvent;->setPreBrightnessSpanIndex(I)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    .line 744
    invoke-virtual {v6, v0, v1}, Lcom/android/server/display/statistics/BrightnessEvent;->setTimeStamp(J)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenBrightness:F

    .line 745
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setPreviousBrightness(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->packageName:Ljava/lang/String;

    .line 746
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setForegroundPackage(Ljava/lang/String;)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget-boolean v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->lowPowerMode:Z

    .line 747
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setLowPowerModeFlag(Z)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    .line 748
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->convergeAffectFactors()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setAffectFactorFlag(I)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOrientation:I

    .line 749
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setOrientation(I)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCurrentUserId:I

    .line 750
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setUserId(I)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalNit:F

    .line 751
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setOriginalNit(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->actualNit:F

    .line 752
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setActualNit(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsHdrLayer:Z

    .line 753
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setHdrLayerEnable(Z)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    .line 754
    invoke-virtual {v6, v4}, Lcom/android/server/display/statistics/BrightnessEvent;->setBrightnessRestrictedEnable(Z)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSwitchStatsHelper:Lcom/android/server/display/statistics/SwitchStatsHelper;

    .line 755
    invoke-virtual {v7}, Lcom/android/server/display/statistics/SwitchStatsHelper;->getAllSwitchStats()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setSwitchStats(Ljava/util/List;)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mResetMode:Ljava/lang/String;

    .line 756
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setResetModel(Ljava/lang/String;)Lcom/android/server/display/statistics/BrightnessEvent;

    .line 757
    iget v6, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    if-nez v6, :cond_18a

    .line 758
    iget v6, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->ambientLux:F

    invoke-virtual {v5, v6}, Lcom/android/server/display/statistics/BrightnessEvent;->setAmbientLux(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->ambientLux:F

    .line 759
    invoke-direct {p0, v7}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getAmbientLuxSpanIndex(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setLuxSpanIndex(I)Lcom/android/server/display/statistics/BrightnessEvent;

    .line 761
    :cond_18a
    invoke-direct {p0, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->reportEventToServer(Lcom/android/server/display/statistics/BrightnessEvent;)V

    goto :goto_18f

    .line 738
    .end local v5  # "event":Lcom/android/server/display/statistics/BrightnessEvent;
    :cond_18e
    :goto_18e
    nop

    .line 763
    :goto_18f
    invoke-direct {p0, v2, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateBrightnessUsageIfNeeded(II)V

    .line 764
    return-void
.end method

.method private reportCustomBrightnessEvents()V
    .registers 5

    .line 3558
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsMiShow:Z

    if-nez v0, :cond_32

    .line 3559
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCbmEventsMap:Ljava/util/Map;

    const-string v2, "custom_brightness_aggregation"

    iget v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mExpId:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->reportAggregatedEventsToServer(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)V

    .line 3561
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 3562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportCustomBrightnessEvents: mCbmEventsMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCbmEventsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    :cond_32
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCbmEventsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3566
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mModelTrainIndicatorsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3567
    return-void
.end method

.method private reportDisabledAutoBrightnessEvent()V
    .registers 10

    .line 3318
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mScreenOn:Z

    if-eqz v0, :cond_d6

    .line 3319
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAutoBrightnessEnable:Z

    const-string v1, "BrightnessDataProcessor"

    const/16 v2, 0xd

    if-eqz v0, :cond_b5

    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessEnable:Z

    if-nez v0, :cond_b5

    .line 3320
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3321
    new-instance v0, Lcom/android/server/display/statistics/BrightnessEvent;

    invoke-direct {v0}, Lcom/android/server/display/statistics/BrightnessEvent;-><init>()V

    .line 3322
    .local v0, "event":Lcom/android/server/display/statistics/BrightnessEvent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3323
    .local v3, "now":J
    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_25

    const/4 v5, 0x1

    goto :goto_26

    :cond_25
    const/4 v5, 0x0

    .line 3325
    .local v5, "brightnessRestricted":Z
    :goto_26
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lcom/android/server/display/statistics/BrightnessEvent;->setEventType(I)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    .line 3326
    invoke-virtual {v6, v3, v4}, Lcom/android/server/display/statistics/BrightnessEvent;->setTimeStamp(J)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mActualNit:F

    .line 3327
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setActualNit(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOriginalNit:F

    .line 3328
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setOriginalNit(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForegroundAppPackageName:Ljava/lang/String;

    .line 3329
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setForegroundPackage(Ljava/lang/String;)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    .line 3330
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->convergeAffectFactors()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setAffectFactorFlag(I)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOrientation:I

    .line 3331
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setOrientation(I)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCurrentUserId:I

    .line 3332
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setUserId(I)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsHdrLayer:Z

    .line 3333
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setHdrLayerEnable(Z)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    .line 3334
    invoke-virtual {v6, v5}, Lcom/android/server/display/statistics/BrightnessEvent;->setBrightnessRestrictedEnable(Z)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAmbientLux:F

    .line 3335
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setAmbientLux(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAmbientLux:F

    .line 3336
    invoke-direct {p0, v7}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getAmbientLuxSpanIndex(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setLuxSpanIndex(I)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastMainAmbientLux:F

    .line 3337
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setLastMainAmbientLux(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAssistAmbientLux:F

    .line 3338
    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setLastAssistAmbientLux(F)Lcom/android/server/display/statistics/BrightnessEvent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSwitchStatsHelper:Lcom/android/server/display/statistics/SwitchStatsHelper;

    .line 3339
    invoke-virtual {v7}, Lcom/android/server/display/statistics/SwitchStatsHelper;->getAllSwitchStats()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/display/statistics/BrightnessEvent;->setSwitchStats(Ljava/util/List;)Lcom/android/server/display/statistics/BrightnessEvent;

    .line 3340
    iget-object v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3341
    .local v2, "msg":Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3342
    iget-object v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    const-wide/32 v7, 0x493e0

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3343
    sget-boolean v6, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v6, :cond_d5

    .line 3344
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reportDisabledAutoBrightnessEvent: event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/display/statistics/BrightnessEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    .line 3346
    .end local v0  # "event":Lcom/android/server/display/statistics/BrightnessEvent;
    .end local v2  # "msg":Landroid/os/Message;
    .end local v3  # "now":J
    .end local v5  # "brightnessRestricted":Z
    :cond_b5
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAutoBrightnessEnable:Z

    if-nez v0, :cond_d5

    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessEnable:Z

    if-eqz v0, :cond_d5

    .line 3347
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 3348
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3349
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_d6

    .line 3350
    const-string/jumbo v0, "reportDisabledAutoBrightnessEvent: remove message due to enabled auto brightness."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d6

    .line 3346
    :cond_d5
    :goto_d5
    nop

    .line 3356
    :cond_d6
    :goto_d6
    return-void
.end method

.method private reportEventToServer(Lcom/android/server/display/statistics/AdvancedEvent;)V
    .registers 5
    .param p1, "event"  # Lcom/android/server/display/statistics/AdvancedEvent;

    .line 877
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsMiShow:Z

    if-nez v0, :cond_32

    .line 878
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->reportToOneTrack(Landroid/content/Context;Lcom/android/server/display/statistics/AdvancedEvent;)V

    .line 879
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 881
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/server/display/statistics/AdvancedEvent;->convertToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportAdvancedEventToServer:, event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessDataProcessor"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    .end local v0  # "sb":Ljava/lang/StringBuilder;
    :cond_32
    return-void
.end method

.method private reportEventToServer(Lcom/android/server/display/statistics/BrightnessEvent;)V
    .registers 5
    .param p1, "event"  # Lcom/android/server/display/statistics/BrightnessEvent;

    .line 866
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsMiShow:Z

    if-nez v0, :cond_32

    .line 867
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->reportToOneTrack(Landroid/content/Context;Lcom/android/server/display/statistics/BrightnessEvent;)V

    .line 868
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 870
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportBrightnessEventToServer: , event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessDataProcessor"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    .end local v0  # "sb":Ljava/lang/StringBuilder;
    :cond_32
    return-void
.end method

.method private reportIndividualModelEvent(Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;)V
    .registers 4
    .param p1, "item"  # Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    .line 770
    iget v0, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    iget v0, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    :cond_a
    iget v0, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->ambientLux:F

    .line 772
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mModelEventCallback:Lcom/android/server/display/statistics/BrightnessDataProcessor$ModelEventCallback;

    if-nez v0, :cond_17

    goto :goto_27

    .line 779
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->createModelEvent(Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;)Lcom/xiaomi/aiautobrt/IndividualModelEvent;

    move-result-object v0

    .line 781
    .local v0, "event":Lcom/xiaomi/aiautobrt/IndividualModelEvent;
    invoke-virtual {v0}, Lcom/xiaomi/aiautobrt/IndividualModelEvent;->isValidRawEvent()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 782
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mModelEventCallback:Lcom/android/server/display/statistics/BrightnessDataProcessor$ModelEventCallback;

    invoke-interface {v1, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor$ModelEventCallback;->onBrightnessModelEvent(Lcom/xiaomi/aiautobrt/IndividualModelEvent;)V

    .line 784
    :cond_26
    return-void

    .line 776
    .end local v0  # "event":Lcom/xiaomi/aiautobrt/IndividualModelEvent;
    :cond_27
    :goto_27
    return-void
.end method

.method private reportScheduleEvent()V
    .registers 1

    .line 514
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->reportAggregatedBrightnessEvents()V

    .line 515
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->reportAdvancedBrightnessEvents()V

    .line 516
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->reportThermalEvents()V

    .line 517
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->reportCustomBrightnessEvents()V

    .line 518
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->reportAonFlareEvents()V

    .line 519
    return-void
.end method

.method private reportThermalEvents()V
    .registers 5

    .line 3214
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateThermalStatsBeforeReported()V

    .line 3215
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsMiShow:Z

    if-nez v0, :cond_36

    .line 3216
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalEventsMap:Ljava/util/Map;

    const-string/jumbo v2, "thermal_aggregation"

    iget v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mExpId:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->reportAggregatedEventsToServer(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)V

    .line 3218
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_36

    .line 3219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportThermalEvents: mThermalEventsMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalEventsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    :cond_36
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->resetThermalEventsCache()V

    .line 3223
    return-void
.end method

.method private resetAverageBrightnessInfo()V
    .registers 2

    .line 2033
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessDuration:F

    .line 2034
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessIntegral:F

    .line 2035
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mManualBrightnessDuration:F

    .line 2036
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mManualBrightnessIntegral:F

    .line 2037
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mResetDetailsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2038
    return-void
.end method

.method private resetBrightnessAnimInfo()V
    .registers 4

    .line 2204
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCurrentBrightnessAnimValue:F

    .line 2205
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTargetBrightnessAnimValue:F

    .line 2206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessAnimStart:Z

    .line 2207
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessAnimStartTime:J

    .line 2208
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessChangedState:I

    .line 2209
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemporaryBrightnessTimeStamp:J

    .line 2210
    return-void
.end method

.method private resetPendingParams()V
    .registers 3

    .line 889
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    if-eqz v0, :cond_27

    .line 890
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v0, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    .line 891
    .local v0, "type":I
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v1, v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalBrightness:F

    iput v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenBrightness:F

    .line 892
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v1, v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->ambientLux:F

    iput v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAmbientLux:F

    .line 893
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v1, v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->mainLux:F

    iput v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastMainAmbientLux:F

    .line 894
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v1, v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->assistLux:F

    iput v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAssistAmbientLux:F

    .line 896
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->registerSensorByBrightnessType(IZ)V

    .line 897
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    .line 900
    .end local v0  # "type":I
    :cond_27
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->resetWindowOverrideParams()V

    .line 901
    return-void
.end method

.method private resetStatsCache()V
    .registers 2

    .line 2551
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->resetAverageBrightnessInfo()V

    .line 2552
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessEventsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2553
    return-void
.end method

.method private resetThermalEventsCache()V
    .registers 2

    .line 3229
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalEventsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3230
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalUnrestrictedUsage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3231
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDetailThermalRestrictedUsage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3232
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalBrightnessRestrictedUsage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3233
    return-void
.end method

.method private resetWindowOverrideParams()V
    .registers 3

    .line 904
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mHaveValidWindowBrightness:Z

    .line 905
    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastBrightnessOverrideFromWindow:F

    .line 906
    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mWindowOverrideBrightnessChanging:Z

    .line 907
    return-void
.end method

.method private scheduleUpdateBrightnessStatisticsData(ZF)V
    .registers 6
    .param p1, "screenOn"  # Z
    .param p2, "brightness"  # F

    .line 1845
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1846
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1847
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1848
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1849
    return-void
.end method

.method private setPointerEventListener(Z)V
    .registers 5
    .param p1, "enable"  # Z

    .line 634
    const-string v0, "BrightnessDataProcessor"

    if-eqz p1, :cond_21

    .line 635
    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPointerEventListenerEnabled:Z

    if-nez v1, :cond_3d

    .line 636
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/server/input/gesture/MiuiGestureMonitor;->getInstance(Landroid/content/Context;)Lcom/miui/server/input/gesture/MiuiGestureMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPointerEventListener:Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;

    .line 637
    invoke-virtual {v1, v2}, Lcom/miui/server/input/gesture/MiuiGestureMonitor;->registerPointerEventListener(Lcom/miui/server/input/gesture/MiuiGestureListener;)V

    .line 638
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPointerEventListenerEnabled:Z

    .line 639
    sget-boolean v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v1, :cond_3d

    .line 640
    const-string/jumbo v1, "register pointer event listener."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 644
    :cond_21
    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPointerEventListenerEnabled:Z

    if-eqz v1, :cond_3d

    .line 645
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/server/input/gesture/MiuiGestureMonitor;->getInstance(Landroid/content/Context;)Lcom/miui/server/input/gesture/MiuiGestureMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPointerEventListener:Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;

    .line 646
    invoke-virtual {v1, v2}, Lcom/miui/server/input/gesture/MiuiGestureMonitor;->unregisterPointerEventListener(Lcom/miui/server/input/gesture/MiuiGestureListener;)V

    .line 647
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPointerEventListenerEnabled:Z

    .line 648
    sget-boolean v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v1, :cond_3d

    .line 649
    const-string/jumbo v1, "unregister pointer event listener."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_3d
    :goto_3d
    return-void
.end method

.method private setReportScheduleEventAlarm(Z)V
    .registers 13
    .param p1, "init"  # Z

    .line 496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 497
    .local v0, "now":J
    sget-boolean v2, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v2, :cond_c

    const-wide/32 v2, 0x1d4c0

    goto :goto_15

    .line 498
    :cond_c
    if-eqz p1, :cond_12

    const-wide/32 v2, 0x2932e00

    goto :goto_15

    :cond_12
    const-wide/32 v2, 0x5265c00

    :goto_15
    nop

    .line 499
    .local v2, "duration":J
    add-long v6, v0, v2

    .line 500
    .local v6, "nextTime":J
    sget-boolean v4, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v4, :cond_39

    .line 501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setReportSwitchStatAlarm: next time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 502
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 501
    const-string v5, "BrightnessDataProcessor"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_39
    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOnAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    const-string/jumbo v8, "report_switch_stats"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 506
    return-void
.end method

.method private setRotationListener(Z)V
    .registers 6
    .param p1, "enable"  # Z

    .line 656
    const-string v0, "BrightnessDataProcessor"

    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    .line 657
    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mRotationListenerEnabled:Z

    if-nez v2, :cond_35

    .line 658
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mRotationListenerEnabled:Z

    .line 659
    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mRotationWatcher:Lcom/android/server/display/statistics/BrightnessDataProcessor$RotationWatcher;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowManagerService;->watchRotation(Landroid/view/IRotationWatcher;I)I

    .line 660
    sget-boolean v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v1, :cond_35

    .line 661
    const-string/jumbo v1, "register rotation listener."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 665
    :cond_1e
    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mRotationListenerEnabled:Z

    if-eqz v2, :cond_35

    .line 666
    iput-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mRotationListenerEnabled:Z

    .line 667
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mRotationWatcher:Lcom/android/server/display/statistics/BrightnessDataProcessor$RotationWatcher;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 668
    sget-boolean v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v1, :cond_35

    .line 669
    const-string/jumbo v1, "unregister rotation listener."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_35
    :goto_35
    return-void
.end method

.method private start()V
    .registers 4

    .line 476
    new-instance v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;

    invoke-direct {v0, p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPointerEventListener:Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;

    .line 477
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/statistics/SwitchStatsHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/statistics/SwitchStatsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSwitchStatsHelper:Lcom/android/server/display/statistics/SwitchStatsHelper;

    .line 478
    new-instance v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$TaskStackListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor$TaskStackListenerImpl;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTaskStackListener:Lcom/android/server/display/statistics/BrightnessDataProcessor$TaskStackListenerImpl;

    .line 479
    new-instance v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$RotationWatcher;

    invoke-direct {v0, p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor$RotationWatcher;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mRotationWatcher:Lcom/android/server/display/statistics/BrightnessDataProcessor$RotationWatcher;

    .line 480
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mStartTimeStamp:J

    .line 481
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->setRotationListener(Z)V

    .line 482
    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->setPointerEventListener(Z)V

    .line 483
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->registerForegroundAppUpdater()V

    .line 484
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->registerScreenStateReceiver()V

    .line 485
    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->setReportScheduleEventAlarm(Z)V

    .line 486
    new-instance v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSettingsObserver:Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;

    .line 487
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mContentResolver:Landroid/content/ContentResolver;

    .line 488
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->registerSettingsObserver()V

    .line 489
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLightSensor:Landroid/hardware/Sensor;

    .line 490
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAccSensor:Landroid/hardware/Sensor;

    .line 491
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2a8f

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLightFovSensor:Landroid/hardware/Sensor;

    .line 492
    new-instance v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$SensorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor$SensorListener;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;Lcom/android/server/display/statistics/BrightnessDataProcessor-IA;)V

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mSensorListener:Lcom/android/server/display/statistics/BrightnessDataProcessor$SensorListener;

    .line 493
    return-void
.end method

.method private startHdyUsageStats(Z)V
    .registers 4
    .param p1, "isHdrLayer"  # Z

    .line 3098
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3101
    return-void
.end method

.method private statsAverageValues(Lcom/android/server/display/statistics/AggregationEvent;Ljava/lang/Object;Ljava/lang/Float;)V
    .registers 10
    .param p1, "event"  # Lcom/android/server/display/statistics/AggregationEvent;
    .param p2, "key"  # Ljava/lang/Object;
    .param p3, "value"  # Ljava/lang/Float;

    .line 2500
    invoke-virtual {p1}, Lcom/android/server/display/statistics/AggregationEvent;->getQuotaEvents()Ljava/util/Map;

    move-result-object v0

    .line 2501
    .local v0, "quotaEvents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/android/server/display/statistics/AggregationEvent;->getCacheDataMap()Ljava/util/Map;

    move-result-object v1

    .line 2502
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/util/List<Ljava/lang/Float;>;>;"
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2503
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v3, 0x0

    .line 2504
    .local v3, "sum":F
    if-nez v2, :cond_17

    .line 2505
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 2507
    :cond_17
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2508
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2509
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 2510
    .local v5, "v":F
    add-float/2addr v3, v5

    .line 2511
    .end local v5  # "v":F
    goto :goto_21

    .line 2512
    :cond_33
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v0, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2513
    return-void
.end method

.method private statsOrder(Ljava/util/Map;I)V
    .registers 8
    .param p2, "limitNumber"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 2447
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda13;-><init>()V

    .line 2448
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    int-to-long v1, p2

    .line 2450
    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda14;-><init>()V

    new-instance v2, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda15;

    invoke-direct {v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda15;-><init>()V

    new-instance v3, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda16;

    invoke-direct {v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda16;-><init>()V

    new-instance v4, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda17;

    invoke-direct {v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda17;-><init>()V

    .line 2451
    invoke-static {v1, v2, v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2455
    .local v0, "sortedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 2456
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2457
    return-void
.end method

.method private statsSummary(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p2, "key"  # Ljava/lang/Object;
    .param p3, "value"  # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2466
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2467
    .local v0, "totalValues":Ljava/lang/Object;
    if-eqz v0, :cond_a

    .line 2468
    invoke-direct {p0, v0, p3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getSumValues(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 2470
    :cond_a
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2471
    return-void
.end method

.method private updateBrightnessAnimInfo(FFZ)V
    .registers 7
    .param p1, "currentBrightnessAnim"  # F
    .param p2, "targetBrightnessAnim"  # F
    .param p3, "begin"  # Z

    .line 2104
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessEnable:Z

    if-eqz v0, :cond_6d

    .line 2105
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCurrentBrightnessAnimValue:F

    .line 2106
    iput p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTargetBrightnessAnimValue:F

    .line 2107
    iput-boolean p3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessAnimStart:Z

    .line 2108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessAnimStartTime:J

    .line 2109
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessChangedState(FF)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessChangedState:I

    .line 2111
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_6d

    .line 2112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBrightnessAnimInfo: mCurrentAnimateValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCurrentBrightnessAnimValue:F

    .line 2113
    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTargetAnimateValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTargetBrightnessAnimValue:F

    .line 2115
    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAnimationStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessAnimStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAnimationStartTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessAnimStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBrightnessChangedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessChangedState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2112
    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    :cond_6d
    return-void
.end method

.method private updateBrightnessStatisticsData(ZF)V
    .registers 10
    .param p1, "screenOn"  # Z
    .param p2, "brightness"  # F

    .line 1857
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1858
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mScreenOn:Z

    const/4 v3, 0x0

    if-eq v2, p1, :cond_30

    .line 1859
    iput-boolean p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mScreenOn:Z

    .line 1860
    const/4 v2, 0x1

    const/high16 v4, 0x7fc00000  # Float.NaN

    if-eqz p1, :cond_23

    .line 1861
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenOnTimeStamp:J

    .line 1863
    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenBrightness:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1d

    .line 1864
    iput p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenBrightness:F

    .line 1866
    :cond_1d
    iget-boolean v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsHdrLayer:Z

    invoke-direct {p0, p2, v2, v3, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getOver1060nitBrightnessUsage(FZZZ)V

    goto :goto_2d

    .line 1868
    :cond_23
    iput v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastStoreBrightness:F

    .line 1869
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->computeLastAverageBrightness(J)V

    .line 1870
    iget-boolean v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsHdrLayer:Z

    invoke-direct {p0, v4, v2, v3, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getOver1060nitBrightnessUsage(FZZZ)V

    .line 1872
    :goto_2d
    invoke-virtual {p0, v4, v3, v2, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getTopFiveAppsIn20000Lux(FZZZ)V

    .line 1874
    :cond_30
    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsHdrLayer:Z

    invoke-direct {p0, p2, v3, v3, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getOver1060nitBrightnessUsage(FZZZ)V

    .line 1875
    if-eqz p1, :cond_3a

    .line 1876
    invoke-direct {p0, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->computeAverageBrightnessIfNeeded(F)V

    .line 1878
    :cond_3a
    return-void
.end method

.method private updateBrightnessUsage(IZLjava/lang/String;)V
    .registers 10
    .param p1, "spanIndex"  # I
    .param p2, "dueToScreenOff"  # Z
    .param p3, "reason"  # Ljava/lang/String;

    .line 1010
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->isValidStartTimeStamp()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1011
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1012
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mStartTimeStamp:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000  # 1000.0f

    div-float/2addr v2, v3

    .line 1013
    .local v2, "duration":F
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "brightness_usage"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1015
    int-to-float v3, p1

    invoke-direct {p0, v3, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteHbmUsage(FF)V

    .line 1016
    if-eqz p2, :cond_2a

    .line 1017
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mStartTimeStamp:J

    goto :goto_2c

    .line 1019
    :cond_2a
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mStartTimeStamp:J

    .line 1021
    :goto_2c
    sget-boolean v3, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v3, :cond_64

    .line 1022
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBrightnessUsage: reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", span: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", append duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BrightnessDataProcessor"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    .end local v0  # "now":J
    .end local v2  # "duration":F
    :cond_64
    return-void
.end method

.method private updateBrightnessUsageIfNeeded(II)V
    .registers 7
    .param p1, "curSpanIndex"  # I
    .param p2, "preSpanIndex"  # I

    .line 990
    if-eq p1, p2, :cond_e

    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->isValidStartTimeStamp()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 991
    const/4 v0, 0x0

    const-string v1, "brightness span change"

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateBrightnessUsage(IZLjava/lang/String;)V

    .line 994
    :cond_e
    if-eq p1, p2, :cond_1e

    iget-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAodBrightnessSpanStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    .line 995
    const-string/jumbo v0, "span_change"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateFullAodBrightnessUsage(ILjava/lang/String;)V

    .line 997
    :cond_1e
    return-void
.end method

.method private updateForegroundApps()V
    .registers 4

    .line 927
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    .line 928
    .local v0, "info":Landroid/app/ActivityTaskManager$RootTaskInfo;
    if-eqz v0, :cond_3f

    iget-object v1, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_d

    goto :goto_3f

    .line 932
    :cond_d
    invoke-virtual {v0}, Landroid/app/ActivityTaskManager$RootTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3e

    .line 933
    invoke-virtual {v0}, Landroid/app/ActivityTaskManager$RootTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3e

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 934
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->isInSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_3e

    .line 938
    :cond_24
    iget-object v1, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 941
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForegroundAppPackageName:Ljava/lang/String;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForegroundAppPackageName:Ljava/lang/String;

    .line 942
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 943
    return-void

    .line 945
    :cond_37
    iget v2, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->userId:I

    iput v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCurrentUserId:I

    .line 946
    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForegroundAppPackageName:Ljava/lang/String;
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3d} :catch_40

    .line 949
    .end local v0  # "info":Landroid/app/ActivityTaskManager$RootTaskInfo;
    .end local v1  # "packageName":Ljava/lang/String;
    goto :goto_41

    .line 935
    .restart local v0  # "info":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :cond_3e
    :goto_3e
    return-void

    .line 929
    :cond_3f
    :goto_3f
    return-void

    .line 947
    .end local v0  # "info":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :catch_40
    move-exception v0

    .line 950
    :goto_41
    return-void
.end method

.method private updateInterruptBrightnessAnimDuration(IF)V
    .registers 16
    .param p1, "type"  # I
    .param p2, "brightness"  # F

    .line 2140
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessChangedState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCurrentBrightnessAnimValue:F

    .line 2142
    invoke-direct {p0, v0, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessChangedState(FF)I

    move-result v0

    if-eqz v0, :cond_1a

    :cond_e
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessChangedState:I

    if-ne v0, v2, :cond_1c

    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCurrentBrightnessAnimValue:F

    .line 2145
    invoke-direct {p0, v0, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessChangedState(FF)I

    move-result v0

    if-ne v0, v2, :cond_1c

    :cond_1a
    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    .line 2149
    .local v0, "isSameAdjustment":Z
    :goto_1d
    const/4 v3, 0x2

    if-ne p1, v3, :cond_f6

    .line 2150
    iget-boolean v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessAnimStart:Z

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_f2

    if-eqz v0, :cond_f2

    iget-wide v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemporaryBrightnessTimeStamp:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_f2

    iget-wide v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessAnimStartTime:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_f2

    iget-wide v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemporaryBrightnessTimeStamp:J

    iget-wide v8, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessAnimStartTime:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_f2

    .line 2153
    iget-wide v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemporaryBrightnessTimeStamp:J

    iget-wide v8, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessAnimStartTime:J

    sub-long/2addr v6, v8

    .line 2154
    .local v6, "duration":J
    nop

    .line 2155
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2154
    const-string/jumbo v8, "interrupt_animation_times"

    const-string/jumbo v9, "interrupt_times"

    invoke-direct {p0, v8, v9, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateAdvancedBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2156
    iget v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_56

    move v3, v2

    goto :goto_57

    :cond_56
    move v3, v1

    .line 2158
    .local v3, "brightnessRestricted":Z
    :goto_57
    new-instance v8, Lcom/android/server/display/statistics/AdvancedEvent;

    invoke-direct {v8}, Lcom/android/server/display/statistics/AdvancedEvent;-><init>()V

    .line 2159
    .local v8, "event":Lcom/android/server/display/statistics/AdvancedEvent;
    invoke-virtual {v8, v2}, Lcom/android/server/display/statistics/AdvancedEvent;->setEventType(I)Lcom/android/server/display/statistics/AdvancedEvent;

    move-result-object v2

    long-to-float v9, v6

    const v10, 0x3a83126f  # 0.001f

    mul-float/2addr v9, v10

    .line 2160
    invoke-virtual {v2, v9}, Lcom/android/server/display/statistics/AdvancedEvent;->setAutoBrightnessAnimationDuration(F)Lcom/android/server/display/statistics/AdvancedEvent;

    move-result-object v2

    iget v9, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCurrentBrightnessAnimValue:F

    .line 2161
    invoke-static {v9}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/android/server/display/statistics/AdvancedEvent;->setCurrentAnimateValue(I)Lcom/android/server/display/statistics/AdvancedEvent;

    move-result-object v2

    iget v9, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTargetBrightnessAnimValue:F

    .line 2162
    invoke-static {v9}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/android/server/display/statistics/AdvancedEvent;->setTargetAnimateValue(I)Lcom/android/server/display/statistics/AdvancedEvent;

    move-result-object v2

    .line 2163
    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/android/server/display/statistics/AdvancedEvent;->setUserBrightness(I)Lcom/android/server/display/statistics/AdvancedEvent;

    move-result-object v2

    iget v9, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessChangedState:I

    .line 2164
    invoke-virtual {v2, v9}, Lcom/android/server/display/statistics/AdvancedEvent;->setBrightnessChangedState(I)Lcom/android/server/display/statistics/AdvancedEvent;

    move-result-object v2

    .line 2165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/android/server/display/statistics/AdvancedEvent;->setTimeStamp(J)Lcom/android/server/display/statistics/AdvancedEvent;

    move-result-object v2

    .line 2166
    invoke-virtual {v2, v3}, Lcom/android/server/display/statistics/AdvancedEvent;->setBrightnessRestrictedEnable(Z)Lcom/android/server/display/statistics/AdvancedEvent;

    .line 2167
    invoke-direct {p0, v8}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->reportEventToServer(Lcom/android/server/display/statistics/AdvancedEvent;)V

    .line 2168
    sget-boolean v2, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v2, :cond_f2

    .line 2169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateInterruptBrightnessAnimDuration: duration:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    long-to-float v9, v6

    mul-float/2addr v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", currentAnimateValue:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v9, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCurrentBrightnessAnimValue:F

    .line 2170
    invoke-static {v9}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", targetAnimateValue:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v9, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTargetBrightnessAnimValue:F

    .line 2171
    invoke-static {v9}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", userBrightness:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2172
    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", mBrightnessChangedState:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v9, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessChangedState:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2169
    const-string v9, "BrightnessDataProcessor"

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    .end local v3  # "brightnessRestricted":Z
    .end local v6  # "duration":J
    .end local v8  # "event":Lcom/android/server/display/statistics/AdvancedEvent;
    :cond_f2
    iput-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessAnimStart:Z

    .line 2177
    iput-wide v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemporaryBrightnessTimeStamp:J

    .line 2179
    :cond_f6
    return-void
.end method

.method private updateInterruptBrightnessAnimDurationIfNeeded(IF)V
    .registers 5
    .param p1, "type"  # I
    .param p2, "brightness"  # F

    .line 2124
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2125
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2126
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2127
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2128
    return-void
.end method

.method private updateLuxSpanStartTimeStamp(Z)V
    .registers 6
    .param p1, "screenOn"  # Z

    .line 1216
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateLuxSpanStartTimeStamp: screenOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_1d
    if-eqz p1, :cond_30

    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessEnable:Z

    if-eqz v0, :cond_30

    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->isValidLuxSpanStartTimeStamp()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLuxSpanStartTimeStamp:J

    goto :goto_40

    .line 1221
    :cond_30
    if-nez p1, :cond_40

    .line 1222
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAmbientLux:F

    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getAmbientLuxSpanIndex(F)I

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "screen_off"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateLuxSpanUsage(IZZLjava/lang/String;)V

    .line 1225
    :cond_40
    :goto_40
    return-void
.end method

.method private updateLuxSpanUsage(IZZLjava/lang/String;)V
    .registers 14
    .param p1, "spanIndex"  # I
    .param p2, "dueToScreenOff"  # Z
    .param p3, "dueToSwitchChange"  # Z
    .param p4, "reason"  # Ljava/lang/String;

    .line 1040
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1041
    .local v0, "now":J
    const/4 v2, 0x0

    .line 1042
    .local v2, "duration":F
    const-wide/16 v3, 0x0

    const-string/jumbo v5, "lux_span_usage"

    const/high16 v6, 0x447a0000  # 1000.0f

    if-eqz p2, :cond_29

    .line 1043
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->isValidLuxSpanStartTimeStamp()Z

    move-result v7

    if-eqz v7, :cond_26

    .line 1044
    iget-wide v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLuxSpanStartTimeStamp:J

    sub-long v7, v0, v7

    long-to-float v7, v7

    div-float v2, v7, v6

    .line 1045
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1047
    :cond_26
    iput-wide v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLuxSpanStartTimeStamp:J

    goto :goto_73

    .line 1048
    :cond_29
    if-eqz p3, :cond_59

    .line 1049
    iget-boolean v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAutoBrightnessEnable:Z

    if-nez v7, :cond_36

    iget-boolean v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessEnable:Z

    if-eqz v7, :cond_36

    .line 1050
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLuxSpanStartTimeStamp:J

    goto :goto_73

    .line 1051
    :cond_36
    iget-boolean v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAutoBrightnessEnable:Z

    if-eqz v7, :cond_73

    iget-boolean v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessEnable:Z

    if-nez v7, :cond_73

    .line 1052
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->isValidLuxSpanStartTimeStamp()Z

    move-result v7

    if-eqz v7, :cond_56

    .line 1053
    iget-wide v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLuxSpanStartTimeStamp:J

    sub-long v7, v0, v7

    long-to-float v7, v7

    div-float/2addr v7, v6

    .line 1054
    .end local v2  # "duration":F
    .local v7, "duration":F
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v2, v7

    .line 1056
    .end local v7  # "duration":F
    .restart local v2  # "duration":F
    :cond_56
    iput-wide v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLuxSpanStartTimeStamp:J

    goto :goto_73

    .line 1059
    :cond_59
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->isValidLuxSpanStartTimeStamp()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 1060
    iget-wide v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLuxSpanStartTimeStamp:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    div-float v2, v3, v6

    .line 1061
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1063
    :cond_71
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLuxSpanStartTimeStamp:J

    .line 1065
    :cond_73
    :goto_73
    sget-boolean v3, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v3, :cond_b0

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_b0

    .line 1066
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateLuxSpanUsage: reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", span: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", append duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BrightnessDataProcessor"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_b0
    return-void
.end method

.method private updateOver1060nitTimeStamp(Z)V
    .registers 5
    .param p1, "isHdrLayer"  # Z

    .line 1168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1169
    .local v0, "now":Ljava/lang/Long;
    if-nez p1, :cond_14

    .line 1170
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitSdrEnableTimeStamp:J

    .line 1171
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdr:Z

    goto :goto_1d

    .line 1173
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdrEnableTimeStamp:J

    .line 1174
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOver1060NitHdr:Z

    .line 1176
    :goto_1d
    return-void
.end method

.method private updatePointerEventMotionState(ZII)V
    .registers 6
    .param p1, "dragging"  # Z
    .param p2, "distanceX"  # I
    .param p3, "distanceY"  # I

    .line 961
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mUserDragging:Z

    if-eq v0, p1, :cond_1f

    .line 962
    iput-boolean p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mUserDragging:Z

    .line 963
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mUserDragging:Z

    if-nez v0, :cond_1f

    invoke-direct {p0, p2, p3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->checkIsValidMotionForWindowBrightness(II)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 964
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLatestDraggingChangedTime:J

    .line 965
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mHaveValidWindowBrightness:Z

    if-eqz v0, :cond_1f

    .line 966
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->debounceBrightnessEvent(J)V

    .line 970
    :cond_1f
    return-void
.end method

.method private updateResetMode()V
    .registers 6

    .line 1607
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v0, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->userDataPoint:F

    .line 1608
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a2

    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_a2

    .line 1610
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastUserDataPoint:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v0, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->userDataPoint:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_34

    .line 1612
    const-string v0, "default_reset_mode"

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mResetMode:Ljava/lang/String;

    .line 1613
    const-string/jumbo v0, "reset_default_up"

    const-string/jumbo v1, "reset_default_down"

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateResetModeDetails(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_94

    .line 1614
    :cond_34
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastBrightnessSpline:Landroid/util/Spline;

    if-eqz v0, :cond_94

    .line 1615
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastBrightnessSpline:Landroid/util/Spline;

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastUserDataPoint:F

    invoke-virtual {v0, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 1616
    .local v0, "nits":F
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getMaxResetShortTermModelSpline()Landroid/util/Spline;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastUserDataPoint:F

    .line 1617
    invoke-virtual {v1, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 1618
    .local v1, "maxThreshold":F
    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->getMinResetShortTermModelSpline()Landroid/util/Spline;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastUserDataPoint:F

    .line 1619
    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    .line 1621
    .local v2, "minThreshold":F
    cmpl-float v3, v0, v1

    if-gtz v3, :cond_86

    cmpg-float v3, v0, v2

    if-gez v3, :cond_61

    goto :goto_86

    .line 1624
    :cond_61
    cmpl-float v3, v0, v1

    if-eqz v3, :cond_78

    cmpl-float v3, v0, v2

    if-nez v3, :cond_6a

    goto :goto_78

    .line 1628
    :cond_6a
    const-string v3, "below_threshold_reset_mode"

    iput-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mResetMode:Ljava/lang/String;

    .line 1629
    const-string/jumbo v3, "reset_below_up"

    const-string/jumbo v4, "reset_below_down"

    invoke-direct {p0, v3, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateResetModeDetails(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_94

    .line 1625
    :cond_78
    :goto_78
    const-string v3, "equal_threshold_reset_mode"

    iput-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mResetMode:Ljava/lang/String;

    .line 1626
    const-string/jumbo v3, "reset_equal_up"

    const-string/jumbo v4, "reset_equal_down"

    invoke-direct {p0, v3, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateResetModeDetails(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_94

    .line 1622
    :cond_86
    :goto_86
    const-string/jumbo v3, "over_threshold_reset_mode"

    iput-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mResetMode:Ljava/lang/String;

    .line 1623
    const-string/jumbo v3, "reset_over_up"

    const-string/jumbo v4, "reset_over_down"

    invoke-direct {p0, v3, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateResetModeDetails(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    .end local v0  # "nits":F
    .end local v1  # "maxThreshold":F
    .end local v2  # "minThreshold":F
    :cond_94
    :goto_94
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v0, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->userDataPoint:F

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastUserDataPoint:F

    .line 1634
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessSpline()Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastBrightnessSpline:Landroid/util/Spline;

    .line 1636
    :cond_a2
    return-void
.end method

.method private updateResetModeDetails(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "keyUp"  # Ljava/lang/String;
    .param p2, "keyDown"  # Ljava/lang/String;

    .line 1587
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v0, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_61

    .line 1588
    const/high16 v0, 0x7fc00000  # Float.NaN

    .line 1589
    .local v0, "curNits":F
    const/high16 v1, 0x7fc00000  # Float.NaN

    .line 1590
    .local v1, "preNits":F
    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessSpline()Landroid/util/Spline;

    move-result-object v2

    .line 1591
    .local v2, "curSpline":Landroid/util/Spline;
    if-eqz v2, :cond_19

    .line 1592
    iget v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastUserDataPoint:F

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 1594
    :cond_19
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastBrightnessSpline:Landroid/util/Spline;

    if-eqz v3, :cond_26

    .line 1595
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastBrightnessSpline:Landroid/util/Spline;

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastUserDataPoint:F

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    goto :goto_32

    .line 1596
    :cond_26
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOriSpline:Landroid/util/Spline;

    if-eqz v3, :cond_32

    .line 1597
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOriSpline:Landroid/util/Spline;

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastUserDataPoint:F

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 1599
    :cond_32
    :goto_32
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_61

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_61

    .line 1600
    cmpl-float v3, v0, v1

    if-lez v3, :cond_44

    move-object v3, p1

    goto :goto_45

    :cond_44
    move-object v3, p2

    .line 1601
    .local v3, "key":Ljava/lang/String;
    :goto_45
    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mResetDetailsMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mResetDetailsMap:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    .end local v0  # "curNits":F
    .end local v1  # "preNits":F
    .end local v2  # "curSpline":Landroid/util/Spline;
    .end local v3  # "key":Ljava/lang/String;
    :cond_61
    return-void
.end method

.method private updateScreenNits(FF)V
    .registers 5
    .param p1, "originalNit"  # F
    .param p2, "actualNit"  # F

    .line 3368
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3376
    return-void
.end method

.method private updateScreenStateChanged(Z)V
    .registers 2
    .param p1, "screenOn"  # Z

    .line 1197
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateStartTimeStamp(Z)V

    .line 1198
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateLuxSpanStartTimeStamp(Z)V

    .line 1199
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->setPointerEventListener(Z)V

    .line 1200
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->setRotationListener(Z)V

    .line 1201
    return-void
.end method

.method private updateStartTimeStamp(Z)V
    .registers 5
    .param p1, "screenOn"  # Z

    .line 1204
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateStartTimeStamp: screenOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_1d
    if-eqz p1, :cond_2c

    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->isValidStartTimeStamp()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mStartTimeStamp:J

    goto :goto_3b

    .line 1209
    :cond_2c
    if-nez p1, :cond_3b

    .line 1210
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenBrightness:F

    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessSpanByNit(F)I

    move-result v0

    const/4 v1, 0x1

    const-string/jumbo v2, "screen off"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateBrightnessUsage(IZLjava/lang/String;)V

    .line 1213
    :cond_3b
    :goto_3b
    return-void
.end method

.method private updateThermalStatsBeforeReported()V
    .registers 9

    .line 3193
    iget-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastThermalStatusTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_49

    .line 3194
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3195
    .local v4, "now":J
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastRestrictedBrightness:F

    iget v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastUnrestrictedBrightness:F

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteThermalBrightnessRestrictedUsage(FFJZ)V

    .line 3196
    iget v3, v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastConditionId:I

    move-wide v5, v4

    .end local v4  # "now":J
    .local v5, "now":J
    iget v4, v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    const/4 v7, 0x0

    const/4 v2, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteDetailThermalUsage(IIFJZ)V

    .line 3198
    move-wide v4, v5

    .end local v5  # "now":J
    .restart local v4  # "now":J
    iget v0, v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalStatus:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v4, v5, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->noteThermalUsage(IJZ)V

    .line 3200
    iget-object v0, v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mThermalEventsMap:Ljava/util/Map;

    const-string/jumbo v2, "thermal_average_temperature"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 3201
    iget v0, v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastTemperature:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v3, "average"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateThermalEventsAvg(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3203
    :cond_3c
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_4a

    .line 3204
    const-string v0, "BrightnessDataProcessor"

    const-string/jumbo v2, "updateThermalStatsBeforeReported: update stats before reporting stats."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 3193
    .end local v4  # "now":J
    :cond_49
    move-object v1, p0

    .line 3207
    :cond_4a
    :goto_4a
    return-void
.end method

.method private updateUserResetAutoBrightnessModeTimes()V
    .registers 9

    .line 1992
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessEnable:Z

    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAutoBrightnessEnable:Z

    if-ne v0, v1, :cond_7

    .line 1993
    return-void

    .line 1995
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1996
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessEnable:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_36

    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsValidResetAutoBrightnessMode:Z

    if-eqz v2, :cond_36

    iget-wide v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastResetBrightnessModeTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_36

    iget-wide v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastResetBrightnessModeTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0xbb8

    cmp-long v2, v4, v6

    if-gtz v2, :cond_36

    .line 1998
    const-string/jumbo v2, "reset_times"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "reset_brightness_mode_times"

    invoke-direct {p0, v5, v2, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateAdvancedBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1999
    invoke-direct {p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->flareStatisticalResetBrightnessModeTimes()V

    .line 2003
    :cond_36
    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAutoBrightnessEnable:Z

    if-eqz v2, :cond_3f

    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessEnable:Z

    if-nez v2, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v3, 0x0

    :goto_40
    iput-boolean v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsValidResetAutoBrightnessMode:Z

    .line 2004
    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutoBrightnessEnable:Z

    iput-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastAutoBrightnessEnable:Z

    .line 2005
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastResetBrightnessModeTime:J

    .line 2006
    sget-boolean v2, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v2, :cond_6b

    .line 2007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUserResetAutoBrightnessModeTimes: mAdvancedBrightnessEventsMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAdvancedBrightnessEventsMap:Ljava/util/Map;

    .line 2008
    invoke-interface {v3}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2007
    const-string v3, "BrightnessDataProcessor"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    :cond_6b
    return-void
.end method


# virtual methods
.method public aggregateCbmBrightnessAdjustTimes(IZ)V
    .registers 6
    .param p1, "cbmState"  # I
    .param p2, "isManuallySet"  # Z

    .line 3458
    invoke-static {p1, p2}, Lcom/android/server/display/statistics/AggregationEvent$CbmAggregationEvent;->getCbmAutoAdjustQuotaName(IZ)Ljava/lang/String;

    move-result-object v0

    .line 3459
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "custom_brightness_adj"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateCbmEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3460
    sget-boolean v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v1, :cond_2c

    .line 3461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aggregateCbmBrightnessAdjustTimes: mCbmEventsMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCbmEventsMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessDataProcessor"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    :cond_2c
    return-void
.end method

.method public aggregateCbmBrightnessUsageDuration(FI)V
    .registers 6
    .param p1, "duration"  # F
    .param p2, "cbmSate"  # I

    .line 3471
    const/high16 v0, 0x447a0000  # 1000.0f

    div-float/2addr p1, v0

    .line 3472
    invoke-static {p2}, Lcom/android/server/display/statistics/AggregationEvent$CbmAggregationEvent;->getCbmBrtUsageQuotaName(I)Ljava/lang/String;

    move-result-object v0

    .line 3473
    .local v0, "name":Ljava/lang/String;
    const-string v1, "custom_brightness_usage"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateCbmEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3474
    sget-boolean v1, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v1, :cond_38

    .line 3475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aggregateCbmBrightnessUsageDuration: duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCbmEventsMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCbmEventsMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessDataProcessor"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    :cond_38
    return-void
.end method

.method public aggregateFullAodBrightnessUsage(ILjava/lang/String;)V
    .registers 9
    .param p1, "spanIndex"  # I
    .param p2, "reason"  # Ljava/lang/String;

    .line 3656
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3657
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAodBrightnessSpanStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000  # 1000.0f

    div-float/2addr v2, v3

    .line 3658
    .local v2, "duration":F
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "full_aod_brightness_span_usage"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3659
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAodBrightnessSpanStartTime:J

    .line 3660
    sget-boolean v3, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v3, :cond_52

    .line 3661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aggregateFullAodBrightnessUsage: reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", span: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", append duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BrightnessDataProcessor"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    :cond_52
    return-void
.end method

.method public aggregateIndividualModelTrainTimes()V
    .registers 4

    .line 3484
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "individual_model_train"

    const-string/jumbo v2, "model_train_count"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateCbmEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3485
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 3486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aggregateIndividualModelTrainTimes: mCbmEventsMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCbmEventsMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    :cond_2c
    return-void
.end method

.method public aggregateIndividualModelTrainTimes(Z)V
    .registers 4
    .param p1, "isSuccessful"  # Z

    .line 3495
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3504
    return-void
.end method

.method public aggregateModelAvgPredictDuration(F)V
    .registers 5
    .param p1, "duration"  # F

    .line 3524
    const-string/jumbo v0, "model_predict_average_duration"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "individual_model_predict"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateCbmEventsAvg(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3525
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_35

    .line 3526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aggregateModelAvgPredictDuration: duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCbmEventsMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCbmEventsMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    :cond_35
    return-void
.end method

.method public aggregateModelPredictTimeoutTimes()V
    .registers 3

    .line 3510
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3517
    return-void
.end method

.method public aggregateModelTrainIndicators(Lcom/xiaomi/aiautobrt/IndividualTrainEvent;)V
    .registers 8
    .param p1, "event"  # Lcom/xiaomi/aiautobrt/IndividualTrainEvent;

    .line 3537
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3538
    .local v0, "indicatorsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3540
    .local v1, "now":J
    invoke-virtual {p1}, Lcom/xiaomi/aiautobrt/IndividualTrainEvent;->getTrainSampleNum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "sample_num"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3541
    invoke-virtual {p1}, Lcom/xiaomi/aiautobrt/IndividualTrainEvent;->getModelTrainLoss()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string/jumbo v4, "train_loss"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3542
    invoke-virtual {p1}, Lcom/xiaomi/aiautobrt/IndividualTrainEvent;->getPreModelMAE()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string/jumbo v4, "pre_train_mae"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3543
    invoke-virtual {p1}, Lcom/xiaomi/aiautobrt/IndividualTrainEvent;->getCurModelMAE()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "cur_train_mae"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3544
    invoke-virtual {p1}, Lcom/xiaomi/aiautobrt/IndividualTrainEvent;->getPreModelMAPE()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string/jumbo v4, "pre_train_mape"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3545
    invoke-virtual {p1}, Lcom/xiaomi/aiautobrt/IndividualTrainEvent;->getCurModelMAPE()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "cur_train_mape"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3546
    const-string/jumbo v3, "timestamp"

    invoke-static {v1, v2}, Lcom/android/server/display/statistics/BrightnessEvent;->timestamp2String(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3547
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mModelTrainIndicatorsList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3548
    const-string/jumbo v3, "model_train_indicators"

    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mModelTrainIndicatorsList:Ljava/util/List;

    const-string/jumbo v5, "individual_model_train"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateCbmEventsSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3549
    sget-boolean v3, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v3, :cond_93

    .line 3550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aggregateModelTrainIndicators: mCbmEventsMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCbmEventsMap:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BrightnessDataProcessor"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3552
    :cond_93
    return-void
.end method

.method public createModelEvent(FIFII)Lcom/xiaomi/aiautobrt/IndividualModelEvent;
    .registers 15
    .param p1, "lux"  # F
    .param p2, "categoryId"  # I
    .param p3, "newBrightness"  # F
    .param p4, "orientation"  # I
    .param p5, "sceneState"  # I

    .line 800
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0, p3}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v0

    .line 802
    .local v0, "currentNit":F
    invoke-direct {p0, p3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessSpanByNit(F)I

    move-result v1

    int-to-float v1, v1

    .line 804
    .local v1, "currentNitSpan":F
    invoke-direct {p0, p1, p5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getConfigBrightness(FI)F

    move-result v2

    .line 806
    .local v2, "defaultConfigNit":F
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getAmbientLuxSpanIndex(F)I

    move-result v3

    int-to-float v3, v3

    .line 808
    .local v3, "currentLuxSpan":F
    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIndividualEventNormalizer:Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;

    invoke-virtual {v4, p2, p4}, Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;->getMixedOrientApp(II)F

    move-result v4

    .line 810
    .local v4, "mixedOrientationApp":F
    new-instance v5, Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;

    invoke-direct {v5}, Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;-><init>()V

    .line 811
    .local v5, "builder":Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;
    invoke-virtual {v5, v0}, Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;->setCurrentBrightness(F)Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;

    move-result-object v6

    .line 812
    invoke-virtual {v6, v1}, Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;->setCurrentBrightnessSpan(F)Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;

    move-result-object v6

    .line 813
    invoke-virtual {v6, p1}, Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;->setAmbientLux(F)Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;

    move-result-object v6

    .line 814
    invoke-virtual {v6, v3}, Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;->setAmbientLuxSpan(F)Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;

    move-result-object v6

    .line 815
    invoke-virtual {v6, v2}, Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;->setDefaultConfigBrightness(F)Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;

    move-result-object v6

    int-to-float v7, p2

    .line 816
    invoke-virtual {v6, v7}, Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;->setAppCategoryId(F)Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;

    move-result-object v6

    int-to-float v7, p4

    .line 817
    invoke-virtual {v6, v7}, Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;->setOrientation(F)Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;

    move-result-object v6

    .line 818
    invoke-virtual {v6, v4}, Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;->setMixedOrientationAppId(F)Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;

    move-result-object v6

    .line 819
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;->setTimeStamp(J)Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;

    .line 820
    invoke-virtual {v5}, Lcom/xiaomi/aiautobrt/IndividualModelEvent$Builder;->build()Lcom/xiaomi/aiautobrt/IndividualModelEvent;

    move-result-object v6

    return-object v6
.end method

.method public createModelEvent(FLjava/lang/String;FII)Lcom/xiaomi/aiautobrt/IndividualModelEvent;
    .registers 13
    .param p1, "lux"  # F
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "newBrightness"  # F
    .param p4, "orientation"  # I
    .param p5, "sceneState"  # I

    .line 793
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAppClassifier:Lcom/android/server/display/aiautobrt/AppClassifier;

    invoke-virtual {v0, p2}, Lcom/android/server/display/aiautobrt/AppClassifier;->getAppCategoryId(Ljava/lang/String;)I

    move-result v3

    .line 794
    .local v3, "categoryId":I
    move-object v1, p0

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1  # "lux":F
    .end local p3  # "newBrightness":F
    .end local p4  # "orientation":I
    .end local p5  # "sceneState":I
    .local v2, "lux":F
    .local v4, "newBrightness":F
    .local v5, "orientation":I
    .local v6, "sceneState":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->createModelEvent(FIFII)Lcom/xiaomi/aiautobrt/IndividualModelEvent;

    move-result-object p1

    return-object p1
.end method

.method public forceReportTrainDataEnabled(Z)V
    .registers 4
    .param p1, "enable"  # Z

    .line 3400
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3401
    return-void
.end method

.method public getTopFiveAppsIn20000Lux(FZZZ)V
    .registers 16
    .param p1, "ambientLux"  # F
    .param p2, "isForegroundAppChanged"  # Z
    .param p3, "isScreenOnChange"  # Z
    .param p4, "dueToReport"  # Z

    .line 1504
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1505
    .local v0, "now":J
    const/4 v2, 0x0

    .line 1506
    .local v2, "curLux":F
    const/4 v3, 0x0

    .line 1507
    .local v3, "duration":F
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    const/high16 v5, 0x447a0000  # 1000.0f

    const-wide/16 v6, 0x0

    const v8, 0x469c4000  # 20000.0f

    if-nez v4, :cond_4a

    .line 1508
    move v2, p1

    .line 1509
    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForegroundAppPackageName:Ljava/lang/String;

    if-eqz v4, :cond_af

    if-nez p2, :cond_af

    .line 1510
    cmpl-float v4, v2, v8

    if-ltz v4, :cond_27

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mStatLastAmbientlux:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_27

    .line 1511
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAppsIn20000LuxUsageStartTime:J

    goto :goto_47

    .line 1512
    :cond_27
    cmpg-float v4, v2, v8

    if-gez v4, :cond_47

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mStatLastAmbientlux:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_47

    iget-wide v9, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAppsIn20000LuxUsageStartTime:J

    cmp-long v4, v9, v6

    if-eqz v4, :cond_47

    .line 1513
    iget-wide v9, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAppsIn20000LuxUsageStartTime:J

    sub-long v9, v0, v9

    long-to-float v4, v9

    div-float v3, v4, v5

    .line 1514
    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForegroundAppPackageName:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {p0, v4, v3, v9}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->AggregateTopFiveAppsIn20000Lux(Ljava/lang/String;FLjava/lang/Long;)V

    .line 1516
    :cond_47
    :goto_47
    iput v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mStatLastAmbientlux:F

    goto :goto_af

    .line 1518
    :cond_4a
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_af

    .line 1519
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAmbientLux:F

    .line 1520
    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForegroundAppPackageName:Ljava/lang/String;

    if-eqz v4, :cond_80

    if-eqz p2, :cond_80

    .line 1521
    cmpl-float v4, v2, v8

    if-ltz v4, :cond_7c

    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastForegroundApp:Ljava/lang/String;

    if-eqz v4, :cond_7c

    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForegroundAppPackageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastForegroundApp:Ljava/lang/String;

    if-eq v4, v9, :cond_7c

    iget-wide v9, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAppsIn20000LuxUsageStartTime:J

    cmp-long v4, v9, v6

    if-eqz v4, :cond_7c

    .line 1523
    iget-wide v9, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAppsIn20000LuxUsageStartTime:J

    sub-long v9, v0, v9

    long-to-float v4, v9

    div-float/2addr v4, v5

    .line 1524
    .end local v3  # "duration":F
    .local v4, "duration":F
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastForegroundApp:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {p0, v3, v4, v9}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->AggregateTopFiveAppsIn20000Lux(Ljava/lang/String;FLjava/lang/Long;)V

    move v3, v4

    .line 1526
    .end local v4  # "duration":F
    .restart local v3  # "duration":F
    :cond_7c
    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForegroundAppPackageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastForegroundApp:Ljava/lang/String;

    .line 1528
    :cond_80
    if-eqz p3, :cond_af

    .line 1529
    iget-boolean v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mScreenOn:Z

    if-eqz v4, :cond_8d

    cmpl-float v4, v2, v8

    if-ltz v4, :cond_8d

    .line 1530
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAppsIn20000LuxUsageStartTime:J

    goto :goto_af

    .line 1531
    :cond_8d
    iget-boolean v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mScreenOn:Z

    if-nez v4, :cond_af

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mStatLastAmbientlux:F

    cmpl-float v4, v4, v8

    if-ltz v4, :cond_af

    iget-wide v9, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAppsIn20000LuxUsageStartTime:J

    cmp-long v4, v9, v6

    if-eqz v4, :cond_af

    .line 1532
    iget-wide v9, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAppsIn20000LuxUsageStartTime:J

    sub-long v9, v0, v9

    long-to-float v4, v9

    div-float v3, v4, v5

    .line 1533
    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastForegroundApp:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {p0, v4, v3, v9}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->AggregateTopFiveAppsIn20000Lux(Ljava/lang/String;FLjava/lang/Long;)V

    .line 1534
    iput-wide v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAppsIn20000LuxUsageStartTime:J

    .line 1538
    :cond_af
    :goto_af
    if-eqz p4, :cond_d1

    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForegroundAppPackageName:Ljava/lang/String;

    if-eqz v4, :cond_d1

    .line 1539
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAmbientLux:F

    .line 1540
    cmpl-float v4, v2, v8

    if-lez v4, :cond_d1

    iget-wide v8, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAppsIn20000LuxUsageStartTime:J

    cmp-long v4, v8, v6

    if-eqz v4, :cond_d1

    .line 1541
    iget-wide v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAppsIn20000LuxUsageStartTime:J

    sub-long v6, v0, v6

    long-to-float v4, v6

    div-float v3, v4, v5

    .line 1542
    iget-object v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForegroundAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v4, v3, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->AggregateTopFiveAppsIn20000Lux(Ljava/lang/String;FLjava/lang/Long;)V

    .line 1545
    :cond_d1
    sget-boolean v4, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v4, :cond_129

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_129

    .line 1546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTopFiveAppsIn20000Lux:curLux: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isForegroundAppChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mScreenOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mScreenOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dueToReport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mForegroundAppPackageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForegroundAppPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BrightnessDataProcessor"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    :cond_129
    return-void
.end method

.method public noteAverageTemperature(FZ)V
    .registers 5
    .param p1, "temperature"  # F
    .param p2, "needComputed"  # Z

    .line 3066
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;ZF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3077
    return-void
.end method

.method public noteDetailThermalUsage(IF)V
    .registers 5
    .param p1, "conditionId"  # I
    .param p2, "temperature"  # F

    .line 2880
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;IF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2938
    return-void
.end method

.method public noteFullSceneThermalUsageStats(FFIF)V
    .registers 12
    .param p1, "brightness"  # F
    .param p2, "thermalBrightness"  # F
    .param p3, "conditionId"  # I
    .param p4, "temperature"  # F

    .line 2629
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda18;

    move-object v2, p0

    move v4, p1

    move v3, p2

    move v5, p3

    move v6, p4

    .end local p1  # "brightness":F
    .end local p2  # "thermalBrightness":F
    .end local p3  # "conditionId":I
    .end local p4  # "temperature":F
    .local v3, "thermalBrightness":F
    .local v4, "brightness":F
    .local v5, "conditionId":I
    .local v6, "temperature":F
    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;FFIF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2648
    return-void
.end method

.method public noteResetShortTermModelPolicy()V
    .registers 2

    .line 1639
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_c

    .line 1640
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessSpline()Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastBrightnessSpline:Landroid/util/Spline;

    .line 1642
    :cond_c
    return-void
.end method

.method public notifyAonFlareEvents(IF)V
    .registers 10
    .param p1, "type"  # I
    .param p2, "preLux"  # F

    .line 3570
    const-wide/32 v0, 0xea60

    const-string v2, "flare_scene_check_times"

    const/16 v3, 0xf

    const/4 v4, 0x1

    .line 3588
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3570
    packed-switch p1, :pswitch_data_8e

    goto/16 :goto_8c

    .line 3595
    :pswitch_11  #0x3
    nop

    .line 3596
    nop

    .line 3595
    const-string v6, "3"

    invoke-direct {p0, v2, v6, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateAonFlareEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3597
    iput-boolean v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsNotAonSuppressDarken:Z

    .line 3598
    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3599
    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3601
    goto :goto_8c

    .line 3587
    :pswitch_25  #0x2
    nop

    .line 3588
    nop

    .line 3587
    const-string v6, "2"

    invoke-direct {p0, v2, v6, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateAonFlareEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3589
    iput-boolean v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsNotAonSuppressDarken:Z

    .line 3590
    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3591
    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3593
    goto :goto_8c

    .line 3572
    :pswitch_39  #0x1
    sget-boolean v3, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v3, :cond_56

    .line 3573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyAonFlareEvents: preLux: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "BrightnessDataProcessor"

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    :cond_56
    nop

    .line 3576
    nop

    .line 3575
    const-string v3, "1"

    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateAonFlareEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3577
    nop

    .line 3578
    invoke-direct {p0, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getAmbientLuxSpanIndex(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3577
    const-string v3, "flare_suppress_darken_lux_span"

    invoke-direct {p0, v3, v2, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateAonFlareEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3579
    nop

    .line 3580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getHourFromTimestamp(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3579
    const-string v3, "flare_suppress_darken_hour"

    invoke-direct {p0, v3, v2, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateAonFlareEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3581
    iput-boolean v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsAonSuppressDarken:Z

    .line 3582
    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3583
    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3585
    nop

    .line 3605
    :goto_8c
    return-void

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_39  #00000001
        :pswitch_25  #00000002
        :pswitch_11  #00000003
    .end packed-switch
.end method

.method public notifyBrightnessEventIfNeeded(ZFFZZFZFFZZZZFFI)V
    .registers 38
    .param p1, "screenOn"  # Z
    .param p2, "originalBrightness"  # F
    .param p3, "actualBrightness"  # F
    .param p4, "userInitiatedChange"  # Z
    .param p5, "useAutoBrightness"  # Z
    .param p6, "brightnessOverrideFromWindow"  # F
    .param p7, "lowPowerMode"  # Z
    .param p8, "ambientLux"  # F
    .param p9, "userDataPoint"  # F
    .param p10, "defaultConfig"  # Z
    .param p11, "sunlightActive"  # Z
    .param p12, "isHdrLayer"  # Z
    .param p13, "isDimmingChanged"  # Z
    .param p14, "mainFastAmbientLux"  # F
    .param p15, "assistFastAmbientLux"  # F
    .param p16, "sceneState"  # I

    .line 528
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p12

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p11

    invoke-direct {v0, v5, v6, v7, v9}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessType(ZZFZ)I

    move-result v13

    .line 531
    .local v13, "type":I
    const/4 v8, 0x1

    const/4 v10, 0x2

    if-eq v13, v10, :cond_1f

    if-eq v13, v8, :cond_1f

    .line 533
    const/high16 v11, 0x7fc00000  # Float.NaN

    .end local p8  # "ambientLux":F
    .local v11, "ambientLux":F
    goto :goto_21

    .line 536
    .end local v11  # "ambientLux":F
    .restart local p8  # "ambientLux":F
    :cond_1f
    move/from16 v11, p8

    .end local p8  # "ambientLux":F
    .restart local v11  # "ambientLux":F
    :goto_21
    iget-object v12, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 537
    invoke-direct {v0, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->clampBrightness(F)F

    move-result v14

    invoke-virtual {v12, v14}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v12

    .line 538
    .local v12, "originalNit":F
    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v14

    sget-object v15, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 539
    invoke-virtual {v14, v10, v15}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigDecimal;->floatValue()F

    move-result v12

    .line 541
    iget-object v14, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 542
    invoke-direct {v0, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->clampBrightness(F)F

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v14

    .line 543
    .local v14, "actualNit":F
    float-to-double v8, v14

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v8

    sget-object v9, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 544
    invoke-virtual {v8, v10, v9}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    .line 545
    .end local v14  # "actualNit":F
    .local v8, "actualNit":F
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "actualBrightness: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "originalBrightness: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "BrightnessDataProcessor"

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-direct {v0, v1, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->scheduleUpdateBrightnessStatisticsData(ZF)V

    .line 547
    iget-boolean v9, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsHdrLayer:Z

    if-eq v9, v2, :cond_98

    .line 548
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    .line 549
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iput-object v10, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 550
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 551
    iget-object v10, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v14, 0x10

    invoke-virtual {v10, v14, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 554
    .end local v9  # "args":Lcom/android/internal/os/SomeArgs;
    :cond_98
    invoke-direct {v0, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->startHdyUsageStats(Z)V

    .line 556
    invoke-direct {v0, v12, v8}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateScreenNits(FF)V

    .line 558
    iget-object v9, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    if-eqz v9, :cond_b4

    iget-object v9, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget v9, v9, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalBrightness:F

    .line 560
    invoke-static {v9, v3}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v9

    if-nez v9, :cond_ad

    goto :goto_b4

    :cond_ad
    move/from16 v18, v8

    move v10, v11

    move/from16 v17, v12

    goto/16 :goto_10d

    :cond_b4
    :goto_b4
    if-nez p13, :cond_108

    iget-object v9, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 562
    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v9

    if-nez v9, :cond_102

    iget-object v9, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 563
    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v9

    if-nez v9, :cond_fc

    if-nez v1, :cond_ce

    move/from16 v18, v8

    move v10, v11

    move/from16 v17, v12

    goto :goto_10d

    .line 568
    :cond_ce
    invoke-direct {v0, v13, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateInterruptBrightnessAnimDurationIfNeeded(IF)V

    .line 570
    new-instance v2, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    iget-object v14, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mForegroundAppPackageName:Ljava/lang/String;

    iget v9, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOrientation:I

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v20, p16

    move/from16 v18, v8

    move/from16 v19, v9

    move v10, v11

    move/from16 v17, v12

    const/4 v1, 0x1

    move/from16 v8, p7

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v9, p11

    .end local v8  # "actualNit":F
    .end local v11  # "ambientLux":F
    .end local v12  # "originalNit":F
    .local v10, "ambientLux":F
    .local v17, "originalNit":F
    .local v18, "actualNit":F
    invoke-direct/range {v2 .. v20}, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;-><init>(FFZZFZZFFZILjava/lang/String;FFFFII)V

    .line 576
    .local v2, "item":Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;
    iput-object v2, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastBrightnessChangeItem:Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    .line 577
    iget-object v3, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-static {v3, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 578
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 579
    return-void

    .line 563
    .end local v1  # "msg":Landroid/os/Message;
    .end local v2  # "item":Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;
    .end local v10  # "ambientLux":F
    .end local v17  # "originalNit":F
    .end local v18  # "actualNit":F
    .restart local v8  # "actualNit":F
    .restart local v11  # "ambientLux":F
    .restart local v12  # "originalNit":F
    :cond_fc
    move/from16 v18, v8

    move v10, v11

    move/from16 v17, v12

    .end local v8  # "actualNit":F
    .end local v11  # "ambientLux":F
    .end local v12  # "originalNit":F
    .restart local v10  # "ambientLux":F
    .restart local v17  # "originalNit":F
    .restart local v18  # "actualNit":F
    goto :goto_10d

    .line 562
    .end local v10  # "ambientLux":F
    .end local v17  # "originalNit":F
    .end local v18  # "actualNit":F
    .restart local v8  # "actualNit":F
    .restart local v11  # "ambientLux":F
    .restart local v12  # "originalNit":F
    :cond_102
    move/from16 v18, v8

    move v10, v11

    move/from16 v17, v12

    .end local v8  # "actualNit":F
    .end local v11  # "ambientLux":F
    .end local v12  # "originalNit":F
    .restart local v10  # "ambientLux":F
    .restart local v17  # "originalNit":F
    .restart local v18  # "actualNit":F
    goto :goto_10d

    .line 560
    .end local v10  # "ambientLux":F
    .end local v17  # "originalNit":F
    .end local v18  # "actualNit":F
    .restart local v8  # "actualNit":F
    .restart local v11  # "ambientLux":F
    .restart local v12  # "originalNit":F
    :cond_108
    move/from16 v18, v8

    move v10, v11

    move/from16 v17, v12

    .line 565
    .end local v8  # "actualNit":F
    .end local v11  # "ambientLux":F
    .end local v12  # "originalNit":F
    .restart local v10  # "ambientLux":F
    .restart local v17  # "originalNit":F
    .restart local v18  # "actualNit":F
    :goto_10d
    return-void
.end method

.method public notifyFullAodState(ZFZLjava/lang/String;)V
    .registers 14
    .param p1, "isFullAodOpen"  # Z
    .param p2, "lux"  # F
    .param p3, "isFullAod"  # Z
    .param p4, "reason"  # Ljava/lang/String;

    .line 3613
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3614
    .local v0, "now":J
    invoke-direct {p0, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getAmbientLuxSpanIndex(F)I

    move-result v2

    .line 3615
    .local v2, "curLuxSpan":I
    const/4 v3, 0x0

    .line 3616
    .local v3, "duration":F
    const/4 v4, 0x0

    .line 3617
    .local v4, "brightnessDuration":F
    const/4 v5, 0x1

    if-ne p1, v5, :cond_f8

    .line 3618
    iget-boolean v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPreDozeState:Z

    const-string v7, "full_aod_lux_span_usage"

    const/high16 v8, 0x447a0000  # 1000.0f

    if-eq p3, v6, :cond_6c

    .line 3619
    if-ne p3, v5, :cond_2f

    .line 3620
    const-string/jumbo v5, "report"

    invoke-virtual {p4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    const-string v5, "aod_state_change"

    invoke-virtual {p4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 3621
    :cond_28
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAodLuxSpanStartTime:J

    .line 3622
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAodBrightnessSpanStartTime:J

    .line 3624
    :cond_2c
    iput v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mFullAodPreLuxSpan:I

    goto :goto_69

    .line 3626
    :cond_2f
    iget-wide v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAodLuxSpanStartTime:J

    sub-long v5, v0, v5

    long-to-float v5, v5

    div-float v3, v5, v8

    .line 3627
    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mFullAodPreLuxSpan:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {p0, v7, v5, v6}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3628
    iget-wide v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAodBrightnessSpanStartTime:J

    sub-long v5, v0, v5

    long-to-float v5, v5

    div-float v4, v5, v8

    .line 3629
    iget v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenBrightness:F

    .line 3630
    invoke-direct {p0, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessSpanByNit(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAodBrightnessSpanStartTime:J

    sub-long v6, v0, v6

    long-to-float v6, v6

    div-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 3629
    const-string v7, "full_aod_brightness_span_usage"

    invoke-direct {p0, v7, v5, v6}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3631
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAodLuxSpanStartTime:J

    .line 3632
    iput-wide v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAodBrightnessSpanStartTime:J

    .line 3634
    :goto_69
    iput-boolean p3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPreDozeState:Z

    goto :goto_8d

    .line 3635
    :cond_6c
    const-string/jumbo v5, "lux_change"

    invoke-virtual {p4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 3636
    iget-wide v5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAodLuxSpanStartTime:J

    sub-long v5, v0, v5

    long-to-float v5, v5

    div-float/2addr v5, v8

    .line 3637
    .end local v3  # "duration":F
    .local v5, "duration":F
    iget v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mFullAodPreLuxSpan:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {p0, v7, v3, v6}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateBrightnessEventsSum(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3638
    iput v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mFullAodPreLuxSpan:I

    .line 3639
    iput-wide v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAodLuxSpanStartTime:J

    move v3, v5

    .line 3641
    .end local v5  # "duration":F
    .restart local v3  # "duration":F
    :cond_8d
    :goto_8d
    sget-boolean v5, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v5, :cond_f8

    .line 3642
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyFullAodState:, isFullAodOpen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isFullAod: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mFullAodPreLuxSpan: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mFullAodPreLuxSpan:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", curLuxSpan: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "s, curBrightnessSpan: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mLastScreenBrightness:F

    .line 3648
    invoke-direct {p0, v7}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessSpanByNit(F)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "s, reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3642
    const-string v6, "BrightnessDataProcessor"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    :cond_f8
    return-void
.end method

.method public notifyResetBrightnessAnimInfo()V
    .registers 3

    .line 2217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingAnimationStart:Z

    .line 2218
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2219
    return-void
.end method

.method public notifyUpdateBrightness()V
    .registers 2

    .line 3608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsAonSuppressDarken:Z

    .line 3609
    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsNotAonSuppressDarken:Z

    .line 3610
    return-void
.end method

.method public notifyUpdateBrightnessAnimInfo(FFF)V
    .registers 9
    .param p1, "currentBrightnessAnim"  # F
    .param p2, "brightnessAnim"  # F
    .param p3, "targetBrightnessAnim"  # F

    .line 2062
    cmpl-float v0, p2, p3

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 2063
    .local v0, "begin":Z
    :goto_7
    invoke-direct {p0, p1, p3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getBrightnessChangedState(FF)I

    move-result v1

    .line 2067
    .local v1, "state":I
    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingAnimationStart:Z

    if-ne v0, v2, :cond_50

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_24

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangedState:I

    if-eq v4, v3, :cond_24

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangedState:I

    if-eq v4, v2, :cond_24

    if-eq v1, v3, :cond_24

    if-eq v1, v2, :cond_24

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangedState:I

    if-eq v1, v4, :cond_24

    goto :goto_50

    .line 2083
    :cond_24
    if-eqz v0, :cond_77

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangedState:I

    if-eq v4, v3, :cond_77

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangedState:I

    if-eq v4, v2, :cond_77

    if-eq v1, v3, :cond_77

    if-eq v1, v2, :cond_77

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangedState:I

    if-ne v1, v2, :cond_77

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingTargetBrightnessAnimValue:F

    cmpl-float v2, p3, v2

    if-eqz v2, :cond_77

    .line 2089
    iput p3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingTargetBrightnessAnimValue:F

    .line 2090
    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2091
    .local v2, "msg":Landroid/os/Message;
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2092
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_78

    .line 2073
    .end local v2  # "msg":Landroid/os/Message;
    :cond_50
    :goto_50
    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingAnimationStart:Z

    .line 2074
    iput v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingBrightnessChangedState:I

    .line 2075
    iput p3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingTargetBrightnessAnimValue:F

    .line 2076
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 2077
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2078
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2079
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2080
    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2083
    .end local v2  # "args":Lcom/android/internal/os/SomeArgs;
    :cond_77
    nop

    .line 2094
    :goto_78
    return-void
.end method

.method public notifyUpdateTempBrightnessTimeStampIfNeeded(Z)V
    .registers 4
    .param p1, "enable"  # Z

    .line 2045
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsTemporaryBrightnessAdjustment:Z

    if-eq p1, v0, :cond_18

    .line 2046
    iput-boolean p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsTemporaryBrightnessAdjustment:Z

    .line 2047
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIsTemporaryBrightnessAdjustment:Z

    if-eqz v0, :cond_18

    .line 2048
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mPendingAnimationStart:Z

    .line 2049
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2052
    :cond_18
    return-void
.end method

.method public onAmbientLuxChange(F)V
    .registers 4
    .param p1, "ambientLux"  # F

    .line 1494
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1500
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->debounceLuxSpanEvent(J)V

    .line 1501
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

    .line 1349
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-wide/16 v0, 0x1

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mReportBrightnessEventsEnable:Z

    .line 1351
    return-void
.end method

.method public setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessControllerImpl;)V
    .registers 2
    .param p1, "automaticBrightnessControllerImpl"  # Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    .line 1415
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAutomaticBrightnessControllerImpl:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    .line 1416
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Landroid/hardware/display/BrightnessConfiguration;Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 5
    .param p1, "defaultSceneConfig"  # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "darkeningSceneConfig"  # Landroid/hardware/display/BrightnessConfiguration;
    .param p3, "brighteningSceneConfig"  # Landroid/hardware/display/BrightnessConfiguration;

    .line 2258
    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getSpline(Landroid/hardware/display/BrightnessConfiguration;)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDefaultSceneSpline:Landroid/util/Spline;

    .line 2259
    invoke-direct {p0, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getSpline(Landroid/hardware/display/BrightnessConfiguration;)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDarkeningSceneSpline:Landroid/util/Spline;

    .line 2260
    invoke-direct {p0, p3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getSpline(Landroid/hardware/display/BrightnessConfiguration;)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrighteningSceneSpline:Landroid/util/Spline;

    .line 2261
    return-void
.end method

.method public setBrightnessMapper(Lcom/android/server/display/BrightnessMappingStrategy;)V
    .registers 4
    .param p1, "brightnessMapper"  # Lcom/android/server/display/BrightnessMappingStrategy;

    .line 2234
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 2235
    if-eqz p1, :cond_e

    .line 2236
    invoke-virtual {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    .line 2237
    .local v0, "config":Landroid/hardware/display/BrightnessConfiguration;
    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getSpline(Landroid/hardware/display/BrightnessConfiguration;)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mOriSpline:Landroid/util/Spline;

    .line 2239
    .end local v0  # "config":Landroid/hardware/display/BrightnessConfiguration;
    :cond_e
    return-void
.end method

.method public setDisplayDeviceConfig(Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 2
    .param p1, "config"  # Lcom/android/server/display/DisplayDeviceConfig;

    .line 2230
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 2231
    return-void
.end method

.method public setExpId(I)V
    .registers 2
    .param p1, "id"  # I

    .line 3359
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mExpId:I

    .line 3360
    return-void
.end method

.method public setModelEventCallback(Lcom/android/server/display/statistics/BrightnessDataProcessor$ModelEventCallback;)V
    .registers 2
    .param p1, "callback"  # Lcom/android/server/display/statistics/BrightnessDataProcessor$ModelEventCallback;

    .line 824
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mModelEventCallback:Lcom/android/server/display/statistics/BrightnessDataProcessor$ModelEventCallback;

    .line 825
    return-void
.end method

.method public setUpCloudControllerListener(Lcom/android/server/display/AutomaticBrightnessControllerImpl$CloudControllerListener;)V
    .registers 2
    .param p1, "listener"  # Lcom/android/server/display/AutomaticBrightnessControllerImpl$CloudControllerListener;

    .line 2226
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mCloudControllerListener:Lcom/android/server/display/AutomaticBrightnessControllerImpl$CloudControllerListener;

    .line 2227
    return-void
.end method

.method public thermalConfigChanged(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;",
            ">;)V"
        }
    .end annotation

    .line 1359
    .local p1, "item":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    .line 1360
    .local v1, "condition":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1361
    .local v2, "temperaturePairs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    invoke-virtual {v1}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getLuxTemperaturePair()Ljava/util/List;

    move-result-object v3

    .line 1362
    .local v3, "luxPairs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;

    .line 1363
    .local v5, "luxPair":Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;
    invoke-virtual {v5}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->getTemperatureBrightnessPair()Ljava/util/List;

    move-result-object v6

    .line 1364
    .local v6, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1365
    .end local v5  # "luxPair":Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;
    .end local v6  # "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    goto :goto_1d

    .line 1366
    :cond_31
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;

    .line 1367
    .local v5, "pair":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    invoke-virtual {v5}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->getMinInclusive()F

    move-result v6

    .line 1368
    .local v6, "minTemp":F
    invoke-virtual {v5}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->getMaxExclusive()F

    move-result v7

    .line 1369
    .local v7, "maxTemp":F
    iget-object v8, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemperatureSpan:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5e

    .line 1370
    iget-object v8, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemperatureSpan:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1372
    :cond_5e
    iget-object v8, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemperatureSpan:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_73

    .line 1373
    iget-object v8, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemperatureSpan:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1375
    .end local v5  # "pair":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    .end local v6  # "minTemp":F
    .end local v7  # "maxTemp":F
    :cond_73
    goto :goto_35

    .line 1376
    .end local v1  # "condition":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;
    .end local v2  # "temperaturePairs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    .end local v3  # "luxPairs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;>;"
    :cond_74
    goto :goto_4

    .line 1377
    :cond_75
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemperatureSpan:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_82

    .line 1378
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemperatureSpan:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1380
    :cond_82
    sget-boolean v0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->DEBUG:Z

    if-eqz v0, :cond_a5

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "thermalConfigChanged: mTemperatureSpan: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mTemperatureSpan:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessDataProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_a5
    return-void
.end method

.method public updateExpId(I)V
    .registers 4
    .param p1, "expId"  # I

    .line 2264
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2265
    return-void
.end method

.method public updateGrayScale(F)V
    .registers 4
    .param p1, "grayScale"  # F

    .line 845
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 846
    return-void
.end method

.method public updateThermalStats(FZFZ)V
    .registers 7
    .param p1, "brightnessState"  # F
    .param p2, "isScreenOn"  # Z
    .param p3, "temperature"  # F
    .param p4, "needComputed"  # Z

    .line 3042
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;ZFZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3058
    return-void
.end method
