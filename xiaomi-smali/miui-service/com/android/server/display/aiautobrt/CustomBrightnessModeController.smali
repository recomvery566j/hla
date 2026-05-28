# classes.dex

.class public Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;
.super Ljava/lang/Object;
.source "CustomBrightnessModeController.java"

# interfaces
.implements Lcom/android/server/display/statistics/BrightnessDataProcessor$ModelEventCallback;
.implements Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;
.implements Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;,
        Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BRIGHT_ROOM_AMBIENT_LUX:F = 600.0f

.field public static final CUSTOM_BRIGHTNESS_CURVE_BRIGHTENING:Ljava/lang/String; = "custom_brightness_curve_brightening"

.field public static final CUSTOM_BRIGHTNESS_CURVE_DARKENING:Ljava/lang/String; = "custom_brightness_curve_darkening"

.field public static final CUSTOM_BRIGHTNESS_CURVE_DEFAULT:Ljava/lang/String; = "custom_brightness_curve_default"

.field public static final CUSTOM_BRIGHTNESS_MODE_CUSTOM:I = 0x1

.field public static final CUSTOM_BRIGHTNESS_MODE_INDIVIDUAL:I = 0x2

.field private static final CUSTOM_BRIGHTNESS_MODE_INVALID:I = -0x1

.field public static final CUSTOM_BRIGHTNESS_MODE_OFF:I = 0x0

.field protected static final CUSTOM_CURVE_STATE_REASON_BACKUP:Ljava/lang/String; = "backup"

.field protected static final CUSTOM_CURVE_STATE_REASON_BEST_INDICATOR:Ljava/lang/String; = "best_indicator"

.field protected static final CUSTOM_CURVE_STATE_REASON_DEFAULT:Ljava/lang/String; = "default"

.field protected static final CUSTOM_CURVE_STATE_REASON_FORCED:Ljava/lang/String; = "forced_operate"

.field protected static final CUSTOM_CURVE_STATE_REASON_USER:Ljava/lang/String; = "user_operate"

.field private static final DARK_ROOM_AMBIENT_LUX:F = 100.0f

.field private static final EXPERIMENT_FLAG_CUSTOM_CURVE:I = 0x1

.field private static final EXPERIMENT_FLAG_INDIVIDUAL_MODEL:I = 0x2

.field private static final EXPERIMENT_FLAG_INVALID:I = -0x1

.field private static final FORCE_TRAIN_DISABLE_VALUE:I = 0x0

.field private static final FORCE_TRAIN_ENABLE_VALUE:I = 0x1

.field private static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final KEY_CUSTOM_BRIGHTNESS_MODE:Ljava/lang/String; = "custom_brightness_mode"

.field private static final KEY_FORCE_TRAIN_ENABLE:Ljava/lang/String; = "force_train_enable"

.field private static final LUX_GRAD_SMOOTHING:F = 0.25f

.field public static final MAX_CUSTOM_CURVE_VALID_ADJ_TIMES:I = 0x5

.field private static final MAX_GRAD:F = 1.0f

.field private static final MIN_PERMISSIBLE_INCREASE:F = 0.004f

.field private static final MIN_SCOPE_DELTA_NIT:F = 100.0f

.field private static final MSG_CLEAR_PREDICT_PENDING:I = 0x1

.field public static final SCENE_STATE_BRIGHTENING:I = 0x1

.field public static final SCENE_STATE_DARKENING:I = 0x2

.field public static final SCENE_STATE_DEFAULT:I = 0x0

.field public static final SCENE_STATE_INVALID:I = -0x1

.field private static final SHORT_TERM_MODEL_THRESHOLD_RATIO:F = 0.6f

.field protected static final TAG:Ljava/lang/String; = "CbmController"

.field private static final WAIT_FOR_PREDICT_TIMEOUT:I = 0xc8

.field protected static sDebug:Z


# instance fields
.field private final mAppClassifier:Lcom/android/server/display/aiautobrt/AppClassifier;

.field private mAutoBrightnessModeEnabled:Z

.field private final mBgHandler:Landroid/os/Handler;

.field private mBrighteningConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field private final mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

.field private mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mBrightnessValidationMapper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[F>;"
        }
    .end annotation
.end field

.field private mCachedCategoryId:I

.field private mCachedLuxIndex:I

.field private mCbmState:I

.field private final mCbmStateTracker:Lcom/android/server/display/aiautobrt/CbmStateTracker;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentCustomSceneState:I

.field private mCurrentIndividualDefaultSpline:Landroid/util/Spline;

.field private mCurrentIndividualGameSpline:Landroid/util/Spline;

.field private mCurrentIndividualVideoSpline:Landroid/util/Spline;

.field private mCustomCurveCloudDisable:Z

.field private mCustomCurveDisabledByUserChange:Z

.field private volatile mCustomCurveExperimentEnable:Z

.field private mCustomCurveValid:Z

.field private mCustomCurveValidStateReason:Ljava/lang/String;

.field private mDarkeningConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field private final mDataStore:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

.field private mDefaultConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field private final mDefaultLuxLevels:[F

.field private final mDefaultNitsLevels:[F

.field private final mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field private final mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

.field private mForcedCustomCurveEnabled:Z

.field private mForcedIndividualBrightnessEnabled:Z

.field private final mHandler:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;

.field private final mHbmMinimumLux:F

.field private mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

.field private final mIndividualComponentName:Landroid/content/ComponentName;

.field private mIndividualDefaultNits:[F

.field private mIndividualDisabledByUserChange:Z

.field private mIndividualGameNits:[F

.field private mIndividualModelCloudDisable:Z

.field private volatile mIndividualModelExperimentEnable:Z

.field private mIndividualVideoNits:[F

.field private mIsCustomCurveValidReady:Z

.field private mLastModelTrainTimeStamp:J

.field private final mMinBrightness:F

.field private mMinimumBrightnessSpline:Landroid/util/Spline;

.field private mModelTrainTotalTimes:J

.field private final mNormalMaxBrightness:F

.field private mNotifyModelVerificationRunnable:Ljava/lang/Runnable;

.field private mPendingIndividualBrightness:F

.field private final mSettingsObserver:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$SettingsObserver;

.field private final mShortTermModelTimeout:J

.field private mSupportCustomBrightness:Z

.field private mSupportIndividualBrightness:Z

.field private mUnAdjustBrightness:F

.field private mUserBrightness:F

.field private mUserLux:F


# direct methods
.method public static synthetic $r8$lambda$DkjR_6ti-eo7ELhqjwhZgk7A4PI(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->lambda$onBootCompleted$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Dq8EsM4HWCFNqa-pCEEZT0lousA(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->lambda$setScreenBrightnessByUser$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$X08UPIvqD71_-aSjqfLy6EcjPA0(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$gur6XfoP54RzNGAPVsWEN3_Y8Qw(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->lambda$getCustomBrightness$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nMB4rlk1iyvZGgy9KhWEzDGXgvY(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->lambda$onValidatedBrightness$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$reX9kS70p5UGdQxu_zZeszGno4c(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;I[F)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->lambda$isMonotonicModel$5(I[F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBrightnessDataProcessor(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;)Lcom/android/server/display/statistics/BrightnessDataProcessor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateAutoBrightness(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->updateAutoBrightness(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCustomBrightnessEnabled(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->updateCustomBrightnessEnabled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateScreenBrightnessMode(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->updateScreenBrightnessMode()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/DisplayPowerControllerImpl;Lcom/android/server/display/statistics/BrightnessDataProcessor;FFF)V
    .registers 28
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "looper"  # Landroid/os/Looper;
    .param p3, "config"  # Lcom/android/server/display/DisplayDeviceConfig;
    .param p4, "dpcImpl"  # Lcom/android/server/display/DisplayPowerControllerImpl;
    .param p5, "processor"  # Lcom/android/server/display/statistics/BrightnessDataProcessor;
    .param p6, "hbmMinimumLux"  # F
    .param p7, "normalMaxBrightness"  # F
    .param p8, "minBrightness"  # F

    .line 227
    move-object/from16 v5, p0

    move-object/from16 v1, p1

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessValidationMapper:Ljava/util/Map;

    .line 157
    const/4 v0, -0x1

    iput v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmState:I

    .line 165
    iput v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentCustomSceneState:I

    .line 178
    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mPendingIndividualBrightness:F

    .line 191
    const-string v0, "default"

    iput-object v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveValidStateReason:Ljava/lang/String;

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualModelExperimentEnable:Z

    .line 204
    iput-boolean v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveExperimentEnable:Z

    .line 217
    new-instance v0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda2;

    invoke-direct {v0, v5}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;)V

    iput-object v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mNotifyModelVerificationRunnable:Ljava/lang/Runnable;

    .line 228
    iput-object v1, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mContext:Landroid/content/Context;

    .line 229
    move-object/from16 v7, p3

    iput-object v7, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 230
    move-object/from16 v8, p4

    iput-object v8, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 231
    move-object/from16 v9, p5

    iput-object v9, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    .line 232
    iget-object v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->setModelEventCallback(Lcom/android/server/display/statistics/BrightnessDataProcessor$ModelEventCallback;)V

    .line 233
    move/from16 v10, p6

    iput v10, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mHbmMinimumLux:F

    .line 234
    move/from16 v11, p7

    iput v11, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mNormalMaxBrightness:F

    .line 235
    move/from16 v12, p8

    iput v12, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mMinBrightness:F

    .line 236
    new-instance v0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;

    move-object/from16 v3, p2

    invoke-direct {v0, v5, v3}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;-><init>(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;Landroid/os/Looper;)V

    iput-object v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mHandler:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;

    .line 237
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBgHandler:Landroid/os/Handler;

    .line 238
    invoke-static {}, Lcom/android/server/display/aiautobrt/AppClassifier;->getInstance()Lcom/android/server/display/aiautobrt/AppClassifier;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mAppClassifier:Lcom/android/server/display/aiautobrt/AppClassifier;

    .line 239
    new-instance v0, Lcom/android/server/display/aiautobrt/CbmStateTracker;

    iget-object v2, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBgHandler:Landroid/os/Handler;

    iget-object v4, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mHandler:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/server/display/aiautobrt/CbmStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;)V

    iput-object v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmStateTracker:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    .line 241
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 242
    .local v13, "resources":Landroid/content/res/Resources;
    const v0, 0x110f00a3

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 245
    .local v14, "componentName":Ljava/lang/String;
    const v0, 0x107001c

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->getLuxLevels([I)[F

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    .line 247
    const v0, 0x1070017

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultNitsLevels:[F

    .line 249
    const v0, 0x1103003a

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->getLuxLevels([I)[F

    move-result-object v15

    .line 251
    .local v15, "customDefaultLuxLevels":[F
    const v0, 0x1103003b

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    .line 253
    .local v0, "customDefaultNitsLevels":[F
    const v2, 0x11030034

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    .line 255
    .local v2, "brighteningNitsLevels":[F
    const v4, 0x11030039

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v4

    .line 257
    .local v4, "darkeningNitsLevels":[F
    const v6, 0x11030041

    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v6

    .line 259
    .local v6, "minLuxLevel":[F
    const v1, 0x11030042

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    .line 261
    .local v1, "minNitsLevel":[F
    const v3, 0x10e002e

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v7, v3

    iput-wide v7, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mShortTermModelTimeout:J

    .line 263
    iget-object v3, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x11050033

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mSupportIndividualBrightness:Z

    .line 265
    iget-object v3, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x11050017

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mSupportCustomBrightness:Z

    .line 269
    invoke-direct {v5, v6, v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isValidMapping([F[F)Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 270
    invoke-static {v6, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    iput-object v3, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mMinimumBrightnessSpline:Landroid/util/Spline;

    .line 274
    :cond_10a
    invoke-direct {v5, v15, v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isValidMapping([F[F)Z

    move-result v3

    if-eqz v3, :cond_134

    .line 275
    invoke-direct {v5, v15, v2}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isValidMapping([F[F)Z

    move-result v3

    if-eqz v3, :cond_134

    .line 276
    invoke-direct {v5, v15, v4}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isValidMapping([F[F)Z

    move-result v3

    if-eqz v3, :cond_134

    .line 277
    const-string v3, "custom_brightness_curve_default"

    invoke-direct {v5, v15, v0, v3}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->build([F[FLjava/lang/String;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v3

    iput-object v3, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    .line 278
    const-string v3, "custom_brightness_curve_brightening"

    invoke-direct {v5, v15, v2, v3}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->build([F[FLjava/lang/String;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v3

    iput-object v3, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrighteningConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    .line 279
    const-string v3, "custom_brightness_curve_darkening"

    invoke-direct {v5, v15, v4, v3}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->build([F[FLjava/lang/String;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v3

    iput-object v3, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDarkeningConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    .line 282
    :cond_134
    iget-object v3, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v7, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    iget-object v8, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDarkeningConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    move-object/from16 v16, v0

    .end local v0  # "customDefaultNitsLevels":[F
    .local v16, "customDefaultNitsLevels":[F
    iget-object v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrighteningConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v3, v7, v8, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Landroid/hardware/display/BrightnessConfiguration;Landroid/hardware/display/BrightnessConfiguration;)V

    .line 285
    invoke-direct {v5, v14}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->getIndividualComponent(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualComponentName:Landroid/content/ComponentName;

    .line 286
    new-instance v0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    iget-object v3, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v3, v3, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mIndividualEventNormalizer:Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;

    move-object v7, v4

    .end local v4  # "darkeningNitsLevels":[F
    .local v7, "darkeningNitsLevels":[F
    iget-object v4, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualComponentName:Landroid/content/ComponentName;

    move-object v8, v6

    .end local v6  # "minLuxLevel":[F
    .local v8, "minLuxLevel":[F
    iget-object v6, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBgHandler:Landroid/os/Handler;

    move-object/from16 v18, v1

    move-object/from16 v17, v8

    move-object/from16 v1, p1

    move-object v8, v7

    move-object v7, v2

    move-object v2, v3

    move-object/from16 v3, p2

    .end local v1  # "minNitsLevel":[F
    .end local v2  # "brighteningNitsLevels":[F
    .local v7, "brighteningNitsLevels":[F
    .local v8, "darkeningNitsLevels":[F
    .local v17, "minLuxLevel":[F
    .local v18, "minNitsLevel":[F
    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;-><init>(Landroid/content/Context;Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;Landroid/os/Looper;Landroid/content/ComponentName;Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;Landroid/os/Handler;)V

    iput-object v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    .line 290
    new-instance v0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$SettingsObserver;

    iget-object v1, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mHandler:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;

    invoke-direct {v0, v5, v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$SettingsObserver;-><init>(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;Landroid/os/Handler;)V

    iput-object v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$SettingsObserver;

    .line 291
    iget-object v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mContentResolver:Landroid/content/ContentResolver;

    .line 292
    new-instance v0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    iget-object v1, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    invoke-direct {v0, v5, v1}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;-><init>(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;[F)V

    iput-object v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDataStore:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    .line 293
    iget-object v0, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    iget-object v1, v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDataStore:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    invoke-virtual {v0, v1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->setDataStore(Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;)V

    .line 294
    invoke-direct {v5}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->registerSettingsObserver()V

    .line 295
    invoke-direct {v5}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->loadSettings()V

    .line 296
    return-void
.end method

.method private build([F[FLjava/lang/String;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 7
    .param p1, "luxLevels"  # [F
    .param p2, "brightnessLevelsNits"  # [F
    .param p3, "description"  # Ljava/lang/String;

    .line 963
    new-instance v0, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v0, p1, p2}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 965
    .local v0, "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    iget-wide v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mShortTermModelTimeout:J

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelTimeoutMillis(J)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 966
    const v1, 0x3f19999a  # 0.6f

    invoke-virtual {v0, v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelLowerLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 967
    invoke-virtual {v0, v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelUpperLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 968
    invoke-virtual {v0, p3}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setDescription(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 969
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v1

    return-object v1
.end method

.method private buildIndividualSpline(I[F)V
    .registers 5
    .param p1, "category"  # I
    .param p2, "nitsArray"  # [F

    .line 857
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    invoke-static {v0, p2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    .line 858
    .local v0, "spline":Landroid/util/Spline;
    if-nez p1, :cond_d

    .line 859
    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualDefaultSpline:Landroid/util/Spline;

    .line 860
    iput-object p2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualDefaultNits:[F

    goto :goto_1c

    .line 861
    :cond_d
    const/4 v1, 0x1

    if-ne p1, v1, :cond_15

    .line 862
    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualGameSpline:Landroid/util/Spline;

    .line 863
    iput-object p2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualGameNits:[F

    goto :goto_1c

    .line 864
    :cond_15
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1c

    .line 865
    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualVideoSpline:Landroid/util/Spline;

    .line 866
    iput-object p2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualVideoNits:[F

    .line 868
    :cond_1c
    :goto_1c
    return-void
.end method

.method private findInsertionPoint([FF)I
    .registers 5
    .param p1, "arr"  # [F
    .param p2, "val"  # F

    .line 933
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 934
    aget v1, p1, v0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_b

    .line 935
    return v0

    .line 933
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 938
    .end local v0  # "i":I
    :cond_e
    array-length v0, p1

    return v0
.end method

.method private getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 6
    .param p1, "array"  # Landroid/content/res/TypedArray;

    .line 1032
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 1033
    .local v0, "N":I
    new-array v1, v0, [F

    .line 1034
    .local v1, "values":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_14

    .line 1035
    const/high16 v3, -0x40800000  # -1.0f

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 1034
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1037
    .end local v2  # "i":I
    :cond_14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1038
    return-object v1
.end method

.method private getIndividualBrightness(Ljava/lang/String;F)F
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "lux"  # F

    .line 872
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mAppClassifier:Lcom/android/server/display/aiautobrt/AppClassifier;

    invoke-virtual {v0, p1}, Lcom/android/server/display/aiautobrt/AppClassifier;->getAppCategoryId(Ljava/lang/String;)I

    move-result v0

    .line 873
    .local v0, "category":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 874
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualGameSpline:Landroid/util/Spline;

    .local v1, "spline":Landroid/util/Spline;
    goto :goto_14

    .line 875
    .end local v1  # "spline":Landroid/util/Spline;
    :cond_c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 876
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualVideoSpline:Landroid/util/Spline;

    .restart local v1  # "spline":Landroid/util/Spline;
    goto :goto_14

    .line 878
    .end local v1  # "spline":Landroid/util/Spline;
    :cond_12
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualDefaultSpline:Landroid/util/Spline;

    .line 880
    .restart local v1  # "spline":Landroid/util/Spline;
    :goto_14
    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v1, p2}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v2

    .line 881
    .local v2, "individualBrt":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getIndividualBrightness: category: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lux: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", individualBrt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CbmController"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    return v2
.end method

.method private getIndividualComponent(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 347
    if-eqz p1, :cond_7

    .line 348
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 350
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLuxLevels([I)[F
    .registers 6
    .param p1, "lux"  # [I

    .line 1043
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    .line 1044
    .local v0, "levels":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_13

    .line 1045
    add-int/lit8 v2, v1, 0x1

    aget v3, p1, v1

    int-to-float v3, v3

    aput v3, v0, v2

    .line 1044
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1047
    .end local v1  # "i":I
    :cond_13
    return-object v0
.end method

.method private getSceneState(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "orientation"  # I

    .line 475
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    .line 476
    .local v0, "clock":I
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mAppClassifier:Lcom/android/server/display/aiautobrt/AppClassifier;

    invoke-virtual {v1, p1}, Lcom/android/server/display/aiautobrt/AppClassifier;->getAppCategoryId(Ljava/lang/String;)I

    move-result v1

    .line 477
    .local v1, "category":I
    const/4 v2, 0x0

    .line 478
    .local v2, "scene":I
    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isBrighteningScene(III)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 479
    const/4 v2, 0x1

    goto :goto_1e

    .line 480
    :cond_17
    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isDarkeningScene(III)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 481
    const/4 v2, 0x2

    .line 484
    :cond_1e
    :goto_1e
    iget v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentCustomSceneState:I

    if-eq v3, v2, :cond_5d

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSceneState: category: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/display/aiautobrt/AppClassifier;->categoryToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", scene state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CbmController"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_5d
    return v2
.end method

.method private hasSceneStateChanged(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "orientation"  # I

    .line 459
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->getSceneState(Ljava/lang/String;I)I

    move-result v0

    .line 460
    .local v0, "state":I
    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentCustomSceneState:I

    if-eq v1, v0, :cond_c

    .line 461
    iput v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentCustomSceneState:I

    .line 462
    const/4 v1, 0x1

    return v1

    .line 464
    :cond_c
    const/4 v1, 0x0

    return v1
.end method

.method private insertControlPoint([F[FFF)Landroid/util/Spline;
    .registers 11
    .param p1, "luxLevels"  # [F
    .param p2, "brightnessLevels"  # [F
    .param p3, "lux"  # F
    .param p4, "brightness"  # F

    .line 889
    invoke-direct {p0, p1, p3}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->findInsertionPoint([FF)I

    move-result v0

    .line 892
    .local v0, "idx":I
    array-length v1, p1

    if-ne v0, v1, :cond_1a

    .line 893
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 894
    .local v1, "newLuxLevels":[F
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 895
    .local v2, "newBrightnessLevels":[F
    aput p3, v1, v0

    .line 896
    aput p4, v2, v0

    goto :goto_4d

    .line 897
    .end local v1  # "newLuxLevels":[F
    .end local v2  # "newBrightnessLevels":[F
    :cond_1a
    aget v1, p1, v0

    cmpl-float v1, v1, p3

    if-nez v1, :cond_2d

    .line 898
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 899
    .restart local v1  # "newLuxLevels":[F
    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 900
    .restart local v2  # "newBrightnessLevels":[F
    aput p4, v2, v0

    goto :goto_4d

    .line 902
    .end local v1  # "newLuxLevels":[F
    .end local v2  # "newBrightnessLevels":[F
    :cond_2d
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 903
    .restart local v1  # "newLuxLevels":[F
    add-int/lit8 v2, v0, 0x1

    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 904
    aput p3, v1, v0

    .line 905
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 906
    .restart local v2  # "newBrightnessLevels":[F
    add-int/lit8 v3, v0, 0x1

    array-length v4, p2

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 908
    aput p4, v2, v0

    .line 910
    :goto_4d
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->smoothNewCurve([F[FI)Z

    .line 911
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 912
    .local v3, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [F

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [F

    invoke-static {v4, v5}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v4

    return-object v4
.end method

.method private isBelowMinimumSlope([F)Z
    .registers 9
    .param p1, "nits"  # [F

    .line 1123
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    const/4 v1, 0x1

    if-eqz v0, :cond_7c

    array-length v0, p1

    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    array-length v2, v2

    if-eq v0, v2, :cond_d

    goto/16 :goto_7c

    .line 1126
    :cond_d
    const/4 v0, 0x0

    .line 1127
    .local v0, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    array-length v3, v3

    const/high16 v4, 0x3f800000  # 1.0f

    if-ge v2, v3, :cond_26

    .line 1128
    move v0, v2

    .line 1129
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    aget v3, v3, v2

    iget v5, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mHbmMinimumLux:F

    sub-float/2addr v5, v4

    cmpl-float v3, v3, v5

    if-lez v3, :cond_23

    .line 1130
    goto :goto_26

    .line 1127
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1133
    .end local v2  # "i":I
    :cond_26
    :goto_26
    if-le v0, v1, :cond_7b

    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    const/4 v5, 0x0

    aget v3, v3, v5

    cmpl-float v2, v2, v3

    if-nez v2, :cond_38

    goto :goto_7b

    .line 1136
    :cond_38
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aget v3, p1, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    add-int/lit8 v6, v0, -0x1

    aget v3, v3, v6

    iget-object v6, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    aget v6, v6, v5

    sub-float/2addr v3, v6

    div-float/2addr v2, v3

    .line 1138
    .local v2, "minScope":F
    iget v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mHbmMinimumLux:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x42c80000  # 100.0f

    div-float/2addr v4, v3

    .line 1139
    .local v4, "permittedMinScope":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isBelowMinimumSlope: minScope: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", permittedMinScope: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "CbmController"

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    cmpg-float v3, v2, v4

    if-gtz v3, :cond_79

    goto :goto_7a

    :cond_79
    move v1, v5

    :goto_7a
    return v1

    .line 1134
    .end local v2  # "minScope":F
    .end local v4  # "permittedMinScope":F
    :cond_7b
    :goto_7b
    return v1

    .line 1124
    .end local v0  # "index":I
    :cond_7c
    :goto_7c
    return v1
.end method

.method private isBelowMinimumSpline([F)Z
    .registers 7
    .param p1, "nits"  # [F

    .line 1110
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mMinimumBrightnessSpline:Landroid/util/Spline;

    const/4 v1, 0x1

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    if-eqz v0, :cond_2c

    array-length v0, p1

    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    array-length v2, v2

    if-eq v0, v2, :cond_10

    goto :goto_2c

    .line 1114
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    array-length v2, v2

    if-ge v0, v2, :cond_2a

    .line 1115
    aget v2, p1, v0

    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mMinimumBrightnessSpline:Landroid/util/Spline;

    iget-object v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_27

    .line 1116
    return v1

    .line 1114
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1119
    .end local v0  # "i":I
    :cond_2a
    const/4 v0, 0x0

    return v0

    .line 1112
    :cond_2c
    :goto_2c
    return v1
.end method

.method private isBrightRoomAdjustment(FLjava/lang/String;IZ)Z
    .registers 8
    .param p1, "lux"  # F
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "orientation"  # I
    .param p4, "isBrightening"  # Z

    .line 1205
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    .line 1206
    .local v0, "clock":I
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mAppClassifier:Lcom/android/server/display/aiautobrt/AppClassifier;

    invoke-virtual {v1, p2}, Lcom/android/server/display/aiautobrt/AppClassifier;->getAppCategoryId(Ljava/lang/String;)I

    move-result v1

    .line 1207
    .local v1, "category":I
    if-eqz p4, :cond_1e

    const/high16 v2, 0x44160000  # 600.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1e

    .line 1208
    invoke-direct {p0, v1, p3, v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isBrighteningScene(III)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    .line 1207
    :goto_1f
    return v2
.end method

.method private isBrighteningScene(III)Z
    .registers 6
    .param p1, "category"  # I
    .param p2, "orientation"  # I
    .param p3, "clock"  # I

    .line 497
    const/4 v0, 0x7

    const/4 v1, 0x1

    if-eq p1, v0, :cond_28

    .line 498
    invoke-direct {p0, p3}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isNoonTime(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 499
    invoke-direct {p0, p3}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isDayTime(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 500
    :cond_10
    invoke-direct {p0, p2}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isHorizontalScreen(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    if-eq p1, v1, :cond_28

    const/16 v0, 0x9

    if-eq p1, v0, :cond_28

    .line 503
    :cond_1c
    invoke-direct {p0, p2}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isVerticalScreen(I)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x2

    if-ne p1, v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 v1, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    nop

    .line 497
    :goto_29
    return v1
.end method

.method private isCustomAllowed()Z
    .registers 2

    .line 421
    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mSupportCustomBrightness:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveDisabledByUserChange:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveValid:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveCloudDisable:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveExperimentEnable:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private isDarkRoomAdjustment(FZ)Z
    .registers 4
    .param p1, "lux"  # F
    .param p2, "isBrightening"  # Z

    .line 1200
    const/high16 v0, 0x42c80000  # 100.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_a

    if-eqz p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isDarkeningScene(III)Z
    .registers 7
    .param p1, "category"  # I
    .param p2, "orientation"  # I
    .param p3, "clock"  # I

    .line 511
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2e

    .line 512
    invoke-direct {p0, p2}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isVerticalScreen(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 513
    invoke-direct {p0, p3}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isNightTime(I)Z

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x9

    if-eqz v0, :cond_19

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2e

    if-eq p1, v2, :cond_2e

    if-eq p1, v1, :cond_2e

    .line 517
    :cond_19
    invoke-direct {p0, p3}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isEarlyMorningTime(I)Z

    move-result v0

    if-eqz v0, :cond_23

    if-eq p1, v2, :cond_2e

    if-eq p1, v1, :cond_2e

    .line 520
    :cond_23
    invoke-direct {p0, p3}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isNoonTime(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    if-ne p1, v2, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v0, 0x1

    .line 511
    :goto_2f
    return v0
.end method

.method private isDayTime(I)Z
    .registers 3
    .param p1, "clock"  # I

    .line 1002
    const/16 v0, 0x8

    if-le p1, v0, :cond_8

    const/16 v0, 0xa

    if-le p1, v0, :cond_10

    :cond_8
    const/16 v0, 0xc

    if-le p1, v0, :cond_12

    const/16 v0, 0x14

    if-gt p1, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private isEarlyMorningTime(I)Z
    .registers 3
    .param p1, "clock"  # I

    .line 994
    const/4 v0, 0x4

    if-le p1, v0, :cond_9

    const/16 v0, 0x8

    if-gt p1, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private isHorizontalScreen(I)Z
    .registers 4
    .param p1, "orientation"  # I

    .line 986
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method private isIndividualAllowed()Z
    .registers 2

    .line 431
    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mSupportIndividualBrightness:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualDisabledByUserChange:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    .line 434
    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->isModelValid()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualModelCloudDisable:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualModelExperimentEnable:Z

    if-eqz v0, :cond_24

    .line 437
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isValidIndividualSpline()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 431
    :goto_25
    return v0
.end method

.method private isMonotonic([F)Z
    .registers 7
    .param p1, "x"  # [F

    .line 1095
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_6

    .line 1096
    return v2

    .line 1098
    :cond_6
    aget v0, p1, v2

    .line 1099
    .local v0, "prev":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_9
    array-length v3, p1

    if-ge v1, v3, :cond_1d

    .line 1100
    aget v3, p1, v1

    .line 1101
    .local v3, "curr":F
    cmpg-float v4, v3, v0

    if-ltz v4, :cond_1c

    const/4 v4, 0x0

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_18

    goto :goto_1c

    .line 1104
    :cond_18
    move v0, v3

    .line 1099
    .end local v3  # "curr":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1102
    .restart local v3  # "curr":F
    :cond_1c
    :goto_1c
    return v2

    .line 1106
    .end local v1  # "i":I
    .end local v3  # "curr":F
    :cond_1d
    const/4 v1, 0x1

    return v1
.end method

.method private isMonotonicModel()Z
    .registers 10

    .line 794
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessValidationMapper:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 795
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 796
    .local v3, "key":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    .line 797
    .local v4, "array":[F
    invoke-direct {p0, v4}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->smoothCurve([F)[F

    move-result-object v5

    .line 798
    .local v5, "newArray":[F
    const/4 v6, 0x0

    if-nez v5, :cond_2f

    .line 799
    return v6

    .line 801
    :cond_2f
    invoke-direct {p0, v5}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isMonotonic([F)Z

    move-result v7

    const-string v8, "CbmController"

    if-nez v7, :cond_52

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model is not monotonic, brightness spline: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return v6

    .line 805
    :cond_52
    invoke-direct {p0, v5}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isBelowMinimumSpline([F)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model brightness spline is below the minimum brightness spline, brightness spline: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 807
    invoke-static {v5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 806
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return v6

    .line 810
    :cond_73
    invoke-direct {p0, v5}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isBelowMinimumSlope([F)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Model brightness spline is below the minimum scope, brightness spline: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 812
    invoke-static {v5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 811
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    return v2

    .line 815
    :cond_94
    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mHandler:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;

    new-instance v6, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v3, v5}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;I[F)V

    invoke-virtual {v2, v6}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;->post(Ljava/lang/Runnable;)Z

    .line 816
    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDataStore:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->storeIndividualSpline(I[F)V

    .line 817
    .end local v1  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    .end local v3  # "key":I
    .end local v4  # "array":[F
    .end local v5  # "newArray":[F
    goto/16 :goto_a

    .line 818
    :cond_a5
    return v2
.end method

.method private isNightTime(I)Z
    .registers 3
    .param p1, "clock"  # I

    .line 990
    if-ltz p1, :cond_5

    const/4 v0, 0x4

    if-le p1, v0, :cond_d

    :cond_5
    const/16 v0, 0x14

    if-le p1, v0, :cond_f

    const/16 v0, 0x17

    if-gt p1, v0, :cond_f

    :cond_d
    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private isNoonTime(I)Z
    .registers 3
    .param p1, "clock"  # I

    .line 998
    const/16 v0, 0xa

    if-le p1, v0, :cond_a

    const/16 v0, 0xc

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isValidIndividualSpline()Z
    .registers 2

    .line 942
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualDefaultSpline:Landroid/util/Spline;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualGameSpline:Landroid/util/Spline;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualVideoSpline:Landroid/util/Spline;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualDefaultNits:[F

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualGameNits:[F

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualVideoNits:[F

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private isValidMapping([F[F)Z
    .registers 9
    .param p1, "x"  # [F
    .param p2, "y"  # [F

    .line 1006
    const/4 v0, 0x0

    if-eqz p1, :cond_59

    if-eqz p2, :cond_59

    array-length v1, p1

    if-eqz v1, :cond_59

    array-length v1, p2

    if-nez v1, :cond_c

    goto :goto_59

    .line 1009
    :cond_c
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_11

    .line 1010
    return v0

    .line 1012
    :cond_11
    array-length v1, p1

    .line 1013
    .local v1, "N":I
    aget v2, p1, v0

    .line 1014
    .local v2, "prevX":F
    aget v3, p2, v0

    .line 1015
    .local v3, "prevY":F
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_58

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_58

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_58

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_58

    .line 1018
    :cond_2c
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2d
    if-ge v4, v1, :cond_56

    .line 1019
    aget v5, p1, v4

    cmpl-float v5, v2, v5

    if-gez v5, :cond_55

    aget v5, p2, v4

    cmpl-float v5, v3, v5

    if-lez v5, :cond_3c

    goto :goto_55

    .line 1022
    :cond_3c
    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_54

    aget v5, p2, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_4d

    goto :goto_54

    .line 1025
    :cond_4d
    aget v2, p1, v4

    .line 1026
    aget v3, p2, v4

    .line 1018
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 1023
    :cond_54
    :goto_54
    return v0

    .line 1020
    :cond_55
    :goto_55
    return v0

    .line 1028
    .end local v4  # "i":I
    :cond_56
    const/4 v0, 0x1

    return v0

    .line 1016
    :cond_58
    :goto_58
    return v0

    .line 1007
    .end local v1  # "N":I
    .end local v2  # "prevX":F
    .end local v3  # "prevY":F
    :cond_59
    :goto_59
    return v0
.end method

.method private isVerticalScreen(I)Z
    .registers 3
    .param p1, "orientation"  # I

    .line 982
    if-eqz p1, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method static synthetic lambda$dump$6(Ljava/io/PrintWriter;Ljava/lang/Integer;[F)V
    .registers 5
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "k"  # Ljava/lang/Integer;
    .param p2, "v"  # [F

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{cateId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", brtSpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1295
    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1294
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getCustomBrightness$2(I)V
    .registers 3
    .param p1, "finalNewCbmState"  # I

    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->noteBrightnessAdjustTimesToAggregate(IZ)V

    return-void
.end method

.method private synthetic lambda$isMonotonicModel$5(I[F)V
    .registers 3
    .param p1, "key"  # I
    .param p2, "newArray"  # [F

    .line 815
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->buildIndividualSpline(I[F)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedCategoryId:I

    .line 219
    iput v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedLuxIndex:I

    .line 220
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->completeModelValidation()V

    .line 221
    const-string v0, "CbmController"

    const-string v1, "Model cannot complete verification due to predict time out."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method private synthetic lambda$onBootCompleted$1()V
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/UserBrightnessStatsJob;->scheduleJob(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onValidatedBrightness$4()V
    .registers 4

    .line 722
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    const/4 v1, 0x1

    const-string/jumbo v2, "train_finished"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->setModelValid(ZLjava/lang/String;)V

    .line 724
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->resetCustomCurveValidConditions()V

    .line 725
    const-string/jumbo v0, "user_operate"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->setCustomCurveValid(ZLjava/lang/String;)V

    .line 726
    invoke-virtual {p0, v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->disableIndividualEngine(Z)V

    .line 727
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDataStore:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->startWrite()V

    .line 728
    return-void
.end method

.method private synthetic lambda$setScreenBrightnessByUser$3(I)V
    .registers 3
    .param p1, "finalCbmState"  # I

    .line 591
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->noteBrightnessAdjustTimesToAggregate(IZ)V

    return-void
.end method

.method private loadSettings()V
    .registers 1

    .line 308
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->updateCustomBrightnessEnabled()V

    .line 309
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->updateScreenBrightnessMode()V

    .line 310
    return-void
.end method

.method private noteBrightnessAdjustTimesToAggregate(IZ)V
    .registers 4
    .param p1, "cbmState"  # I
    .param p2, "isManuallySet"  # Z

    .line 1226
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmStateTracker:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->isBrightnessAdjustNoted(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1227
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateCbmBrightnessAdjustTimes(IZ)V

    .line 1229
    :cond_d
    return-void
.end method

.method private permissibleRatio(FF)F
    .registers 5
    .param p1, "currLux"  # F
    .param p2, "prevLux"  # F

    .line 852
    const/high16 v0, 0x3e800000  # 0.25f

    add-float v1, p1, v0

    add-float/2addr v0, p2

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v1, v0}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    return v0
.end method

.method private registerSettingsObserver()V
    .registers 6

    .line 299
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mContentResolver:Landroid/content/ContentResolver;

    .line 300
    const-string v1, "custom_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$SettingsObserver;

    .line 299
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 302
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mContentResolver:Landroid/content/ContentResolver;

    .line 303
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$SettingsObserver;

    .line 302
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 305
    return-void
.end method

.method private resetCustomCurveValidConditions()V
    .registers 2

    .line 1216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIsCustomCurveValidReady:Z

    .line 1217
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmStateTracker:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->resetBrtAdjSceneCount()V

    .line 1218
    return-void
.end method

.method private resetIndividualSpline()V
    .registers 3

    .line 641
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUserBrightness:F

    .line 642
    iput v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUserLux:F

    .line 643
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualDefaultNits:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualDefaultSpline:Landroid/util/Spline;

    .line 644
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualGameNits:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualGameSpline:Landroid/util/Spline;

    .line 645
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualVideoNits:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualVideoSpline:Landroid/util/Spline;

    .line 646
    return-void
.end method

.method private setPendingToWaitPredict(F)V
    .registers 6
    .param p1, "newAutoBrightness"  # F

    .line 956
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mHandler:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;->removeMessages(I)V

    .line 957
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mHandler:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;

    .line 958
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 957
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 959
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mHandler:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 960
    return-void
.end method

.method private smoothCurve([F)[F
    .registers 11
    .param p1, "nitsArray"  # [F

    .line 822
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    array-length v0, v0

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultNitsLevels:[F

    array-length v1, v1

    if-ne v0, v1, :cond_79

    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-nez v0, :cond_d

    goto :goto_79

    .line 828
    :cond_d
    array-length v0, p1

    new-array v0, v0, [F

    .line 829
    .local v0, "newNitsArray":[F
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 830
    .local v1, "preLux":F
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    aget v4, p1, v2

    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v3

    iget v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mMinBrightness:F

    iget v5, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mNormalMaxBrightness:F

    invoke-static {v3, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    .line 832
    .local v3, "preBrightness":F
    iget-object v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v4, v3}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v4

    aput v4, v0, v2

    .line 833
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2e
    iget-object v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    array-length v4, v4

    if-ge v2, v4, :cond_78

    .line 834
    iget-object v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    aget v4, v4, v2

    iget v5, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mHbmMinimumLux:F

    const/high16 v6, 0x3f800000  # 1.0f

    sub-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_6f

    .line 835
    iget-object v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    aget v4, v4, v2

    .line 836
    .local v4, "currentLux":F
    iget-object v5, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    aget v6, p1, v2

    invoke-virtual {v5, v6}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v5

    .line 837
    .local v5, "currentBrightness":F
    nop

    .line 838
    invoke-direct {p0, v4, v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->permissibleRatio(FF)F

    move-result v6

    mul-float/2addr v6, v3

    const v7, 0x3b83126f  # 0.004f

    add-float/2addr v7, v3

    .line 837
    invoke-static {v6, v7}, Landroid/util/MathUtils;->max(FF)F

    move-result v6

    iget v7, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mNormalMaxBrightness:F

    invoke-static {v6, v7}, Landroid/util/MathUtils;->min(FF)F

    move-result v6

    .line 840
    .local v6, "maxBrightness":F
    invoke-static {v5, v3, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v7

    .line 841
    .local v7, "newBrightness":F
    move v1, v4

    .line 842
    move v3, v7

    .line 843
    iget-object v8, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v8, v7}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v8

    aput v8, v0, v2

    .line 844
    .end local v4  # "currentLux":F
    .end local v5  # "currentBrightness":F
    .end local v6  # "maxBrightness":F
    goto :goto_75

    .line 845
    .end local v7  # "newBrightness":F
    :cond_6f
    iget-object v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultNitsLevels:[F

    aget v4, v4, v2

    aput v4, v0, v2

    .line 833
    :goto_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 848
    .end local v2  # "i":I
    :cond_78
    return-object v0

    .line 824
    .end local v0  # "newNitsArray":[F
    .end local v1  # "preLux":F
    .end local v3  # "preBrightness":F
    :cond_79
    :goto_79
    const-string v0, "CbmController"

    const-string v1, "Can not smooth individual curve!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateAutoBrightness(F)V
    .registers 3
    .param p1, "brightness"  # F

    .line 951
    iput p1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mPendingIndividualBrightness:F

    .line 952
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateAutoBrightness()V

    .line 953
    return-void
.end method

.method private updateCbmState(I)V
    .registers 7
    .param p1, "cbmState"  # I

    .line 408
    iget v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmState:I

    .line 409
    .local v0, "oldState":I
    iput p1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmState:I

    .line 410
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 411
    .local v1, "now":J
    const/4 v3, -0x1

    if-eq v0, v3, :cond_10

    .line 412
    iget-object v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmStateTracker:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->noteStopCbmStateTracking(IJ)V

    .line 414
    :cond_10
    iget v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmState:I

    if-eq v4, v3, :cond_19

    .line 415
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmStateTracker:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->noteStartCbmStateTracking(IJ)V

    .line 417
    :cond_19
    return-void
.end method

.method private updateCustomBrightnessEnabled()V
    .registers 7

    .line 313
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, -0x2

    const-string v2, "custom_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 315
    .local v0, "value":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v2, v1

    goto :goto_10

    :cond_f
    move v2, v3

    .line 316
    .local v2, "forcedEnableCustomCurve":Z
    :goto_10
    iget-boolean v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mForcedCustomCurveEnabled:Z

    const-string v5, "forced_operate"

    if-eq v4, v2, :cond_1b

    .line 317
    iput-boolean v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mForcedCustomCurveEnabled:Z

    .line 318
    invoke-virtual {p0, v2, v5}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->setCustomCurveValid(ZLjava/lang/String;)V

    .line 320
    :cond_1b
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v3

    .line 321
    .local v1, "forcedEnableModel":Z
    :goto_20
    iget-boolean v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mForcedIndividualBrightnessEnabled:Z

    if-eq v4, v1, :cond_2b

    .line 322
    iput-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mForcedIndividualBrightnessEnabled:Z

    .line 323
    iget-object v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-virtual {v4, v1, v5}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->setModelValid(ZLjava/lang/String;)V

    .line 326
    :cond_2b
    if-nez v2, :cond_2f

    if-eqz v1, :cond_32

    .line 327
    :cond_2f
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->resetCustomCurveValidConditions()V

    .line 329
    :cond_32
    if-eqz v1, :cond_37

    .line 330
    invoke-virtual {p0, v3}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->disableIndividualEngine(Z)V

    .line 332
    :cond_37
    return-void
.end method

.method private updateScreenBrightnessMode()V
    .registers 5

    .line 335
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, -0x2

    const-string/jumbo v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v3, v1

    :cond_f
    iput-boolean v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mAutoBrightnessModeEnabled:Z

    .line 339
    return-void
.end method

.method private uploadValidatedEventToModel()V
    .registers 9

    .line 778
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    if-nez v0, :cond_5

    .line 779
    return-void

    .line 781
    :cond_5
    iget v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedLuxIndex:I

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    array-length v1, v1

    if-ge v0, v1, :cond_35

    .line 782
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedLuxIndex:I

    aget v3, v0, v1

    .line 783
    .local v3, "lux":F
    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedCategoryId:I

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->createModelEvent(FIFII)Lcom/xiaomi/aiautobrt/IndividualModelEvent;

    move-result-object v0

    .line 786
    .local v0, "event":Lcom/xiaomi/aiautobrt/IndividualModelEvent;
    invoke-virtual {v0}, Lcom/xiaomi/aiautobrt/IndividualModelEvent;->isValidRawEvent()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mSupportIndividualBrightness:Z

    if-eqz v1, :cond_2c

    .line 787
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-virtual {v1, v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->preparePredictBrightness(Lcom/xiaomi/aiautobrt/IndividualModelEvent;)V

    .line 789
    :cond_2c
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mNotifyModelVerificationRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 791
    .end local v0  # "event":Lcom/xiaomi/aiautobrt/IndividualModelEvent;
    .end local v3  # "lux":F
    :cond_35
    return-void
.end method


# virtual methods
.method protected buildConfigurationFromXml(I[F)V
    .registers 4
    .param p1, "category"  # I
    .param p2, "nits"  # [F

    .line 1249
    invoke-direct {p0, p2}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isMonotonic([F)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1250
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->buildIndividualSpline(I[F)V

    .line 1252
    :cond_9
    return-void
.end method

.method protected customCurveConditionsSatisfied()V
    .registers 3

    .line 612
    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIsCustomCurveValidReady:Z

    if-nez v0, :cond_e

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIsCustomCurveValidReady:Z

    .line 614
    const-string v0, "CbmController"

    const-string v1, "Satisfy valid conditions of custom curve."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_e
    return-void
.end method

.method protected disableCustomCurve(Z)V
    .registers 5
    .param p1, "disable"  # Z

    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, "changed":Z
    if-eqz p1, :cond_12

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveDisabledByUserChange:Z

    if-nez v1, :cond_12

    .line 532
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveDisabledByUserChange:Z

    .line 534
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 535
    const/4 v0, 0x1

    goto :goto_1c

    .line 536
    :cond_12
    if-nez p1, :cond_1c

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveDisabledByUserChange:Z

    if-eqz v1, :cond_1c

    .line 537
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveDisabledByUserChange:Z

    .line 538
    const/4 v0, 0x1

    .line 540
    :cond_1c
    :goto_1c
    if-eqz v0, :cond_3f

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveDisabledByUserChange:Z

    if-eqz v2, :cond_2a

    .line 542
    const-string v2, "disable "

    goto :goto_2c

    :cond_2a
    const-string v2, "enable "

    :goto_2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "custom curve."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 541
    const-string v2, "CbmController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_3f
    return-void
.end method

.method protected disableIndividualEngine(Z)V
    .registers 5
    .param p1, "disable"  # Z

    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "changed":Z
    if-eqz p1, :cond_c

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualDisabledByUserChange:Z

    if-nez v1, :cond_c

    .line 549
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualDisabledByUserChange:Z

    .line 550
    const/4 v0, 0x1

    goto :goto_16

    .line 551
    :cond_c
    if-nez p1, :cond_16

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualDisabledByUserChange:Z

    if-eqz v1, :cond_16

    .line 552
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualDisabledByUserChange:Z

    .line 553
    const/4 v0, 0x1

    .line 555
    :cond_16
    :goto_16
    if-eqz v0, :cond_3a

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualDisabledByUserChange:Z

    if-eqz v2, :cond_24

    .line 557
    const-string v2, "disable "

    goto :goto_26

    :cond_24
    const-string v2, "enable "

    :goto_26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "individual engine."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    const-string v2, "CbmController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_3a
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1267
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_CBM:Z

    sput-boolean v0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->sDebug:Z

    .line 1268
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    sget-boolean v1, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->sDebug:Z

    invoke-virtual {v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->forceReportTrainDataEnabled(Z)V

    .line 1269
    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mSupportCustomBrightness:Z

    if-eqz v0, :cond_ff

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCustomCurveDisabledByUserChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveDisabledByUserChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mForcedCustomCurveEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mForcedCustomCurveEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentSceneState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentCustomSceneState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDefaultConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrighteningConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDarkeningConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCustomCurveValidStateReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveValidStateReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCustomCurveValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsCustomCurveValidReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIsCustomCurveValidReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCustomCurveExperimentEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveExperimentEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1282
    :cond_ff
    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mSupportIndividualBrightness:Z

    if-eqz v0, :cond_259

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mForcedIndividualBrightnessEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mForcedIndividualBrightnessEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIndividualDisabledByUserChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualDisabledByUserChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingIndividualBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mPendingIndividualBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMinimumBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mMinimumBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIndividualModelExperimentEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualModelExperimentEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastModelTrainTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mLastModelTrainTimeStamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mModelTrainTotalTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mModelTrainTotalTimes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->dump(Ljava/io/PrintWriter;)V

    .line 1291
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmStateTracker:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->dump(Ljava/io/PrintWriter;)V

    .line 1292
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessValidationMapper:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d7

    .line 1293
    const-string v0, "  Brt validation set:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessValidationMapper:Ljava/util/Map;

    new-instance v1, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda3;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1297
    :cond_1d7
    const-string v0, " Individual Model Spline:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIndividualDefaultSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualDefaultSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIndividualGameSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualGameSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIndividualVideoSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualVideoSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUserLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUserBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1303
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDataStore:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->dump(Ljava/io/PrintWriter;)V

    .line 1305
    :cond_259
    return-void
.end method

.method public getCurrentSceneState()I
    .registers 2

    .line 1212
    iget v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentCustomSceneState:I

    return v0
.end method

.method public getCustomBrightness(FLjava/lang/String;IFFIZ)F
    .registers 14
    .param p1, "lux"  # F
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "category"  # I
    .param p4, "oldAutoBrightness"  # F
    .param p5, "newAutoBrightness"  # F
    .param p6, "orientation"  # I
    .param p7, "isManuallySet"  # Z

    .line 361
    move v0, p5

    .line 363
    .local v0, "customBrightness":F
    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmState:I

    .line 364
    .local v1, "newCbmState":I
    const/4 v2, 0x0

    .line 365
    .local v2, "notCount":Z
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isIndividualAllowed()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 366
    invoke-direct {p0, p2, p1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->getIndividualBrightness(Ljava/lang/String;F)F

    move-result v0

    .line 367
    const/4 v1, 0x2

    goto :goto_1f

    .line 368
    :cond_10
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isCustomAllowed()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 369
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result v0

    .line 370
    const/4 v1, 0x1

    goto :goto_1f

    .line 372
    :cond_1e
    const/4 v1, 0x0

    .line 375
    :goto_1f
    iget v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmState:I

    if-eq v1, v3, :cond_26

    .line 376
    invoke-direct {p0, v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->updateCbmState(I)V

    .line 382
    :cond_26
    if-nez v2, :cond_44

    if-nez p7, :cond_44

    cmpl-float v3, v0, p4

    if-eqz v3, :cond_44

    .line 384
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_44

    .line 385
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmStateTracker:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    invoke-virtual {v3, v1}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->noteAutoAdjustmentTimes(I)V

    .line 387
    move v3, v1

    .line 388
    .local v3, "finalNewCbmState":I
    iget-object v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBgHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, v3}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    .end local v3  # "finalNewCbmState":I
    :cond_44
    sget-boolean v3, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->sDebug:Z

    if-nez v3, :cond_50

    cmpl-float v3, v0, p5

    if-eqz v3, :cond_91

    cmpl-float v3, v0, p4

    if-eqz v3, :cond_91

    .line 393
    :cond_50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCustomBrightness: previous: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", custom: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", orientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CbmController"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_91
    return v0
.end method

.method protected noteBrightnessUsageToAggregate(FI)V
    .registers 4
    .param p1, "duration"  # F
    .param p2, "cbmState"  # I

    .line 1237
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateCbmBrightnessUsageDuration(FI)V

    .line 1238
    return-void
.end method

.method protected notePredictDurationToAggregate(J)V
    .registers 5
    .param p1, "duration"  # J

    .line 1245
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    long-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateModelAvgPredictDuration(F)V

    .line 1246
    return-void
.end method

.method public onAbTestExperimentUpdated(II)V
    .registers 6
    .param p1, "expId"  # I
    .param p2, "flag"  # I

    .line 762
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p2, v0, :cond_9

    .line 763
    iput-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveExperimentEnable:Z

    .line 764
    iput-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualModelExperimentEnable:Z

    goto :goto_18

    .line 766
    :cond_9
    const/4 v0, 0x0

    if-ne p2, v1, :cond_e

    move v2, v1

    goto :goto_f

    :cond_e
    move v2, v0

    :goto_f
    iput-boolean v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveExperimentEnable:Z

    .line 767
    const/4 v2, 0x2

    if-ne p2, v2, :cond_15

    goto :goto_16

    :cond_15
    move v1, v0

    :goto_16
    iput-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualModelExperimentEnable:Z

    .line 769
    :goto_18
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateExpId(I)V

    .line 770
    return-void
.end method

.method public onBootCompleted()V
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->onBootCompleted()V

    .line 355
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    return-void
.end method

.method public onBrightnessModelEvent(Lcom/xiaomi/aiautobrt/IndividualModelEvent;)V
    .registers 4
    .param p1, "modelEvent"  # Lcom/xiaomi/aiautobrt/IndividualModelEvent;

    .line 654
    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mSupportIndividualBrightness:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mAutoBrightnessModeEnabled:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_13

    .line 656
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualModelExperimentEnable:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->uploadBrightnessModelEvent(Lcom/xiaomi/aiautobrt/IndividualModelEvent;Z)V

    .line 659
    :cond_13
    return-void
.end method

.method public onCloudUpdated(JLjava/util/Map;)V
    .registers 11
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

    .line 974
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-wide/16 v0, 0x8

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 975
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mAppClassifier:Lcom/android/server/display/aiautobrt/AppClassifier;

    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/AppClassifier;->loadAppCategoryConfig()V

    .line 977
    :cond_e
    const-wide/16 v0, 0x10

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v4

    :goto_1a
    iput-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveCloudDisable:Z

    .line 978
    const-wide/16 v5, 0x20

    and-long/2addr v5, p1

    cmp-long v0, v5, v2

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v4

    :goto_25
    iput-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualModelCloudDisable:Z

    .line 979
    return-void
.end method

.method public onExperimentUpdated(IZ)V
    .registers 4
    .param p1, "expId"  # I
    .param p2, "enable"  # Z

    .line 747
    iput-boolean p2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualModelExperimentEnable:Z

    .line 748
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->updateExpId(I)V

    .line 749
    return-void
.end method

.method public onPredictFinished(FIF)V
    .registers 10
    .param p1, "lux"  # F
    .param p2, "appId"  # I
    .param p3, "brightness"  # F

    .line 664
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const-string v1, ", brt: "

    const-string v2, ", appId: "

    const-string v3, "CbmController"

    if-nez v0, :cond_61

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_12

    goto :goto_61

    .line 670
    :cond_12
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mHandler:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;->removeMessages(I)V

    .line 671
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0, p3}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result v0

    .line 672
    .local v0, "dbv":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPredictFinished: lux: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dbv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmStateTracker:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->noteIndividualResult(FIF)V

    .line 678
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmStateTracker:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->noteStopPredictTracking(J)V

    .line 679
    invoke-direct {p0, v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->updateAutoBrightness(F)V

    .line 680
    return-void

    .line 665
    .end local v0  # "dbv":F
    :cond_61
    :goto_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Predict error: lux: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return-void
.end method

.method public onTrainIndicatorsFinished(Lcom/xiaomi/aiautobrt/IndividualTrainEvent;)V
    .registers 3
    .param p1, "event"  # Lcom/xiaomi/aiautobrt/IndividualTrainEvent;

    .line 757
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateModelTrainIndicators(Lcom/xiaomi/aiautobrt/IndividualTrainEvent;)V

    .line 758
    return-void
.end method

.method public onValidatedBrightness(F)V
    .registers 8
    .param p1, "brightness"  # F

    .line 700
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mNotifyModelVerificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 701
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->isVerificationInProgress()Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    array-length v0, v0

    if-nez v0, :cond_1a

    goto/16 :goto_a7

    .line 706
    :cond_1a
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    array-length v0, v0

    new-array v0, v0, [F

    .line 707
    .local v0, "nitsArray":[F
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessValidationMapper:Ljava/util/Map;

    iget v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedCategoryId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 708
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessValidationMapper:Ljava/util/Map;

    iget v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedCategoryId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [F

    .line 710
    :cond_3c
    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedLuxIndex:I

    aput p1, v0, v1

    .line 711
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessValidationMapper:Ljava/util/Map;

    iget v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedCategoryId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedLuxIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedLuxIndex:I

    .line 713
    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedLuxIndex:I

    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    array-length v3, v3

    if-ge v1, v3, :cond_5c

    .line 714
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->uploadValidatedEventToModel()V

    goto :goto_a6

    .line 715
    :cond_5c
    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedLuxIndex:I

    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v1, v3, :cond_74

    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedCategoryId:I

    if-ge v1, v5, :cond_74

    .line 716
    iput v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedLuxIndex:I

    .line 717
    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedCategoryId:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedCategoryId:I

    .line 718
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->uploadValidatedEventToModel()V

    goto :goto_a6

    .line 719
    :cond_74
    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedLuxIndex:I

    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    array-length v3, v3

    if-ne v1, v3, :cond_a6

    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedCategoryId:I

    if-ne v1, v5, :cond_a6

    .line 720
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isMonotonicModel()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 721
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mHandler:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;

    new-instance v3, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;)V

    invoke-virtual {v1, v3}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;->post(Ljava/lang/Runnable;)Z

    .line 730
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v1, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateIndividualModelTrainTimes(Z)V

    goto :goto_a1

    .line 733
    :cond_95
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v1, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateIndividualModelTrainTimes(Z)V

    .line 734
    const-string v1, "CbmController"

    const-string v2, "Model cannot complete verification due to non-monotonicity."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :goto_a1
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-virtual {v1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->completeModelValidation()V

    .line 738
    :cond_a6
    :goto_a6
    return-void

    .line 704
    .end local v0  # "nitsArray":[F
    :cond_a7
    :goto_a7
    return-void
.end method

.method public resetShortTermModel(Z)V
    .registers 5
    .param p1, "manually"  # Z

    .line 623
    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveValid:Z

    const-string/jumbo v1, "user_operate"

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIsCustomCurveValidReady:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    .line 624
    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->isModelValid()Z

    move-result v0

    if-nez v0, :cond_22

    if-nez p1, :cond_22

    .line 626
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->setCustomCurveValid(ZLjava/lang/String;)V

    .line 627
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->resetCustomCurveValidConditions()V

    .line 628
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDataStore:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->startWrite()V

    goto :goto_4a

    .line 629
    :cond_22
    if-eqz p1, :cond_4a

    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveValid:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->isModelValid()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 630
    :cond_30
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->setCustomCurveValid(ZLjava/lang/String;)V

    .line 631
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->resetCustomCurveValidConditions()V

    .line 632
    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->setModelValid(ZLjava/lang/String;)V

    .line 633
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isValidIndividualSpline()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 634
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->resetIndividualSpline()V

    .line 636
    :cond_45
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDataStore:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->startWrite()V

    .line 638
    :cond_4a
    :goto_4a
    return-void
.end method

.method public setAutoBrightnessComponent(Lcom/android/server/display/BrightnessMappingStrategy;)V
    .registers 2
    .param p1, "mapper"  # Lcom/android/server/display/BrightnessMappingStrategy;

    .line 525
    iput-object p1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 526
    return-void
.end method

.method protected setCustomCurveEnabledFromXml(Z)V
    .registers 4
    .param p1, "enabled"  # Z

    .line 1255
    iput-boolean p1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveValid:Z

    .line 1256
    const-string v0, "backup"

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveValidStateReason:Ljava/lang/String;

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCustomCurveEnabledFromXml: custom curve is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1258
    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveValid:Z

    if-eqz v1, :cond_19

    const-string v1, " valid"

    goto :goto_1b

    :cond_19
    const-string v1, " invalid"

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " due to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveValidStateReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1257
    const-string v1, "CbmController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    return-void
.end method

.method public setCustomCurveEnabledOnCommand(Z)V
    .registers 4
    .param p1, "enable"  # Z

    .line 1185
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mContentResolver:Landroid/content/ContentResolver;

    .line 1186
    nop

    .line 1185
    const-string v1, "custom_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1187
    return-void
.end method

.method protected setCustomCurveValid(ZLjava/lang/String;)V
    .registers 7
    .param p1, "enable"  # Z
    .param p2, "reason"  # Ljava/lang/String;

    .line 1164
    const-string v0, "CbmController"

    if-eqz p1, :cond_2a

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveValid:Z

    if-nez v1, :cond_2a

    .line 1165
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveValid:Z

    .line 1166
    iput-object p2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveValidStateReason:Ljava/lang/String;

    .line 1167
    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDataStore:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    invoke-virtual {v2, v1}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->storeCustomCurveEnabled(Z)V

    .line 1168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCustomCurveValid: custom curve is valid due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 1169
    :cond_2a
    if-nez p1, :cond_5a

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveValid:Z

    if-eqz v1, :cond_5a

    .line 1170
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveValid:Z

    .line 1171
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentCustomSceneState:I

    .line 1172
    iput-object p2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveValidStateReason:Ljava/lang/String;

    .line 1174
    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerControllerImpl;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1175
    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDataStore:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    invoke-virtual {v2, v1}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->storeCustomCurveEnabled(Z)V

    .line 1176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCustomCurveValid: custom curve is invalid due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :cond_5a
    :goto_5a
    return-void
.end method

.method public setForceTrainEnabledOnCommand(Z)V
    .registers 4
    .param p1, "enable"  # Z

    .line 1195
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mContentResolver:Landroid/content/ContentResolver;

    .line 1196
    nop

    .line 1195
    const-string v1, "force_train_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1197
    return-void
.end method

.method protected setIndividualModelEnabledFromXml(Z)V
    .registers 3
    .param p1, "enabled"  # Z

    .line 1263
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->setModeValidFromXml(Z)V

    .line 1264
    return-void
.end method

.method public setIndividualModelEnabledOnCommand(Z)V
    .registers 5
    .param p1, "enable"  # Z

    .line 1190
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mContentResolver:Landroid/content/ContentResolver;

    .line 1191
    if-eqz p1, :cond_6

    const/4 v1, 0x2

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    .line 1190
    :goto_7
    const-string v2, "custom_brightness_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1192
    return-void
.end method

.method public setScreenBrightnessByUser(FFZLjava/lang/String;I)V
    .registers 12
    .param p1, "userDataPoint"  # F
    .param p2, "brightness"  # F
    .param p3, "isBrightening"  # Z
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "orientation"  # I

    .line 564
    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mSupportIndividualBrightness:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 565
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-virtual {v0, v1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->bindServiceDueToBrightnessAdjust(Z)V

    .line 568
    :cond_a
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isIndividualAllowed()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz v0, :cond_75

    .line 569
    iput p1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUserLux:F

    .line 570
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0, p2}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUserBrightness:F

    .line 571
    iget v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUserBrightness:F

    const/high16 v3, -0x40800000  # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_75

    .line 572
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mAppClassifier:Lcom/android/server/display/aiautobrt/AppClassifier;

    invoke-virtual {v0, p4}, Lcom/android/server/display/aiautobrt/AppClassifier;->getAppCategoryId(Ljava/lang/String;)I

    move-result v0

    .line 573
    .local v0, "category":I
    if-ne v0, v1, :cond_46

    .line 574
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualGameSpline:Landroid/util/Spline;

    iget v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUserLux:F

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUnAdjustBrightness:F

    .line 575
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    iget-object v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualGameNits:[F

    iget v5, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUserBrightness:F

    invoke-direct {p0, v3, v4, p1, v5}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->insertControlPoint([F[FFF)Landroid/util/Spline;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualGameSpline:Landroid/util/Spline;

    goto :goto_75

    .line 577
    :cond_46
    if-ne v0, v2, :cond_5f

    .line 578
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualVideoSpline:Landroid/util/Spline;

    iget v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUserLux:F

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUnAdjustBrightness:F

    .line 579
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    iget-object v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualVideoNits:[F

    iget v5, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUserBrightness:F

    invoke-direct {p0, v3, v4, p1, v5}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->insertControlPoint([F[FFF)Landroid/util/Spline;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualVideoSpline:Landroid/util/Spline;

    goto :goto_75

    .line 582
    :cond_5f
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualDefaultSpline:Landroid/util/Spline;

    iget v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUserLux:F

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUnAdjustBrightness:F

    .line 583
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultLuxLevels:[F

    iget-object v4, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualDefaultNits:[F

    iget v5, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUserBrightness:F

    invoke-direct {p0, v3, v4, p1, v5}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->insertControlPoint([F[FFF)Landroid/util/Spline;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentIndividualDefaultSpline:Landroid/util/Spline;

    .line 588
    .end local v0  # "category":I
    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmStateTracker:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    iget v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmState:I

    invoke-virtual {v0, v3}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->noteManualAdjustmentTimes(I)V

    .line 590
    iget v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmState:I

    .line 591
    .local v0, "finalCbmState":I
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBgHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 594
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-virtual {v3}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->isModelValid()Z

    move-result v3

    if-nez v3, :cond_c5

    iget v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmState:I

    if-nez v3, :cond_c5

    iget-boolean v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveValid:Z

    if-nez v3, :cond_c5

    iget-boolean v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIsCustomCurveValidReady:Z

    if-nez v3, :cond_c5

    iget-boolean v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCustomCurveExperimentEnable:Z

    if-eqz v3, :cond_c5

    .line 598
    invoke-direct {p0, p1, p3}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isDarkRoomAdjustment(FZ)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 599
    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmStateTracker:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    iget v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmState:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->noteManualAdjustmentTimes(II)V

    .line 601
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmStateTracker:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    invoke-virtual {v1}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->startEvaluateCustomCurve()V

    goto :goto_c5

    .line 602
    :cond_b3
    invoke-direct {p0, p1, p4, p5, p3}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isBrightRoomAdjustment(FLjava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 604
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmStateTracker:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    iget v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmState:I

    invoke-virtual {v1, v3, v2}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->noteManualAdjustmentTimes(II)V

    .line 606
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmStateTracker:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    invoke-virtual {v1}, Lcom/android/server/display/aiautobrt/CbmStateTracker;->startEvaluateCustomCurve()V

    .line 609
    :cond_c5
    :goto_c5
    return-void
.end method

.method public smoothNewCurve([F[FI)Z
    .registers 8
    .param p1, "lux"  # [F
    .param p2, "brightness"  # [F
    .param p3, "idx"  # I

    .line 916
    sget-boolean v0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->sDebug:Z

    if-eqz v0, :cond_37

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, p2, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unAdjustedBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUnAdjustBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CbmController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_37
    add-int/lit8 v0, p3, 0x1

    .local v0, "i":I
    :goto_39
    array-length v1, p1

    if-ge v0, v1, :cond_55

    .line 921
    aget v1, p2, v0

    iget v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUnAdjustBrightness:F

    aget v3, p2, p3

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 922
    aget v1, p2, v0

    add-int/lit8 v2, v0, -0x1

    aget v2, p2, v2

    invoke-static {v1, v2}, Landroid/util/MathUtils;->max(FF)F

    move-result v1

    aput v1, p2, v0

    .line 920
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 924
    .end local v0  # "i":I
    :cond_55
    add-int/lit8 v0, p3, -0x1

    .restart local v0  # "i":I
    :goto_57
    if-ltz v0, :cond_78

    .line 925
    aget v1, p2, v0

    iget v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUnAdjustBrightness:F

    aget v3, p2, p3

    sub-float/2addr v2, v3

    aget v3, p2, v0

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mUnAdjustBrightness:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 927
    aget v1, p2, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p2, v2

    invoke-static {v1, v2}, Landroid/util/MathUtils;->min(FF)F

    move-result v1

    aput v1, p2, v0

    .line 924
    add-int/lit8 v0, v0, -0x1

    goto :goto_57

    .line 929
    .end local v0  # "i":I
    :cond_78
    const/4 v0, 0x1

    return v0
.end method

.method public startCbmStatsJob()V
    .registers 4

    .line 1181
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCbmStateTracker:Lcom/android/server/display/aiautobrt/CbmStateTracker;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/aiautobrt/CbmStateTracker;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1182
    return-void
.end method

.method public updateCbmState(Z)V
    .registers 3
    .param p1, "autoBrightnessEnabled"  # Z

    .line 1051
    if-nez p1, :cond_6

    .line 1052
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->updateCbmState(I)V

    .line 1054
    :cond_6
    return-void
.end method

.method public updateCustomSceneState(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "orientation"  # I

    .line 441
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->isCustomAllowed()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 442
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->hasSceneStateChanged(Ljava/lang/String;I)Z

    move-result v0

    .line 443
    .local v0, "changed":Z
    if-eqz v0, :cond_40

    .line 445
    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentCustomSceneState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 446
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrighteningConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    .local v1, "config":Landroid/hardware/display/BrightnessConfiguration;
    goto :goto_1e

    .line 447
    .end local v1  # "config":Landroid/hardware/display/BrightnessConfiguration;
    :cond_14
    iget v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCurrentCustomSceneState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    .line 448
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDarkeningConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    .restart local v1  # "config":Landroid/hardware/display/BrightnessConfiguration;
    goto :goto_1e

    .line 450
    .end local v1  # "config":Landroid/hardware/display/BrightnessConfiguration;
    :cond_1c
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDefaultConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    .line 452
    .restart local v1  # "config":Landroid/hardware/display/BrightnessConfiguration;
    :goto_1e
    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCustomSceneState: config changed, config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/display/BrightnessConfiguration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CbmController"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .end local v0  # "changed":Z
    .end local v1  # "config":Landroid/hardware/display/BrightnessConfiguration;
    :cond_40
    return-void
.end method

.method protected updateModelValid(IF)V
    .registers 9
    .param p1, "type"  # I
    .param p2, "ratio"  # F

    .line 1144
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 1145
    .local v2, "customCurveValid":Z
    :goto_7
    const/4 v3, 0x2

    if-ne p1, v3, :cond_c

    move v3, v1

    goto :goto_d

    :cond_c
    move v3, v0

    .line 1146
    .local v3, "IndividualModelValid":Z
    :goto_d
    if-nez p1, :cond_10

    goto :goto_11

    :cond_10
    move v1, v0

    .line 1147
    .local v1, "defaultValid":Z
    :goto_11
    const-string v4, "best_indicator"

    invoke-virtual {p0, v2, v4}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->setCustomCurveValid(ZLjava/lang/String;)V

    .line 1148
    iget-object v5, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mIndividualBrightnessEngine:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->setModelValid(ZLjava/lang/String;)V

    .line 1149
    if-nez v2, :cond_1f

    if-eqz v3, :cond_22

    .line 1150
    :cond_1f
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->resetCustomCurveValidConditions()V

    .line 1152
    :cond_22
    if-eqz v3, :cond_27

    .line 1153
    invoke-virtual {p0, v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->disableIndividualEngine(Z)V

    .line 1155
    :cond_27
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mDataStore:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->startWrite()V

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateModelValid: custom valid: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", individual model valid: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", default valid: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", best ratio: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "CbmController"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    return-void
.end method

.method public validateModelMonotonicity()V
    .registers 5

    .line 684
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedCategoryId:I

    .line 685
    iput v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mCachedLuxIndex:I

    .line 686
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessValidationMapper:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 687
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->uploadValidatedEventToModel()V

    .line 688
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mLastModelTrainTimeStamp:J

    .line 689
    iget-wide v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mModelTrainTotalTimes:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mModelTrainTotalTimes:J

    .line 691
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->mBrightnessDataProcessor:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-virtual {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateIndividualModelTrainTimes()V

    .line 692
    return-void
.end method
