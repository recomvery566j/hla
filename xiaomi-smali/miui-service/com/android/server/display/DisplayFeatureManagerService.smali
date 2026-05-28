# classes.dex

.class public Lcom/android/server/display/DisplayFeatureManagerService;
.super Lcom/android/server/SystemService;
.source "DisplayFeatureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;,
        Lcom/android/server/display/DisplayFeatureManagerService$LocalService;,
        Lcom/android/server/display/DisplayFeatureManagerService$BinderService;,
        Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;,
        Lcom/android/server/display/DisplayFeatureManagerService$UserSwitchReceiver;,
        Lcom/android/server/display/DisplayFeatureManagerService$PaperModeAnimatListener;,
        Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;,
        Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;,
        Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;
    }
.end annotation


# static fields
.field private static final AIDL_SERVICENAME_DEFAULT:Ljava/lang/String; = "vendor.xiaomi.hardware.displayfeature_aidl.IDisplayFeature/default"

.field private static final AUTHORITY:Ljava/lang/String; = "content://com.android.settings.display.newpapermode.ReadingAppProvider/packages"

.field public static BRIGHTNESS_THROTTLER_STATUS:Ljava/lang/String; = null

.field private static final CLASSIC_READING_MODE:I = 0x0

.field private static final CONFIG_SERVICENAME_RESOURCEID:I

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final EXTERNAL_DISPLAY_CONNECTED:I = 0x1

.field private static final EYECARE_MAX_LEVEL:I

.field private static final EYECARE_MIN_LEVEL:I

.field private static final EYECARE_RGB_DISPLAY:I = 0x3e8

.field private static final FLAG_REGISTER_CALL_BACK:I = 0x2

.field private static final FLAG_SET_SCREEN_EFFECT:I = 0x0

.field private static final FLAG_SET_VIEDEO_INFOMATION:I = 0x1

.field private static final FPS_SWITCH_DEFAULT:Z

.field private static final HIDL_SERVICENAME_DEFAULT:Ljava/lang/String; = "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeature"

.field private static final IPA_INFO_GRAY_DISPLAY:I = 0x3e9

.field private static final IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

.field private static final IS_GREEN_MOUNTAIN_EYECARE_V3:Z

.field private static final MIMOTION_DEFAULT_DIMMING_MODE:I

.field public static final MIMOTION_PWM_ENABLE:Ljava/lang/String; = "mimotion_pwm_enable"

.field private static final MIMOTION_PWM_SUPPORTED:Z

.field private static final MSG_HDR_LUTID:I = 0x32

.field private static final MSG_SDR_TO_HDR:I = 0x16

.field private static final MSG_SEND_HBM_STATE:I = 0x1e

.field private static final MSG_SEND_MURA_STATE:I = 0x28

.field private static final MSG_SET_COLOR_MODE:I = 0xd

.field private static final MSG_SET_CURRENT_GRAY_VALUE:I = 0x4

.field private static final MSG_SET_CURRENT_GRAY_VALUE_FOR_IPA:I = 0x5

.field private static final MSG_SET_DC_PARSE_STATE:I = 0xe

.field private static final MSG_SET_GRAY_VALUE:I = 0x3

.field private static final MSG_SET_PAPER_COLOR_TYPE:I = 0x10

.field private static final MSG_SET_SECONDARY_FRAME_RATE:I = 0xf

.field private static final MSG_UPDATE_COLOR_SCHEME:I = 0x2

.field private static final MSG_UPDATE_DFPS_MODE:I = 0xb

.field private static final MSG_UPDATE_EXPERT_MODE:I = 0xc

.field private static final MSG_UPDATE_HDR_STATE:I = 0x14

.field private static final MSG_UPDATE_PCC_LEVEL:I = 0x7

.field private static final MSG_UPDATE_READING_MODE:I = 0x1

.field private static final MSG_UPDATE_SMART_DFPS_MODE:I = 0x11

.field private static final MSG_UPDATE_TRUETONE:I = 0x13

.field private static final MSG_UPDATE_UNLIMITED_COLOR_LEVEL:I = 0x8

.field private static final MSG_UPDATE_USERCHANGE:I = 0x15

.field private static final MSG_UPDATE_WCG_STATE:I = 0x6

.field private static final NEW_CLASSIC_READING_MODE:I = 0x3

.field private static final PAPER_MODE_MIN_LEVEL:F

.field private static final PAPER_READING_MODE:I = 0x1

.field private static final PERSISTENT_PROPERTY_DISPLAY_COLOR:Ljava/lang/String; = "persist.sys.sf.native_mode"

.field private static final RHYTHMIC_READING_MODE:I = 0x2

.field private static final SCREEN_DEFAULT_FPS:I

.field private static final SUPPORT_DISPLAY_EXPERT_MODE:Z

.field private static final SUPPORT_MULTIPLE_AOD_BRIGHTNESS:Z

.field private static final SUPPORT_SET_FEATURE:Z

.field private static final SUPPORT_UNLIMITED_COLOR_MODE:Z

.field private static final SURFACE_FLINGER:Ljava/lang/String; = "SurfaceFlinger"

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE:I = 0x797c

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE_DC_PARSE_STATE:I = 0x793c

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE_DFPS:I = 0x793b

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE_FPS_VIDEO_INFO:I = 0x798c

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE_FULL_SCREEN_AOD:I = 0x7990

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE_PCC:I = 0x797d

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE_SDR2HDR:I = 0x84d0

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE_SECONDARY_FRAME_RATE:I = 0x7991

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE_SET_MODE:I = 0x792f

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE_SMART_DFPS:I = 0x793d

.field private static final TABLE_NAME:Ljava/lang/String; = "packages"

.field private static final TAG:Ljava/lang/String; = "DisplayFeatureManagerService"

.field private static final TEMP_PAPER_MODE_LEVEL:I = -0x1

.field private static final THREAD_TAG:Ljava/lang/String; = "DisplayFeatureThread"


# instance fields
.field private mAmInternal:Landroid/app/ActivityManagerInternal;

.field private mAutoAdjustEnable:Z

.field private mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mBootCompleted:Z

.field private mClientDeathCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mColorSchemeCTLevel:I

.field private mColorSchemeModeType:I

.field private mContext:Landroid/content/Context;

.field private mCurrentDisplayid:I

.field private mCurrentDisplayidForIPA:I

.field private mCurrentGrayScale:F

.field private mCurrentGrayScaleForIPA:F

.field private mDFCallback:Lmiui/hardware/display/IDisplayFeatureCallback;

.field private mDeskTopModeEnabled:Z

.field private mDisableEyeCareNotification:Z

.field private final mDisplayFeatureCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmiui/hardware/display/IDisplayFeatureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayFeatureServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDisplayState:I

.field private mDolbyState:Z

.field private mEffectScopeAppListObserver:Landroid/database/ContentObserver;

.field private mEffectScopeManager:Lcom/android/server/display/eyecare/EffectScopeManager;

.field private final mEnteredReadAppScopeListener:Lcom/android/server/display/eyecare/EffectScopeManager$EnteredReadAppScopeListener;

.field private mExternalDisplayConnected:Z

.field private mEyeCareEffect:Z

.field private mEyeCareIsEnteredEffect:Z

.field private mEyeCareIsNotFirstOpen:Z

.field private mEyeCareScope:I

.field private mEyeCareTimerEnabled:Z

.field private mForceDisableEyeCare:Z

.field private mGameHdrEnabled:Z

.field private mGrayScale:F

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHwBinderDeathHandler:Landroid/os/IHwBinder$DeathRecipient;

.field private final mIsFoldOrFlip:Z

.field private final mIsIndependentRear:Z

.field private mIsPopUpEnabled:Z

.field public mLocalService:Lcom/android/server/display/DisplayFeatureManagerInternal;

.field private final mLock:Ljava/lang/Object;

.field private mMaxDozeBrightnessInt:I

.field private mMinDozeBrightnessInt:I

.field private mMinimumBrightnessInt:I

.field private mNotifyPopUpManager:Lcom/android/server/display/eyecare/NotifyPopUpManager;

.field private mPaperColorType:I

.field private mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

.field private mPaperModeMinRate:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReadingModeCTLevel:I

.field private mReadingModeCTLevelEffect:Z

.field private mReadingModeEnabled:Z

.field private mReadingModeType:I

.field private mResolver:Landroid/content/ContentResolver;

.field private final mRhythmicEyeCareListener:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$RhythmicEyeCareListener;

.field private mRhythmicEyeCareManager:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

.field private mScreenEyecareNeedUpdate:Z

.field private mSettingsObserver:Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;

.field private mTempRGBParams:[Ljava/lang/Object;

.field private mTrueToneModeEnabled:I

.field private mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;


# direct methods
.method public static synthetic $r8$lambda$hsn3qMj170pSUSYB9dJ6gPd6-Yw(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->lambda$registerDFCallbackInternal$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAmInternal(Lcom/android/server/display/DisplayFeatureManagerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoAdjustEnable(Lcom/android/server/display/DisplayFeatureManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mAutoAdjustEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBootCompleted(Lcom/android/server/display/DisplayFeatureManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mBootCompleted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientDeathCallbacks(Lcom/android/server/display/DisplayFeatureManagerService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mClientDeathCallbacks:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/DisplayFeatureManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayState(Lcom/android/server/display/DisplayFeatureManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDolbyState(Lcom/android/server/display/DisplayFeatureManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDolbyState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEffectScopeManager(Lcom/android/server/display/DisplayFeatureManagerService;)Lcom/android/server/display/eyecare/EffectScopeManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEffectScopeManager:Lcom/android/server/display/eyecare/EffectScopeManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEyeCareEffect(Lcom/android/server/display/DisplayFeatureManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEyeCareIsEnteredEffect(Lcom/android/server/display/DisplayFeatureManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareIsEnteredEffect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEyeCareIsNotFirstOpen(Lcom/android/server/display/DisplayFeatureManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareIsNotFirstOpen:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/DisplayFeatureManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPopUpEnabled(Lcom/android/server/display/DisplayFeatureManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mIsPopUpEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/display/DisplayFeatureManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotifyPopUpManager(Lcom/android/server/display/DisplayFeatureManagerService;)Lcom/android/server/display/eyecare/NotifyPopUpManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mNotifyPopUpManager:Lcom/android/server/display/eyecare/NotifyPopUpManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPaperModeAnimator(Lcom/android/server/display/DisplayFeatureManagerService;)Lcom/android/server/display/MiuiRampAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReadingModeEnabled(Lcom/android/server/display/DisplayFeatureManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReadingModeType(Lcom/android/server/display/DisplayFeatureManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmResolver(Lcom/android/server/display/DisplayFeatureManagerService;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRhythmicEyeCareManager(Lcom/android/server/display/DisplayFeatureManagerService;)Lcom/android/server/display/eyecare/RhythmicEyeCareManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mRhythmicEyeCareManager:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentGrayScale(Lcom/android/server/display/DisplayFeatureManagerService;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mCurrentGrayScale:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentGrayScaleForIPA(Lcom/android/server/display/DisplayFeatureManagerService;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mCurrentGrayScaleForIPA:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDisplayState(Lcom/android/server/display/DisplayFeatureManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDolbyState(Lcom/android/server/display/DisplayFeatureManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDolbyState:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEyeCareIsEnteredEffect(Lcom/android/server/display/DisplayFeatureManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareIsEnteredEffect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGrayScale(Lcom/android/server/display/DisplayFeatureManagerService;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mGrayScale:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsPopUpEnabled(Lcom/android/server/display/DisplayFeatureManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mIsPopUpEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScreenEyecareNeedUpdate(Lcom/android/server/display/DisplayFeatureManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mScreenEyecareNeedUpdate:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWrapper(Lcom/android/server/display/DisplayFeatureManagerService;Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoDieLocked(Lcom/android/server/display/DisplayFeatureManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->doDieLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/display/DisplayFeatureManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAutoAdjustChange(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->handleAutoAdjustChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDisplayFeatureInfoChanged(Lcom/android/server/display/DisplayFeatureManagerService;I[Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerService;->handleDisplayFeatureInfoChanged(I[Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleGameModeChange(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->handleGameModeChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleIPAGrayScaleReport(Lcom/android/server/display/DisplayFeatureManagerService;I[Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerService;->handleIPAGrayScaleReport(I[Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleReadingModeChange(Lcom/android/server/display/DisplayFeatureManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->handleReadingModeChange(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleScreenSchemeChange(Lcom/android/server/display/DisplayFeatureManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->handleScreenSchemeChange(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleShowEyeCareNotifyChange(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->handleShowEyeCareNotifyChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTrueToneModeChange(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->handleTrueToneModeChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUnlimitedColorLevelChange(Lcom/android/server/display/DisplayFeatureManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->handleUnlimitedColorLevelChange(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misCallingSystemApp(Lcom/android/server/display/DisplayFeatureManagerService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->isCallingSystemApp()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSupportSmartEyeCare(Lcom/android/server/display/DisplayFeatureManagerService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->isSupportSmartEyeCare()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mloadSettings(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->loadSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCallBackPccLevel(Lcom/android/server/display/DisplayFeatureManagerService;IIFFF)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/DisplayFeatureManagerService;->notifyCallBackPccLevel(IIFFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCurrentGrayScaleChanged(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->notifyCurrentGrayScaleChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCurrentGrayScaleChangedForIPA(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->notifyCurrentGrayScaleChangedForIPA()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyGrayScaleChanged(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->notifyGrayScaleChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyHdrStateChanged(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->notifyHdrStateChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySFColorMode(Lcom/android/server/display/DisplayFeatureManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->notifySFColorMode(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySFDCParseState(Lcom/android/server/display/DisplayFeatureManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->notifySFDCParseState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySFDfpsMode(Lcom/android/server/display/DisplayFeatureManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerService;->notifySFDfpsMode(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySFPccLevel(Lcom/android/server/display/DisplayFeatureManagerService;IFFF)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayFeatureManagerService;->notifySFPccLevel(IFFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySFSecondaryFrameRate(Lcom/android/server/display/DisplayFeatureManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->notifySFSecondaryFrameRate(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySFWcgState(Lcom/android/server/display/DisplayFeatureManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->notifySFWcgState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterDFCallbackInternal(Lcom/android/server/display/DisplayFeatureManagerService;Lmiui/hardware/display/IDisplayFeatureCallback;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerService;->registerDFCallbackInternal(Lmiui/hardware/display/IDisplayFeatureCallback;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendHbmState(Lcom/android/server/display/DisplayFeatureManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->sendHbmState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendMuraState(Lcom/android/server/display/DisplayFeatureManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->sendMuraState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDeathCallbackLocked(Lcom/android/server/display/DisplayFeatureManagerService;Landroid/os/IBinder;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayFeatureManagerService;->setDeathCallbackLocked(Landroid/os/IBinder;IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetExpertScreenMode(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->setExpertScreenMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFullAodState(Lcom/android/server/display/DisplayFeatureManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerService;->setFullAodState(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPaperColors(Lcom/android/server/display/DisplayFeatureManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->setPaperColors(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRhythmicColor(Lcom/android/server/display/DisplayFeatureManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerService;->setRhythmicColor(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSDR2HDR(Lcom/android/server/display/DisplayFeatureManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->setSDR2HDR(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetScreenEffect(Lcom/android/server/display/DisplayFeatureManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffect(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetScreenEffectAll(Lcom/android/server/display/DisplayFeatureManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffectAll(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetScreenEffectColor(Lcom/android/server/display/DisplayFeatureManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffectColor(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetScreenEffectInternal(Lcom/android/server/display/DisplayFeatureManagerService;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffectInternal(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterDFCallbackInternal(Lcom/android/server/display/DisplayFeatureManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->unregisterDFCallbackInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAutoAdjustEnable(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateAutoAdjustEnable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateColorSchemeCTLevel(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateColorSchemeCTLevel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateColorSchemeModeType(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateColorSchemeModeType()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDeskTopMode(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateDeskTopMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateExternalDisplayConnectConfig(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateExternalDisplayConnectConfig()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEyeCareScope(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateEyeCareScope()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEyeCareTimerEnable(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateEyeCareTimerEnable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePaperColorType(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updatePaperColorType()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePaperMode(Lcom/android/server/display/DisplayFeatureManagerService;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerService;->updatePaperMode(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateReadingModeCTLevel(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateReadingModeCTLevel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateReadingModeEnable(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateReadingModeEnable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateReadingModeType(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateReadingModeType()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateShowEyeCareNotifyEnable(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateShowEyeCareNotifyEnable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTrueToneModeEnable(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateTrueToneModeEnable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateVideoInformationIfNeeded(Lcom/android/server/display/DisplayFeatureManagerService;IZFIIFLandroid/os/IBinder;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/display/DisplayFeatureManagerService;->updateVideoInformationIfNeeded(IZFIIFLandroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetCONTENT_URI()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/server/display/DisplayFeatureManagerService;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetEYECARE_MAX_LEVEL()I
    .registers 1

    sget v0, Lcom/android/server/display/DisplayFeatureManagerService;->EYECARE_MAX_LEVEL:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetEYECARE_MIN_LEVEL()I
    .registers 1

    sget v0, Lcom/android/server/display/DisplayFeatureManagerService;->EYECARE_MIN_LEVEL:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetIS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetIS_GREEN_MOUNTAIN_EYECARE_V3()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetSUPPORT_UNLIMITED_COLOR_MODE()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->SUPPORT_UNLIMITED_COLOR_MODE:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 144
    nop

    .line 145
    const-string/jumbo v0, "is_compatible_paper_and_screen_effect"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

    .line 149
    nop

    .line 150
    const-string/jumbo v0, "paper_mode_min_level"

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/android/server/display/DisplayFeatureManagerService;->PAPER_MODE_MIN_LEVEL:F

    .line 154
    sget-boolean v0, Landroid/provider/MiuiSettings$ScreenEffect;->SUPPORT_UNLIMITED_COLOR_MODE:Z

    sput-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->SUPPORT_UNLIMITED_COLOR_MODE:Z

    .line 157
    sget-boolean v0, Lcom/android/server/display/expertmode/ExpertData;->SUPPORT_DISPLAY_EXPERT_MODE:Z

    sput-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->SUPPORT_DISPLAY_EXPERT_MODE:Z

    .line 160
    nop

    .line 161
    const-string v0, "defaultFps"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/display/DisplayFeatureManagerService;->SCREEN_DEFAULT_FPS:I

    .line 162
    nop

    .line 163
    const-string/jumbo v0, "ro.vendor.fps.switch.default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->FPS_SWITCH_DEFAULT:Z

    .line 168
    const-string/jumbo v0, "ro.display.dimming_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "pwm"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_49

    const/4 v0, 0x2

    goto :goto_4a

    :cond_49
    move v0, v2

    :goto_4a
    sput v0, Lcom/android/server/display/DisplayFeatureManagerService;->MIMOTION_DEFAULT_DIMMING_MODE:I

    .line 170
    nop

    .line 171
    const-string/jumbo v0, "ro.display.enable_pwm_switch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->MIMOTION_PWM_SUPPORTED:Z

    .line 175
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x110b004b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_66

    move v0, v2

    goto :goto_67

    :cond_66
    move v0, v1

    :goto_67
    sput-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    .line 229
    const-string v0, "brightness_throttler_status"

    sput-object v0, Lcom/android/server/display/DisplayFeatureManagerService;->BRIGHTNESS_THROTTLER_STATUS:Ljava/lang/String;

    .line 256
    nop

    .line 257
    const-string/jumbo v0, "support_screen_effect"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->SUPPORT_SET_FEATURE:Z

    .line 263
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v2, "string"

    const-string v3, "android"

    const-string v4, "config_displayFeatureHidlServiceName"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/display/DisplayFeatureManagerService;->CONFIG_SERVICENAME_RESOURCEID:I

    .line 267
    nop

    .line 268
    const-string/jumbo v0, "ro.vendor.aod.brightness.cust"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->SUPPORT_MULTIPLE_AOD_BRIGHTNESS:Z

    .line 273
    const-string/jumbo v0, "paper_eyecare_max_texture"

    const/16 v2, 0x19

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/display/DisplayFeatureManagerService;->EYECARE_MAX_LEVEL:I

    .line 274
    const-string/jumbo v0, "paper_eyecare_min_texture"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/display/DisplayFeatureManagerService;->EYECARE_MIN_LEVEL:I

    .line 277
    const-string v0, "content://com.android.settings.display.newpapermode.ReadingAppProvider/packages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/DisplayFeatureManagerService;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 326
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayState:I

    .line 211
    iput v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mCurrentDisplayid:I

    .line 212
    iput v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mCurrentDisplayidForIPA:I

    .line 219
    const/high16 v1, 0x7fc00000  # Float.NaN

    iput v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mGrayScale:F

    .line 222
    iput v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mCurrentGrayScale:F

    .line 223
    iput v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mCurrentGrayScaleForIPA:F

    .line 237
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mClientDeathCallbacks:Ljava/util/HashMap;

    .line 242
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mLock:Ljava/lang/Object;

    .line 243
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 244
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFoldDeviceInside()Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_2f

    :cond_2d
    move v1, v0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v1, 0x1

    :goto_30
    iput-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mIsFoldOrFlip:Z

    .line 245
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isIndependentRearDevice()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mIsIndependentRear:Z

    .line 253
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayFeatureCallbacks:Landroid/util/SparseArray;

    .line 286
    iput-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisableEyeCareNotification:Z

    .line 287
    iput-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareTimerEnabled:Z

    .line 289
    iput-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareIsNotFirstOpen:Z

    .line 290
    iput-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    .line 291
    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    iput-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevelEffect:Z

    .line 292
    iput-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareIsEnteredEffect:Z

    .line 293
    iput v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareScope:I

    .line 298
    iput-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mScreenEyecareNeedUpdate:Z

    .line 300
    iput-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mIsPopUpEnabled:Z

    .line 302
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayFeatureManagerService$1;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mRhythmicEyeCareListener:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$RhythmicEyeCareListener;

    .line 310
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayFeatureManagerService$2;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEnteredReadAppScopeListener:Lcom/android/server/display/eyecare/EffectScopeManager$EnteredReadAppScopeListener;

    .line 327
    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mContext:Landroid/content/Context;

    .line 328
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 329
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DisplayFeatureThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 330
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 331
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 332
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    .line 333
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 334
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mMinimumBrightnessInt:I

    .line 335
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 336
    new-instance v0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mRhythmicEyeCareManager:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    .line 337
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mRhythmicEyeCareManager:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mRhythmicEyeCareListener:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$RhythmicEyeCareListener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->setRhythmicEyeCareListener(Lcom/android/server/display/eyecare/RhythmicEyeCareManager$RhythmicEyeCareListener;)V

    .line 338
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v0, :cond_e6

    .line 339
    new-instance v0, Lcom/android/server/display/eyecare/NotifyPopUpManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/eyecare/NotifyPopUpManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mNotifyPopUpManager:Lcom/android/server/display/eyecare/NotifyPopUpManager;

    .line 340
    new-instance v0, Lcom/android/server/display/eyecare/EffectScopeManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/eyecare/EffectScopeManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEffectScopeManager:Lcom/android/server/display/eyecare/EffectScopeManager;

    .line 341
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEffectScopeManager:Lcom/android/server/display/eyecare/EffectScopeManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEnteredReadAppScopeListener:Lcom/android/server/display/eyecare/EffectScopeManager$EnteredReadAppScopeListener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/eyecare/EffectScopeManager;->registerEnteredReadAppScopeListener(Lcom/android/server/display/eyecare/EffectScopeManager$EnteredReadAppScopeListener;)V

    .line 344
    :cond_e6
    nop

    .line 345
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayFeatureManagerServiceStub;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayFeatureServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    .line 346
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->initServiceDeathRecipient()V

    .line 347
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_f5
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->initWrapperLocked()V

    .line 349
    monitor-exit v0

    .line 350
    return-void

    .line 349
    :catchall_fa
    move-exception v1

    monitor-exit v0
    :try_end_fc
    .catchall {:try_start_f5 .. :try_end_fc} :catchall_fa

    throw v1
.end method

.method private doDieLocked(I)V
    .registers 9
    .param p1, "flag"  # I

    .line 1461
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 1462
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/DisplayFeatureManagerService;->notifySFVideoInformation(ZFIIF)V

    .line 1464
    :cond_c
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 2349
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2350
    const-string v0, "DisplayFeatureManagerService:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReadingModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReadingModeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReadingModeCTLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorSchemeModeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mColorSchemeModeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorSchemeCTLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mColorSchemeCTLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mGameHdrEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mGameHdrEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mForceDisableEyeCare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mForceDisableEyeCare:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoAdjustEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mAutoAdjustEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPaperColorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mPaperColorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mGrayScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mGrayScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentGrayScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mCurrentGrayScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDolbyState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDolbyState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBootCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mBootCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  IS_GREEN_MOUNTAIN_EYECARE_V3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2366
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v0, :cond_226

    .line 2367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisableEyeCareNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisableEyeCareNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEyeCareTimerEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareTimerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDeskTopModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDeskTopModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEyeCareIsNotFirstOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareIsNotFirstOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEyeCareEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEyeCareIsEnteredEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareIsEnteredEffect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEyeCareScope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2375
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEffectScopeManager:Lcom/android/server/display/eyecare/EffectScopeManager;

    invoke-virtual {v0, p1}, Lcom/android/server/display/eyecare/EffectScopeManager;->dump(Ljava/io/PrintWriter;)V

    .line 2376
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mNotifyPopUpManager:Lcom/android/server/display/eyecare/NotifyPopUpManager;

    invoke-virtual {v0, p1}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->dump(Ljava/io/PrintWriter;)V

    .line 2378
    :cond_226
    return-void
.end method

.method private getEffectedDisplayIndex(J)I
    .registers 9
    .param p1, "physicalDisplayId"  # J

    .line 769
    const/4 v0, 0x0

    .line 770
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mIsFoldOrFlip:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mIsIndependentRear:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mExternalDisplayConnected:Z

    if-eqz v1, :cond_3d

    .line 771
    :cond_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 772
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 774
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_15
    const-string v3, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 776
    const-string v3, "display"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 777
    .local v3, "b":Landroid/os/IBinder;
    const v4, 0xfffffb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 778
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2e} :catch_38
    .catchall {:try_start_15 .. :try_end_2e} :catchall_36

    move v0, v4

    .line 782
    .end local v3  # "b":Landroid/os/IBinder;
    :goto_2f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 784
    goto :goto_3d

    .line 782
    :catchall_36
    move-exception v3

    goto :goto_3e

    .line 779
    :catch_38
    move-exception v3

    .line 780
    .local v3, "e":Ljava/lang/Exception;
    :try_start_39
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_36

    .end local v3  # "e":Ljava/lang/Exception;
    goto :goto_2f

    .line 786
    .end local v1  # "data":Landroid/os/Parcel;
    .end local v2  # "reply":Landroid/os/Parcel;
    :cond_3d
    :goto_3d
    return v0

    .line 782
    .restart local v1  # "data":Landroid/os/Parcel;
    .restart local v2  # "reply":Landroid/os/Parcel;
    :goto_3e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 784
    throw v3
.end method

.method private getEffectedDisplayIndex()[I
    .registers 7

    .line 747
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    .line 748
    .local v1, "result":[I
    iget-boolean v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mIsFoldOrFlip:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mIsIndependentRear:Z

    if-eqz v2, :cond_3e

    .line 749
    :cond_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 750
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 752
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_15
    const-string v4, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 753
    const-string v4, "display"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 754
    .local v4, "b":Landroid/os/IBinder;
    const v5, 0xfffffc

    invoke-interface {v4, v5, v2, v3, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 755
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 756
    .local v0, "count":I
    new-array v5, v0, [I

    move-object v1, v5

    .line 757
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_30} :catch_33
    .catchall {:try_start_15 .. :try_end_30} :catchall_31

    .end local v0  # "count":I
    .end local v4  # "b":Landroid/os/IBinder;
    goto :goto_37

    .line 761
    :catchall_31
    move-exception v0

    goto :goto_3f

    .line 758
    :catch_33
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/Exception;
    :try_start_34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_31

    .line 761
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_37
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 762
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 763
    nop

    .line 765
    .end local v2  # "data":Landroid/os/Parcel;
    .end local v3  # "reply":Landroid/os/Parcel;
    :cond_3e
    return-object v1

    .line 761
    .restart local v2  # "data":Landroid/os/Parcel;
    .restart local v3  # "reply":Landroid/os/Parcel;
    :goto_3f
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 762
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 763
    throw v0
.end method

.method private getExpertData(Landroid/content/Context;)Lcom/android/server/display/expertmode/ExpertData;
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 2198
    invoke-static {p1}, Lcom/android/server/display/expertmode/ExpertData;->getFromDatabase(Landroid/content/Context;)Lcom/android/server/display/expertmode/ExpertData;

    move-result-object v0

    .line 2200
    .local v0, "data":Lcom/android/server/display/expertmode/ExpertData;
    if-nez v0, :cond_a

    .line 2201
    invoke-static {}, Lcom/android/server/display/expertmode/ExpertData;->getDefaultValue()Lcom/android/server/display/expertmode/ExpertData;

    move-result-object v0

    .line 2203
    :cond_a
    return-object v0
.end method

.method private getMimotionDimmingMode()I
    .registers 4

    .line 1880
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "mimotion_pwm_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1881
    .local v0, "miMotionPwmEnable":I
    if-eqz v0, :cond_e

    move v1, v0

    goto :goto_10

    :cond_e
    sget v1, Lcom/android/server/display/DisplayFeatureManagerService;->MIMOTION_DEFAULT_DIMMING_MODE:I

    .line 1882
    .local v1, "mChooseDimmingMode":I
    :goto_10
    return v1
.end method

.method private getScreenDpiMode()I
    .registers 3

    .line 642
    const-string/jumbo v0, "persist.vendor.dfps.level"

    sget v1, Lcom/android/server/display/DisplayFeatureManagerService;->SCREEN_DEFAULT_FPS:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleAutoAdjustChange()V
    .registers 3

    .line 1748
    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mAutoAdjustEnable:Z

    if-eqz v0, :cond_b

    .line 1749
    const/4 v0, 0x3

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffect(II)V

    goto :goto_12

    .line 1752
    :cond_b
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateReadingModeCTLevel()V

    .line 1753
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->updatePaperMode(ZZ)V

    .line 1755
    :goto_12
    return-void
.end method

.method private varargs handleDisplayFeatureInfoChanged(I[Ljava/lang/Object;)V
    .registers 12
    .param p1, "caseId"  # I
    .param p2, "params"  # [Ljava/lang/Object;

    .line 555
    array-length v0, p2

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v0, :cond_142

    .line 556
    const/16 v0, 0x2710

    if-ne p1, v0, :cond_1e

    .line 557
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    aget-object v6, p2, v5

    check-cast v6, Ljava/lang/Integer;

    .line 558
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 557
    const/4 v7, 0x6

    invoke-virtual {v0, v7, v6, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 560
    :cond_1e
    const/16 v0, 0x2733

    if-ne p1, v0, :cond_35

    .line 561
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    aget-object v6, p2, v5

    check-cast v6, Ljava/lang/Integer;

    .line 562
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 561
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v6, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 562
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 564
    :cond_35
    const/16 v0, 0x2735

    if-ne p1, v0, :cond_4c

    .line 565
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    aget-object v6, p2, v5

    check-cast v6, Ljava/lang/Integer;

    .line 566
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 565
    const/16 v7, 0x11

    invoke-virtual {v0, v7, v6, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 566
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 568
    :cond_4c
    if-nez p1, :cond_5f

    .line 569
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    aget-object v6, p2, v5

    check-cast v6, Ljava/lang/Integer;

    .line 570
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 569
    invoke-virtual {v0, v1, v6, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 572
    :cond_5f
    const/16 v0, 0x7530

    if-ne p1, v0, :cond_76

    .line 573
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    aget-object v6, p2, v5

    check-cast v6, Ljava/lang/Integer;

    .line 574
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 573
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v6, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 576
    :cond_76
    const/16 v0, 0x7531

    if-ne p1, v0, :cond_8d

    .line 577
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    aget-object v6, p2, v5

    check-cast v6, Ljava/lang/Integer;

    .line 578
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 577
    const/16 v7, 0x16

    invoke-virtual {v0, v7, v6, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 578
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 580
    :cond_8d
    const v0, 0x9c40

    if-ne p1, v0, :cond_a5

    .line 581
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    aget-object v6, p2, v5

    check-cast v6, Ljava/lang/Integer;

    .line 582
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 581
    const/16 v7, 0xe

    invoke-virtual {v0, v7, v6, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 584
    :cond_a5
    const v0, 0xc350

    if-ne p1, v0, :cond_bd

    .line 585
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    aget-object v6, p2, v5

    check-cast v6, Ljava/lang/Integer;

    .line 586
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 585
    const/16 v7, 0x14

    invoke-virtual {v0, v7, v6, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 588
    :cond_bd
    const/16 v0, 0x2734

    if-ne p1, v0, :cond_d4

    .line 589
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    aget-object v6, p2, v5

    check-cast v6, Ljava/lang/Integer;

    .line 590
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 589
    const/16 v7, 0xf

    invoke-virtual {v0, v7, v6, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 593
    :cond_d4
    const v0, 0xea60

    if-ne p1, v0, :cond_ec

    .line 594
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    aget-object v6, p2, v5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x1e

    invoke-virtual {v0, v7, v6, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 597
    :cond_ec
    const v0, 0x11170

    if-ne p1, v0, :cond_104

    .line 598
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    aget-object v6, p2, v5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x28

    invoke-virtual {v0, v7, v6, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 601
    :cond_104
    const v0, 0x17318

    if-ne p1, v0, :cond_142

    .line 602
    array-length v0, p2

    if-lt v0, v2, :cond_12c

    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mIsIndependentRear:Z

    if-eqz v0, :cond_12c

    .line 603
    aget-object v0, p2, v4

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_12a

    .line 604
    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v6, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v6

    if-nez v0, :cond_127

    .line 605
    iput v4, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mCurrentDisplayid:I

    goto :goto_12c

    .line 608
    :cond_127
    iput v5, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mCurrentDisplayid:I

    goto :goto_12c

    .line 612
    :cond_12a
    iput v5, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mCurrentDisplayid:I

    .line 615
    :cond_12c
    :goto_12c
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 616
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    aget-object v6, p2, v5

    check-cast v6, Ljava/lang/Integer;

    .line 617
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 616
    invoke-virtual {v0, v3, v6, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 620
    :cond_142
    const/16 v0, 0x4e20

    if-ne p1, v0, :cond_16b

    array-length v0, p2

    if-lt v0, v3, :cond_16b

    .line 622
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 623
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    aget-object v6, p2, v4

    iput-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 624
    aget-object v6, p2, v2

    iput-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 625
    aget-object v6, p2, v1

    iput-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 626
    iget-object v6, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    aget-object v7, p2, v5

    check-cast v7, Ljava/lang/Integer;

    .line 627
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 626
    const/4 v8, 0x7

    invoke-virtual {v6, v8, v7, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 627
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 630
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :cond_16b
    const v0, 0x17700

    if-ne p1, v0, :cond_198

    array-length v0, p2

    if-lt v0, v3, :cond_198

    .line 631
    iput-object p2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mTempRGBParams:[Ljava/lang/Object;

    .line 632
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 633
    .restart local v0  # "args":Lcom/android/internal/os/SomeArgs;
    aget-object v3, p2, v4

    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 634
    aget-object v2, p2, v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 635
    aget-object v1, p2, v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 636
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    aget-object v2, p2, v5

    check-cast v2, Ljava/lang/Integer;

    .line 637
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 636
    const/16 v3, 0x32

    invoke-virtual {v1, v3, v2, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 637
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 639
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :cond_198
    return-void
.end method

.method private handleGameModeChange()V
    .registers 10

    .line 1887
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_game_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1889
    .local v0, "gameMode":I
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "game_hdr_level"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1891
    .local v1, "gameHdrLevel":I
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_1b

    move v3, v4

    goto :goto_1c

    :cond_1b
    move v3, v2

    .line 1892
    .local v3, "gameHdrEnabled":Z
    :goto_1c
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_22

    move v5, v4

    goto :goto_23

    :cond_22
    move v5, v2

    .line 1894
    .local v5, "forceDisableEyecare":Z
    :goto_23
    iget-boolean v6, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mForceDisableEyeCare:Z

    if-eq v6, v5, :cond_29

    .line 1895
    iput-boolean v5, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mForceDisableEyeCare:Z

    .line 1898
    :cond_29
    iget-boolean v6, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mGameHdrEnabled:Z

    const/4 v7, 0x2

    if-eq v6, v3, :cond_69

    .line 1899
    iput-boolean v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mGameHdrEnabled:Z

    .line 1900
    const/16 v6, 0x13

    if-nez v3, :cond_3b

    .line 1902
    invoke-direct {p0, v6, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffect(II)V

    .line 1903
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->handleScreenSchemeChange(Z)V

    goto :goto_69

    .line 1907
    :cond_3b
    sget-boolean v8, Lcom/android/server/display/DisplayFeatureManagerService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

    if-nez v8, :cond_49

    if-eqz v5, :cond_45

    iget-boolean v8, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeEnabled:Z

    if-nez v8, :cond_49

    :cond_45
    iget-boolean v8, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeEnabled:Z

    if-nez v8, :cond_69

    .line 1911
    :cond_49
    if-eqz v5, :cond_66

    iget-boolean v8, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeEnabled:Z

    if-eqz v8, :cond_66

    .line 1912
    iget v8, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeType:I

    if-ne v8, v7, :cond_60

    .line 1913
    iget-object v8, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mRhythmicEyeCareManager:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-virtual {v8, v2}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->setModeEnable(Z)V

    .line 1914
    sget-boolean v8, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v8, :cond_63

    .line 1915
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->setPaperColors(I)V

    goto :goto_63

    .line 1918
    :cond_60
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->setPaperColors(I)V

    .line 1920
    :cond_63
    :goto_63
    invoke-direct {p0, v2, v4}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEyeCare(ZZ)V

    .line 1922
    :cond_66
    invoke-direct {p0, v6, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffect(II)V

    .line 1929
    :cond_69
    :goto_69
    sget-boolean v6, Lcom/android/server/display/DisplayFeatureManagerService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

    if-nez v6, :cond_6f

    if-nez v3, :cond_a9

    :cond_6f
    iget-boolean v6, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeEnabled:Z

    if-eqz v6, :cond_a9

    .line 1930
    iget-boolean v6, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mAutoAdjustEnable:Z

    if-eqz v6, :cond_81

    .line 1931
    if-nez v5, :cond_7d

    .line 1932
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->handleAutoAdjustChange()V

    goto :goto_a9

    .line 1934
    :cond_7d
    invoke-direct {p0, v2, v4}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEyeCare(ZZ)V

    goto :goto_a9

    .line 1940
    :cond_81
    iget v6, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeType:I

    if-ne v6, v7, :cond_99

    .line 1941
    iget-object v6, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mRhythmicEyeCareManager:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    if-nez v5, :cond_8b

    move v7, v4

    goto :goto_8c

    :cond_8b
    move v7, v2

    :goto_8c
    invoke-virtual {v6, v7}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->setModeEnable(Z)V

    .line 1942
    sget-boolean v6, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v6, :cond_a2

    .line 1943
    iget v6, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeType:I

    invoke-direct {p0, v6}, Lcom/android/server/display/DisplayFeatureManagerService;->setPaperColors(I)V

    goto :goto_a2

    .line 1946
    :cond_99
    if-eqz v5, :cond_9d

    move v6, v2

    goto :goto_9f

    :cond_9d
    iget v6, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeType:I

    :goto_9f
    invoke-direct {p0, v6}, Lcom/android/server/display/DisplayFeatureManagerService;->setPaperColors(I)V

    .line 1948
    :cond_a2
    :goto_a2
    if-nez v5, :cond_a5

    goto :goto_a6

    :cond_a5
    move v4, v2

    :goto_a6
    invoke-direct {p0, v4, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEyeCare(ZZ)V

    .line 1951
    :cond_a9
    :goto_a9
    return-void
.end method

.method private varargs handleIPAGrayScaleReport(I[Ljava/lang/Object;)V
    .registers 7
    .param p1, "caseId"  # I
    .param p2, "params"  # [Ljava/lang/Object;

    .line 540
    array-length v0, p2

    if-lez v0, :cond_3e

    .line 541
    array-length v0, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_20

    const/4 v0, 0x1

    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Float;

    if-eqz v1, :cond_20

    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_20

    .line 542
    iput v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mCurrentDisplayidForIPA:I

    goto :goto_22

    .line 544
    :cond_20
    iput v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mCurrentDisplayidForIPA:I

    .line 546
    :goto_22
    const v0, 0x17ae9

    if-ne p1, v0, :cond_3e

    .line 547
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    aget-object v3, p2, v2

    check-cast v3, Ljava/lang/Integer;

    .line 549
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 548
    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 552
    :cond_3e
    return-void
.end method

.method private handleReadingModeChange(Z)V
    .registers 6
    .param p1, "immediate"  # Z

    .line 1596
    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeEnabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_42

    .line 1597
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    if-eqz v0, :cond_11

    .line 1598
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateReadingModeCTLevel()V

    .line 1601
    :cond_11
    iget v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeType:I

    const/4 v3, 0x1

    if-ne v0, v1, :cond_25

    .line 1602
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->setPaperColors(I)V

    .line 1603
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mRhythmicEyeCareManager:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-virtual {v0, v3}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->setModeEnable(Z)V

    goto :goto_2a

    .line 1605
    :cond_25
    iget v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeType:I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->setPaperColors(I)V

    .line 1607
    :goto_2a
    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mAutoAdjustEnable:Z

    if-eqz v0, :cond_32

    .line 1608
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->handleAutoAdjustChange()V

    goto :goto_53

    .line 1610
    :cond_32
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    if-nez v0, :cond_3e

    .line 1611
    invoke-direct {p0, v2, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->updatePaperMode(ZZ)V

    goto :goto_53

    .line 1613
    :cond_3e
    invoke-direct {p0, v3, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->updatePaperMode(ZZ)V

    goto :goto_53

    .line 1617
    :cond_42
    iget v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeType:I

    if-ne v0, v1, :cond_4b

    .line 1618
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mRhythmicEyeCareManager:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-virtual {v0, v2}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->setModeEnable(Z)V

    .line 1620
    :cond_4b
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->setPaperColors(I)V

    .line 1621
    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mAutoAdjustEnable:Z

    invoke-direct {p0, v2, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->updatePaperMode(ZZ)V

    .line 1623
    :goto_53
    return-void
.end method

.method private handleScreenSchemeChange(Z)V
    .registers 6
    .param p1, "userChange"  # Z

    .line 1845
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeEnabled:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mGameHdrEnabled:Z

    if-eqz v0, :cond_11

    :cond_c
    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mForceDisableEyeCare:Z

    if-nez v0, :cond_11

    .line 1847
    return-void

    .line 1850
    :cond_11
    iget v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mColorSchemeCTLevel:I

    .line 1851
    .local v0, "value":I
    const/4 v1, 0x0

    .line 1853
    .local v1, "mode":I
    iget v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mColorSchemeModeType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    .line 1854
    const/4 v1, 0x1

    goto :goto_31

    .line 1855
    :cond_1b
    iget v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mColorSchemeModeType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_22

    .line 1856
    const/4 v1, 0x2

    goto :goto_31

    .line 1857
    :cond_22
    iget v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mColorSchemeModeType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_31

    .line 1863
    iget-boolean v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_2d

    if-eqz p1, :cond_30

    .line 1864
    :cond_2d
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->setExpertScreenMode()V

    .line 1866
    :cond_30
    return-void

    .line 1868
    :cond_31
    :goto_31
    invoke-direct {p0, v1, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffect(II)V

    .line 1869
    return-void
.end method

.method private handleShowEyeCareNotifyChange()V
    .registers 3

    .line 1269
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-nez v0, :cond_5

    .line 1270
    return-void

    .line 1273
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleShowEyeCareNotifyChange: notification = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisableEyeCareNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReadingModeEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEyeCareTimerEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareTimerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEyeCareIsNotFirstOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareIsNotFirstOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayFeatureManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisableEyeCareNotification:Z

    if-nez v0, :cond_5b

    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeEnabled:Z

    if-nez v0, :cond_5b

    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareTimerEnabled:Z

    if-nez v0, :cond_5b

    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareIsNotFirstOpen:Z

    if-nez v0, :cond_5b

    .line 1278
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mNotifyPopUpManager:Lcom/android/server/display/eyecare/NotifyPopUpManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->setNeedShowOpenConfirmNotification(Z)V

    goto :goto_61

    .line 1280
    :cond_5b
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mNotifyPopUpManager:Lcom/android/server/display/eyecare/NotifyPopUpManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->setNeedShowOpenConfirmNotification(Z)V

    .line 1282
    :goto_61
    return-void
.end method

.method private handleTrueToneModeChange()V
    .registers 3

    .line 1963
    const/16 v0, 0x20

    iget v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mTrueToneModeEnabled:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffect(II)V

    .line 1965
    return-void
.end method

.method private handleUnlimitedColorLevelChange(Z)V
    .registers 4
    .param p1, "userChange"  # Z

    .line 1955
    iget v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mColorSchemeModeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_b

    if-eqz p1, :cond_12

    .line 1957
    :cond_b
    const/16 v0, 0x17

    iget v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mColorSchemeCTLevel:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffect(II)V

    .line 1960
    :cond_12
    return-void
.end method

.method private initServiceDeathRecipient()V
    .registers 2

    .line 920
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    if-eqz v0, :cond_c

    .line 921
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayFeatureManagerService$11;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHwBinderDeathHandler:Landroid/os/IHwBinder$DeathRecipient;

    goto :goto_13

    .line 931
    :cond_c
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$12;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayFeatureManagerService$12;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 941
    :goto_13
    return-void
.end method

.method private initWrapperLocked()V
    .registers 7

    .line 858
    const-string v0, "DisplayFeatureManagerService"

    :try_start_2
    sget-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    if-eqz v1, :cond_52

    .line 860
    sget v1, Lcom/android/server/display/DisplayFeatureManagerService;->CONFIG_SERVICENAME_RESOURCEID:I

    if-nez v1, :cond_e

    .line 861
    const-string/jumbo v1, "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeature"

    goto :goto_18

    :cond_e
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/server/display/DisplayFeatureManagerService;->CONFIG_SERVICENAME_RESOURCEID:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 862
    .local v1, "hidlServiceName":Ljava/lang/String;
    :goto_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initProxyLocked CONFIG_SERVICENAME_RESOURCEID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/display/DisplayFeatureManagerService;->CONFIG_SERVICENAME_RESOURCEID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hidlServiceName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const-string v2, "default"

    invoke-static {v1, v2}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v2

    .line 865
    .local v2, "hb":Landroid/os/IHwBinder;
    if-eqz v2, :cond_51

    .line 866
    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHwBinderDeathHandler:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x2711

    invoke-interface {v2, v3, v4, v5}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 867
    new-instance v3, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    invoke-direct {v3, p0, v2}, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    .line 869
    .end local v1  # "hidlServiceName":Ljava/lang/String;
    .end local v2  # "hb":Landroid/os/IHwBinder;
    :cond_51
    goto :goto_6e

    .line 870
    :cond_52
    const-string/jumbo v1, "initProxyLocked aidlServiceName: vendor.xiaomi.hardware.displayfeature_aidl.IDisplayFeature/default"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const-string/jumbo v1, "vendor.xiaomi.hardware.displayfeature_aidl.IDisplayFeature/default"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 872
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_6e

    .line 873
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 874
    new-instance v2, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    invoke-direct {v2, p0, v1}, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    .line 877
    .end local v1  # "b":Landroid/os/IBinder;
    :cond_6e
    :goto_6e
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    if-eqz v1, :cond_75

    .line 878
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->setDimmingMode()V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_75} :catch_76
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_75} :catch_76

    .line 882
    :cond_75
    goto :goto_7d

    .line 880
    :catch_76
    move-exception v1

    .line 881
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "initProxyLocked failed."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 883
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_7d
    return-void
.end method

.method private isCallingSystemApp()Z
    .registers 9

    .line 2386
    const-string/jumbo v0, "isCallingSystemApp: "

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ProcessUtils;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1

    .line 2387
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "DisplayFeatureManagerService"

    const/4 v4, 0x0

    if-eqz v2, :cond_1b

    .line 2388
    const-string/jumbo v0, "isCallingSystemApp: getPackageNameByPid fail"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    return v4

    .line 2392
    :cond_1b
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2394
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_21
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 2395
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x81

    if-eqz v6, :cond_2d

    .line 2396
    const/4 v0, 0x1

    return v0

    .line 2398
    :cond_2d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a system app"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_47} :catch_48

    .line 2399
    return v4

    .line 2401
    .end local v5  # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_48
    move-exception v5

    .line 2402
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    return v4
.end method

.method private isForegroundApp(I)Z
    .registers 6
    .param p1, "pid"  # I

    .line 1397
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1398
    .local v0, "mAtmInternal":Lcom/android/server/wm/ActivityTaskManagerInternal;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopApp()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 1399
    .local v1, "wpc":Lcom/android/server/wm/WindowProcessController;
    :goto_10
    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    goto :goto_19

    :cond_18
    move v3, v2

    .line 1400
    .local v3, "topAppPid":I
    :goto_19
    if-ne p1, v3, :cond_1d

    .line 1401
    const/4 v2, 0x1

    return v2

    .line 1403
    :cond_1d
    return v2
.end method

.method private isSupportSmartEyeCare()Z
    .registers 3

    .line 1758
    const-string/jumbo v0, "support_smart_eyecare"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$registerDFCallbackInternal$0()V
    .registers 8

    .line 689
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mTempRGBParams:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    .line 690
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mTempRGBParams:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mTempRGBParams:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Float;

    .line 691
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mTempRGBParams:[Ljava/lang/Object;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 689
    const v2, 0x17700

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/DisplayFeatureManagerService;->notifyCallBackPccLevel(IIFFF)V

    return-void
.end method

.method private loadSettings()V
    .registers 2

    .line 1122
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateReadingModeEnable()V

    .line 1123
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v0, :cond_d

    .line 1124
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateEyeCareScope()V

    .line 1125
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateShowEyeCareNotifyEnable()V

    .line 1127
    :cond_d
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateReadingModeType()V

    .line 1128
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updatePaperColorType()V

    .line 1129
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->resetLocalPaperLevelIfNeed()V

    .line 1132
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateAutoAdjustEnable()V

    .line 1135
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateColorSchemeModeType()V

    .line 1136
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateColorSchemeCTLevel()V

    .line 1139
    sget-boolean v0, Landroid/provider/MiuiSettings$ScreenEffect;->SUPPORT_TRUETONE_MODE:Z

    if-eqz v0, :cond_26

    .line 1140
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateTrueToneModeEnable()V

    .line 1142
    :cond_26
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateDeskTopMode()V

    .line 1143
    return-void
.end method

.method private notifyCallBackPccLevel(IIFFF)V
    .registers 15
    .param p1, "caseId"  # I
    .param p2, "level"  # I
    .param p3, "red"  # F
    .param p4, "green"  # F
    .param p5, "blue"  # F

    .line 1003
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayFeatureCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_89

    .line 1004
    const-string v0, "DisplayFeatureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyCallBackPccLevel RGB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_42} :catch_7a

    .line 1007
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_43
    :try_start_43
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayFeatureCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_64

    .line 1008
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayFeatureCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/hardware/display/IDisplayFeatureCallback;
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_6b

    move-object v3, v2

    .line 1009
    .local v3, "callback":Lmiui/hardware/display/IDisplayFeatureCallback;
    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .end local p1  # "caseId":I
    .end local p2  # "level":I
    .end local p3  # "red":F
    .end local p4  # "green":F
    .end local p5  # "blue":F
    .local v4, "caseId":I
    .local v5, "level":I
    .local v6, "red":F
    .local v7, "green":F
    .local v8, "blue":F
    :try_start_59
    invoke-interface/range {v3 .. v8}, Lmiui/hardware/display/IDisplayFeatureCallback;->displayfeatureInfoChanged(IIFFF)V

    .line 1007
    .end local v3  # "callback":Lmiui/hardware/display/IDisplayFeatureCallback;
    add-int/lit8 v0, v0, 0x1

    move p1, v4

    move p2, v5

    move p3, v6

    move p4, v7

    move p5, v8

    goto :goto_43

    .end local v4  # "caseId":I
    .end local v5  # "level":I
    .end local v6  # "red":F
    .end local v7  # "green":F
    .end local v8  # "blue":F
    .restart local p1  # "caseId":I
    .restart local p2  # "level":I
    .restart local p3  # "red":F
    .restart local p4  # "green":F
    .restart local p5  # "blue":F
    :cond_64
    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 1011
    .end local v0  # "i":I
    .end local p1  # "caseId":I
    .end local p2  # "level":I
    .end local p3  # "red":F
    .end local p4  # "green":F
    .end local p5  # "blue":F
    .restart local v4  # "caseId":I
    .restart local v5  # "level":I
    .restart local v6  # "red":F
    .restart local v7  # "green":F
    .restart local v8  # "blue":F
    monitor-exit v1

    .line 1014
    goto :goto_8e

    .line 1011
    .end local v4  # "caseId":I
    .end local v5  # "level":I
    .end local v6  # "red":F
    .end local v7  # "green":F
    .end local v8  # "blue":F
    .restart local p1  # "caseId":I
    .restart local p2  # "level":I
    .restart local p3  # "red":F
    .restart local p4  # "green":F
    .restart local p5  # "blue":F
    :catchall_6b
    move-exception v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move-object p1, v0

    .end local p1  # "caseId":I
    .end local p2  # "level":I
    .end local p3  # "red":F
    .end local p4  # "green":F
    .end local p5  # "blue":F
    .restart local v4  # "caseId":I
    .restart local v5  # "level":I
    .restart local v6  # "red":F
    .restart local v7  # "green":F
    .restart local v8  # "blue":F
    :goto_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_59 .. :try_end_73} :catchall_77

    .end local v4  # "caseId":I
    .end local v5  # "level":I
    .end local v6  # "red":F
    .end local v7  # "green":F
    .end local v8  # "blue":F
    .end local p0  # "this":Lcom/android/server/display/DisplayFeatureManagerService;
    :try_start_73
    throw p1
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_74} :catch_74

    .line 1012
    .restart local v4  # "caseId":I
    .restart local v5  # "level":I
    .restart local v6  # "red":F
    .restart local v7  # "green":F
    .restart local v8  # "blue":F
    .restart local p0  # "this":Lcom/android/server/display/DisplayFeatureManagerService;
    :catch_74
    move-exception v0

    move-object p1, v0

    goto :goto_81

    .line 1011
    :catchall_77
    move-exception v0

    move-object p1, v0

    goto :goto_72

    .line 1012
    .end local v4  # "caseId":I
    .end local v5  # "level":I
    .end local v6  # "red":F
    .end local v7  # "green":F
    .end local v8  # "blue":F
    .restart local p1  # "caseId":I
    .restart local p2  # "level":I
    .restart local p3  # "red":F
    .restart local p4  # "green":F
    .restart local p5  # "blue":F
    :catch_7a
    move-exception v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move-object p1, v0

    .line 1013
    .end local p2  # "level":I
    .end local p3  # "red":F
    .end local p4  # "green":F
    .end local p5  # "blue":F
    .restart local v4  # "caseId":I
    .restart local v5  # "level":I
    .restart local v6  # "red":F
    .restart local v7  # "green":F
    .restart local v8  # "blue":F
    .local p1, "e":Landroid/os/RemoteException;
    :goto_81
    const-string p2, "DisplayFeatureManagerService"

    const-string p3, "Failed to notifyCallBackPccLevel"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8e

    .line 1003
    .end local v4  # "caseId":I
    .end local v5  # "level":I
    .end local v6  # "red":F
    .end local v7  # "green":F
    .end local v8  # "blue":F
    .local p1, "caseId":I
    .restart local p2  # "level":I
    .restart local p3  # "red":F
    .restart local p4  # "green":F
    .restart local p5  # "blue":F
    :cond_89
    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 1016
    .end local p1  # "caseId":I
    .end local p2  # "level":I
    .end local p3  # "red":F
    .end local p4  # "green":F
    .end local p5  # "blue":F
    .restart local v4  # "caseId":I
    .restart local v5  # "level":I
    .restart local v6  # "red":F
    .restart local v7  # "green":F
    .restart local v8  # "blue":F
    :goto_8e
    return-void
.end method

.method private notifyCurrentGrayScaleChanged()V
    .registers 5

    .line 2177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2178
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "current_gray_scale"

    iget v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mCurrentGrayScale:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2179
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mCurrentDisplayid:I

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/display/DisplayManagerInternal;->notifyDisplayManager(IILandroid/os/Bundle;)V

    .line 2181
    return-void
.end method

.method private notifyCurrentGrayScaleChangedForIPA()V
    .registers 5

    .line 2184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2185
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "current_gray_scale_for_ipa"

    iget v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mCurrentGrayScaleForIPA:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2186
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mCurrentDisplayidForIPA:I

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/display/DisplayManagerInternal;->notifyDisplayManager(IILandroid/os/Bundle;)V

    .line 2188
    return-void
.end method

.method private notifyGrayScaleChanged()V
    .registers 5

    .line 2170
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2171
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "gray_scale"

    iget v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mGrayScale:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2172
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mCurrentDisplayid:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/display/DisplayManagerInternal;->notifyDisplayManager(IILandroid/os/Bundle;)V

    .line 2174
    return-void
.end method

.method private notifyHdrStateChanged()V
    .registers 5

    .line 2191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2192
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "dolby_version_state"

    iget-boolean v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDolbyState:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2193
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/display/DisplayManagerInternal;->notifyDisplayManager(IILandroid/os/Bundle;)V

    .line 2195
    return-void
.end method

.method private notifySFColorMode(I)V
    .registers 7
    .param p1, "mode"  # I

    .line 1021
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "display_color_mode"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1023
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1024
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_42

    .line 1025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1026
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1029
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x792f

    :try_start_20
    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1031
    const-string/jumbo v2, "persist.sys.sf.native_mode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2d} :catch_34
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_2d} :catch_34
    .catchall {:try_start_20 .. :try_end_2d} :catchall_32

    .line 1035
    nop

    :goto_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1036
    goto :goto_42

    .line 1035
    :catchall_32
    move-exception v2

    goto :goto_3e

    .line 1032
    :catch_34
    move-exception v2

    .line 1033
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_35
    const-string v3, "DisplayFeatureManagerService"

    const-string v4, "Failed to notify dfps mode to SurfaceFlinger"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_32

    .line 1035
    nop

    .end local v2  # "ex":Ljava/lang/Exception;
    goto :goto_2e

    :goto_3e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1036
    throw v2

    .line 1038
    .end local v1  # "data":Landroid/os/Parcel;
    :cond_42
    :goto_42
    return-void
.end method

.method private notifySFDCParseState(I)V
    .registers 7
    .param p1, "state"  # I

    .line 1058
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1059
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_30

    .line 1060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1061
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1064
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x793c

    :try_start_18
    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_22
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_1b} :catch_22
    .catchall {:try_start_18 .. :try_end_1b} :catchall_20

    .line 1069
    nop

    :goto_1c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1070
    goto :goto_30

    .line 1069
    :catchall_20
    move-exception v2

    goto :goto_2c

    .line 1066
    :catch_22
    move-exception v2

    .line 1067
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_23
    const-string v3, "DisplayFeatureManagerService"

    const-string v4, "Failed to notify dc parse state to SurfaceFlinger"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 1069
    nop

    .end local v2  # "ex":Ljava/lang/Exception;
    goto :goto_1c

    :goto_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1070
    throw v2

    .line 1072
    .end local v1  # "data":Landroid/os/Parcel;
    :cond_30
    :goto_30
    return-void
.end method

.method private notifySFDfpsMode(II)V
    .registers 8
    .param p1, "mode"  # I
    .param p2, "msg"  # I

    .line 961
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 962
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_3a

    .line 963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 964
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 965
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 967
    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne p2, v2, :cond_20

    .line 968
    const/16 v2, 0x793d

    :try_start_1c
    invoke-interface {v0, v2, v1, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    goto :goto_25

    .line 971
    :cond_20
    const/16 v2, 0x793b

    invoke-interface {v0, v2, v1, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_25} :catch_2c
    .catchall {:try_start_1c .. :try_end_25} :catchall_2a

    .line 977
    :goto_25
    nop

    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 978
    goto :goto_3a

    .line 977
    :catchall_2a
    move-exception v2

    goto :goto_36

    .line 974
    :catch_2c
    move-exception v2

    .line 975
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2d
    const-string v3, "DisplayFeatureManagerService"

    const-string v4, "Failed to notify dfps mode to SurfaceFlinger"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_2a

    .line 977
    nop

    .end local v2  # "ex":Ljava/lang/Exception;
    goto :goto_26

    :goto_36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 978
    throw v2

    .line 980
    .end local v1  # "data":Landroid/os/Parcel;
    :cond_3a
    :goto_3a
    return-void
.end method

.method private notifySFPccLevel(IFFF)V
    .registers 10
    .param p1, "level"  # I
    .param p2, "red"  # F
    .param p3, "green"  # F
    .param p4, "blue"  # F

    .line 983
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 984
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_39

    .line 985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 986
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 987
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 988
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 989
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 990
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 992
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x797d

    :try_start_21
    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_2b
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_24} :catch_2b
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    .line 997
    nop

    :goto_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 998
    goto :goto_39

    .line 997
    :catchall_29
    move-exception v2

    goto :goto_35

    .line 994
    :catch_2b
    move-exception v2

    .line 995
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2c
    const-string v3, "DisplayFeatureManagerService"

    const-string v4, "Failed to notifySurfaceFlinger"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    .line 997
    nop

    .end local v2  # "ex":Ljava/lang/Exception;
    goto :goto_25

    :goto_35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 998
    throw v2

    .line 1000
    .end local v1  # "data":Landroid/os/Parcel;
    :cond_39
    :goto_39
    return-void
.end method

.method private notifySFSecondaryFrameRate(I)V
    .registers 7
    .param p1, "rateState"  # I

    .line 1075
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1076
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_30

    .line 1077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1078
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1081
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x7991

    :try_start_18
    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_22
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_1b} :catch_22
    .catchall {:try_start_18 .. :try_end_1b} :catchall_20

    .line 1086
    nop

    :goto_1c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1087
    goto :goto_30

    .line 1086
    :catchall_20
    move-exception v2

    goto :goto_2c

    .line 1083
    :catch_22
    move-exception v2

    .line 1084
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_23
    const-string v3, "DisplayFeatureManagerService"

    const-string v4, "Failed to notify dc parse state to SurfaceFlinger"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 1086
    nop

    .end local v2  # "ex":Ljava/lang/Exception;
    goto :goto_1c

    :goto_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1087
    throw v2

    .line 1089
    .end local v1  # "data":Landroid/os/Parcel;
    :cond_30
    :goto_30
    return-void
.end method

.method private notifySFVideoInformation(ZFIIF)V
    .registers 13
    .param p1, "bulletChatStatus"  # Z
    .param p2, "frameRate"  # F
    .param p3, "width"  # I
    .param p4, "height"  # I
    .param p5, "compressionRatio"  # F

    .line 1093
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1094
    .local v0, "surfaceFlinger":Landroid/os/IBinder;
    if-eqz v0, :cond_97

    .line 1095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1096
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1097
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1099
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1100
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1101
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifySFVideoInformation bulletChatStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", frameRate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resolution:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", compressionRatio:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DisplayFeatureManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const/16 v3, 0x798c

    const/4 v5, 0x0

    :try_start_69
    invoke-interface {v0, v3, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_6c} :catch_76
    .catch Ljava/lang/SecurityException; {:try_start_69 .. :try_end_6c} :catch_76
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_69 .. :try_end_6c} :catch_76
    .catchall {:try_start_69 .. :try_end_6c} :catchall_74

    .line 1114
    nop

    :goto_6d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1115
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1116
    goto :goto_97

    .line 1114
    :catchall_74
    move-exception v3

    goto :goto_90

    .line 1111
    :catch_76
    move-exception v3

    .line 1112
    .local v3, "e":Ljava/lang/Exception;
    :try_start_77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifySFVideoInformation RemoteException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_77 .. :try_end_8e} :catchall_74

    .line 1114
    nop

    .end local v3  # "e":Ljava/lang/Exception;
    goto :goto_6d

    :goto_90
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1115
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1116
    throw v3

    .line 1118
    .end local v1  # "data":Landroid/os/Parcel;
    .end local v2  # "reply":Landroid/os/Parcel;
    :cond_97
    :goto_97
    return-void
.end method

.method private notifySFWcgState(Z)V
    .registers 7
    .param p1, "enable"  # Z

    .line 944
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 945
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_30

    .line 946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 947
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 948
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 950
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x797c

    :try_start_18
    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_22
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_1b} :catch_22
    .catchall {:try_start_18 .. :try_end_1b} :catchall_20

    .line 955
    nop

    :goto_1c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 956
    goto :goto_30

    .line 955
    :catchall_20
    move-exception v2

    goto :goto_2c

    .line 952
    :catch_22
    move-exception v2

    .line 953
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_23
    const-string v3, "DisplayFeatureManagerService"

    const-string v4, "Failed to notifySurfaceFlinger"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 955
    nop

    .end local v2  # "ex":Ljava/lang/Exception;
    goto :goto_1c

    :goto_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 956
    throw v2

    .line 958
    .end local v1  # "data":Landroid/os/Parcel;
    :cond_30
    :goto_30
    return-void
.end method

.method private registerDFCallbackInternal(Lmiui/hardware/display/IDisplayFeatureCallback;I)V
    .registers 5
    .param p1, "callback"  # Lmiui/hardware/display/IDisplayFeatureCallback;
    .param p2, "callingId"  # I

    .line 687
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayFeatureCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 688
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mTempRGBParams:[Ljava/lang/Object;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mTempRGBParams:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_19

    .line 689
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DisplayFeatureManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayFeatureManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 693
    :cond_19
    return-void
.end method

.method private resetLocalPaperLevelIfNeed()V
    .registers 6

    .line 1470
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevel:I

    int-to-float v0, v0

    sget v1, Lcom/android/server/display/DisplayFeatureManagerService;->PAPER_MODE_MIN_LEVEL:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_25

    .line 1471
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_paper_mode_level"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1475
    .local v0, "tempValue":I
    if-eq v0, v2, :cond_25

    .line 1476
    sget v2, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    iput v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevel:I

    .line 1477
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    iget v4, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevel:I

    invoke-static {v2, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1482
    .end local v0  # "tempValue":I
    :cond_25
    return-void
.end method

.method private sendHbmState(I)V
    .registers 2
    .param p1, "type"  # I

    .line 1733
    invoke-static {p1}, Landroid/cameracovered/MiuiCameraCoveredManager;->hbmCoveredAnimation(I)V

    .line 1734
    return-void
.end method

.method private sendMuraState(I)V
    .registers 2
    .param p1, "type"  # I

    .line 1737
    invoke-static {p1}, Landroid/cameracovered/MiuiCameraCoveredManager;->cupMuraCoveredAnimation(I)V

    .line 1738
    return-void
.end method

.method private setDeathCallbackLocked(Landroid/os/IBinder;IZ)V
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "flag"  # I
    .param p3, "register"  # Z

    .line 1407
    if-eqz p3, :cond_6

    .line 1408
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerService;->registerDeathCallbackLocked(Landroid/os/IBinder;I)V

    goto :goto_9

    .line 1410
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->unregisterDeathCallbackLocked(Landroid/os/IBinder;)V

    .line 1412
    :goto_9
    return-void
.end method

.method private setDimmingMode()V
    .registers 4

    .line 1872
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->MIMOTION_PWM_SUPPORTED:Z

    if-eqz v0, :cond_32

    .line 1873
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->getMimotionDimmingMode()I

    move-result v0

    .line 1874
    .local v0, "mDimmingmode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    const/4 v1, 0x1

    :goto_e
    const/16 v2, 0x14

    invoke-direct {p0, v2, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffect(II)V

    .line 1875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDimmingMode init start set default dimming mode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayFeatureManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    .end local v0  # "mDimmingmode":I
    :cond_32
    return-void
.end method

.method private setDisplayFeature(IIII)V
    .registers 10
    .param p1, "displayId"  # I
    .param p2, "mode"  # I
    .param p3, "value"  # I
    .param p4, "cookie"  # I

    .line 707
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_3
    const-string v1, "DisplayFeatureManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScreenEffect displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 709
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 708
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    if-nez v1, :cond_4f

    .line 711
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->initWrapperLocked()V

    .line 713
    :cond_4f
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    if-eqz v1, :cond_e7

    .line 714
    const/4 v1, 0x3

    if-ne p2, v1, :cond_8f

    sget-boolean v2, Lmiui/os/DeviceFeature;->SUPPORT_PAPERMODE_ANIMATION:Z

    if-eqz v2, :cond_8f

    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    if-eqz v2, :cond_8f

    if-eqz p3, :cond_8f

    iget v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevel:I

    if-eq p3, v2, :cond_8f

    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    .line 715
    invoke-virtual {v2}, Lcom/android/server/display/MiuiRampAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_8f

    .line 716
    const-string v1, "DisplayFeatureManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mReadingModeCTLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", is not animating, the value is outdate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    monitor-exit v0

    return-void

    .line 719
    :cond_8f
    sget-boolean v2, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_d2

    if-ne p2, v1, :cond_d2

    .line 720
    const/4 v2, 0x1

    if-eqz p3, :cond_9f

    iget-boolean v4, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    if-eqz v4, :cond_9f

    .line 721
    iput-boolean v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevelEffect:Z

    .line 724
    :cond_9f
    iget-boolean v4, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    if-nez v4, :cond_af

    iget-boolean v4, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevelEffect:Z

    if-eqz v4, :cond_af

    iget v4, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayState:I

    if-ne v4, v2, :cond_af

    .line 725
    iget-boolean v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    iput-boolean v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevelEffect:Z

    .line 729
    :cond_af
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    iget-boolean v4, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevelEffect:Z

    if-eqz v4, :cond_b8

    const/16 v4, 0xff

    goto :goto_b9

    :cond_b8
    move v4, v3

    :goto_b9
    invoke-virtual {v2, p1, p2, p3, v4}, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->setFeature(IIII)V

    .line 731
    if-nez p3, :cond_d7

    iget-boolean v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    if-nez v2, :cond_d7

    iget-boolean v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevelEffect:Z

    if-eqz v2, :cond_d7

    .line 732
    iget-boolean v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    iput-boolean v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevelEffect:Z

    .line 733
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    iget v4, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevel:I

    invoke-virtual {v2, p1, p2, v4, v3}, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->setFeature(IIII)V

    goto :goto_d7

    .line 736
    :cond_d2
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->setFeature(IIII)V

    .line 738
    :cond_d7
    :goto_d7
    iget-boolean v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mScreenEyecareNeedUpdate:Z

    if-eqz v2, :cond_e7

    if-ne p2, v1, :cond_e7

    .line 739
    iput-boolean v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mScreenEyecareNeedUpdate:Z

    .line 740
    const-string v1, "DisplayFeatureManagerService"

    const-string/jumbo v2, "screen eyecare is updated"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_e7
    monitor-exit v0

    .line 744
    return-void

    .line 743
    :catchall_e9
    move-exception v1

    monitor-exit v0
    :try_end_eb
    .catchall {:try_start_3 .. :try_end_eb} :catchall_e9

    throw v1
.end method

.method private setExpertScreenMode()V
    .registers 5

    .line 2207
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->SUPPORT_DISPLAY_EXPERT_MODE:Z

    if-nez v0, :cond_b

    .line 2208
    const-string v0, "DisplayFeatureManagerService"

    const-string v1, "device don\'t support DISPLAY_EXPERT_MODE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->getExpertData(Landroid/content/Context;)Lcom/android/server/display/expertmode/ExpertData;

    move-result-object v0

    .line 2212
    .local v0, "data":Lcom/android/server/display/expertmode/ExpertData;
    if-nez v0, :cond_14

    .line 2213
    return-void

    .line 2215
    :cond_14
    const/4 v1, 0x0

    .line 2216
    .local v1, "cookie":I
    :goto_15
    const/16 v2, 0x9

    if-ge v1, v2, :cond_26

    .line 2217
    nop

    .line 2218
    invoke-virtual {v0, v1}, Lcom/android/server/display/expertmode/ExpertData;->getByCookie(I)I

    move-result v2

    .line 2217
    const/16 v3, 0x1a

    invoke-direct {p0, v3, v2, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffectInternal(III)V

    .line 2216
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 2220
    .end local v1  # "cookie":I
    :cond_26
    return-void
.end method

.method private setFullAodState(II)V
    .registers 8
    .param p1, "DisplayId"  # I
    .param p2, "state"  # I

    .line 838
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 839
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_57

    .line 840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 841
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notify sf DisplayId =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", FullAodState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "setFullAodState"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x7990

    :try_start_3f
    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_42} :catch_49
    .catch Ljava/lang/SecurityException; {:try_start_3f .. :try_end_42} :catch_49
    .catchall {:try_start_3f .. :try_end_42} :catchall_47

    .line 851
    nop

    :goto_43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 852
    goto :goto_57

    .line 851
    :catchall_47
    move-exception v2

    goto :goto_53

    .line 848
    :catch_49
    move-exception v2

    .line 849
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_4a
    const-string v3, "DisplayFeatureManagerServiceImpl"

    const-string v4, "Failed to notifySurfaceFlinger"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_47

    .line 851
    nop

    .end local v2  # "ex":Ljava/lang/Exception;
    goto :goto_43

    :goto_53
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 852
    throw v2

    .line 854
    .end local v1  # "data":Landroid/os/Parcel;
    :cond_57
    :goto_57
    return-void
.end method

.method private setPaperColors(I)V
    .registers 5
    .param p1, "type"  # I

    .line 1770
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_18

    const/4 v2, 0x3

    if-eq p1, v2, :cond_18

    sget-boolean v2, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v2, :cond_17

    const/4 v2, 0x2

    if-ne p1, v2, :cond_17

    iget-boolean v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    if-eqz v2, :cond_17

    iget-boolean v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mForceDisableEyeCare:Z

    if-nez v2, :cond_17

    goto :goto_18

    :cond_17
    move v1, v0

    .line 1773
    .local v1, "isPaperColorType":Z
    :cond_18
    :goto_18
    nop

    .line 1774
    if-eqz v1, :cond_1d

    iget v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mPaperColorType:I

    .line 1773
    :cond_1d
    const/16 v2, 0x1f

    invoke-direct {p0, v2, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffect(II)V

    .line 1775
    return-void
.end method

.method private setRhythmicColor(II)V
    .registers 7
    .param p1, "category"  # I
    .param p2, "time"  # I

    .line 1781
    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_19

    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mForceDisableEyeCare:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    if-eqz v0, :cond_19

    :cond_17
    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    .line 1782
    .local v0, "modeEnable":Z
    :goto_1a
    nop

    .line 1783
    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    .line 1782
    :goto_1f
    const/16 v2, 0x36

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerService;->setRhythmicScreenEffect(IIII)V

    .line 1784
    return-void
.end method

.method private setSDR2HDR(I)V
    .registers 7
    .param p1, "mode"  # I

    .line 1041
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1042
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_31

    .line 1043
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1044
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x84d0

    :try_start_19
    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_23
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_1c} :catch_23
    .catchall {:try_start_19 .. :try_end_1c} :catchall_21

    .line 1052
    nop

    :goto_1d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1053
    goto :goto_31

    .line 1052
    :catchall_21
    move-exception v2

    goto :goto_2d

    .line 1049
    :catch_23
    move-exception v2

    .line 1050
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_24
    const-string v3, "DisplayFeatureManagerService"

    const-string v4, "Failed to set sdr2hdr to SurfaceFlinger"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_21

    .line 1052
    nop

    .end local v2  # "ex":Ljava/lang/Exception;
    goto :goto_1d

    :goto_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1053
    throw v2

    .line 1055
    .end local v1  # "data":Landroid/os/Parcel;
    :cond_31
    :goto_31
    return-void
.end method

.method private setScreenEffect(II)V
    .registers 4
    .param p1, "mode"  # I
    .param p2, "value"  # I

    .line 683
    const/16 v0, 0xff

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffectInternal(III)V

    .line 684
    return-void
.end method

.method private setScreenEffectAll(Z)V
    .registers 5
    .param p1, "userChange"  # Z

    .line 653
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffectColor(Z)V

    .line 656
    sget-boolean v0, Landroid/provider/MiuiSettings$ScreenEffect;->SUPPORT_TRUETONE_MODE:Z

    if-eqz v0, :cond_12

    .line 657
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 661
    :cond_12
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 662
    return-void
.end method

.method private setScreenEffectColor(Z)V
    .registers 5
    .param p1, "userChange"  # Z

    .line 666
    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mScreenEyecareNeedUpdate:Z

    if-eqz v0, :cond_1a

    .line 667
    const-string v0, "DisplayFeatureManagerService"

    const-string/jumbo v1, "update screen eyecare value"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 672
    :cond_1a
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->SUPPORT_UNLIMITED_COLOR_MODE:Z

    if-eqz v0, :cond_2d

    .line 673
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 677
    :cond_2d
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

    if-nez v0, :cond_35

    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->SUPPORT_UNLIMITED_COLOR_MODE:Z

    if-eqz v0, :cond_43

    .line 678
    :cond_35
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 680
    :cond_43
    return-void
.end method

.method private setScreenEffectInternal(III)V
    .registers 7
    .param p1, "mode"  # I
    .param p2, "value"  # I
    .param p3, "cookie"  # I

    .line 700
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->getEffectedDisplayIndex()[I

    move-result-object v0

    .line 701
    .local v0, "displays":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_e

    .line 702
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/display/DisplayFeatureManagerService;->setDisplayFeature(IIII)V

    .line 701
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 704
    .end local v1  # "i":I
    :cond_e
    return-void
.end method

.method private setScreenEyeCare(ZZ)V
    .registers 8
    .param p1, "enabled"  # Z
    .param p2, "immediate"  # Z

    .line 1802
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_PAPERMODE_ANIMATION:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_58

    .line 1804
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    if-eqz v0, :cond_3c

    if-nez p2, :cond_11

    iget v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayState:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3c

    .line 1806
    :cond_11
    if-eqz p2, :cond_15

    move v0, v2

    goto :goto_20

    :cond_15
    iget v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevel:I

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr v0, v1

    iget v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mPaperModeMinRate:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1807
    .local v0, "rate":I
    :goto_20
    if-eqz p1, :cond_2d

    sget-boolean v3, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v3, :cond_2a

    iget-boolean v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    if-eqz v3, :cond_2d

    :cond_2a
    iget v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevel:I

    goto :goto_2e

    :cond_2d
    move v3, v2

    .line 1808
    .local v3, "targetLevel":I
    :goto_2e
    iget-object v4, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    invoke-virtual {v4, v3, v0}, Lcom/android/server/display/MiuiRampAnimator;->animateTo(II)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1809
    return-void

    .line 1811
    :cond_37
    iget-boolean v4, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    iput-boolean v4, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevelEffect:Z

    .line 1813
    .end local v0  # "rate":I
    .end local v3  # "targetLevel":I
    goto :goto_5c

    .line 1814
    :cond_3c
    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    iput-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevelEffect:Z

    .line 1815
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    if-eqz v0, :cond_5c

    .line 1816
    if-eqz p1, :cond_51

    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    if-eqz v0, :cond_51

    :cond_4e
    iget v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevel:I

    goto :goto_52

    :cond_51
    move v0, v2

    .line 1817
    .local v0, "targetLevel":I
    :goto_52
    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    invoke-virtual {v3, v0}, Lcom/android/server/display/MiuiRampAnimator;->updateTargetValue(I)V

    .line 1818
    .end local v0  # "targetLevel":I
    goto :goto_5c

    .line 1821
    :cond_58
    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    iput-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevelEffect:Z

    .line 1824
    :cond_5c
    :goto_5c
    if-eqz p1, :cond_64

    .line 1825
    iget v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevel:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffect(II)V

    goto :goto_7e

    .line 1828
    :cond_64
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

    if-eqz v0, :cond_7b

    .line 1829
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v0, :cond_77

    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    if-eqz v0, :cond_71

    goto :goto_77

    .line 1832
    :cond_71
    iget v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevel:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffect(II)V

    goto :goto_7e

    .line 1830
    :cond_77
    :goto_77
    invoke-direct {p0, v1, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffect(II)V

    goto :goto_7e

    .line 1835
    :cond_7b
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->handleScreenSchemeChange(Z)V

    .line 1838
    :goto_7e
    return-void
.end method

.method private unregisterDFCallbackInternal(I)V
    .registers 3
    .param p1, "callingId"  # I

    .line 696
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayFeatureCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 697
    return-void
.end method

.method private updateAutoAdjustEnable()V
    .registers 5

    .line 1189
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->isSupportSmartEyeCare()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1190
    return-void

    .line 1192
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_auto_adjust"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v3, 0x1

    :cond_15
    iput-boolean v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mAutoAdjustEnable:Z

    .line 1195
    return-void
.end method

.method private updateClassicReadingModeCTLevel()V
    .registers 5

    .line 1322
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    sget v1, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_paper_mode_level"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevel:I

    .line 1325
    return-void
.end method

.method private updateColorSchemeCTLevel()V
    .registers 5

    .line 1168
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x2

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_color_level"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mColorSchemeCTLevel:I

    .line 1171
    return-void
.end method

.method private updateColorSchemeModeType()V
    .registers 5

    .line 1177
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    sget v1, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_OPTIMIZE_MODE:I

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_optimize_mode"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mColorSchemeModeType:I

    .line 1180
    return-void
.end method

.method private updateDeskTopMode()V
    .registers 5

    .line 1381
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "miui_dkt_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v3, 0x1

    :cond_12
    iput-boolean v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDeskTopModeEnabled:Z

    .line 1383
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mRhythmicEyeCareManager:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDeskTopModeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->updateDeskTopMode(Z)V

    .line 1384
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v0, :cond_2d

    .line 1385
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mNotifyPopUpManager:Lcom/android/server/display/eyecare/NotifyPopUpManager;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDeskTopModeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->updateDeskTopMode(Z)V

    .line 1386
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEffectScopeManager:Lcom/android/server/display/eyecare/EffectScopeManager;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDeskTopModeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/display/eyecare/EffectScopeManager;->updateDeskTopMode(Z)V

    .line 1388
    :cond_2d
    return-void
.end method

.method private updateExternalDisplayConnectConfig()V
    .registers 5

    .line 1391
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "external_display_connected"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v3, v1

    :cond_12
    iput-boolean v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mExternalDisplayConnected:Z

    .line 1394
    return-void
.end method

.method private updateEyeCareScope()V
    .registers 5

    .line 1201
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-nez v0, :cond_5

    .line 1202
    return-void

    .line 1205
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "read_apps_only"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareScope:I

    .line 1209
    iget v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareScope:I

    const/4 v1, 0x1

    if-nez v0, :cond_23

    .line 1210
    iput-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    .line 1211
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEffectScopeManager:Lcom/android/server/display/eyecare/EffectScopeManager;

    invoke-virtual {v0, v3}, Lcom/android/server/display/eyecare/EffectScopeManager;->setPartiallyEffectiveChanged(Z)V

    goto :goto_2c

    .line 1213
    :cond_23
    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareIsEnteredEffect:Z

    iput-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    .line 1214
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEffectScopeManager:Lcom/android/server/display/eyecare/EffectScopeManager;

    invoke-virtual {v0, v1}, Lcom/android/server/display/eyecare/EffectScopeManager;->setPartiallyEffectiveChanged(Z)V

    .line 1216
    :goto_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateEyeCareScope: mEyeCareScope = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEyeCareEffect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayFeatureManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_65

    .line 1219
    invoke-static {}, Lcom/android/server/wm/MiuiPaperContrastOverlayStub;->get()Lcom/android/server/wm/MiuiPaperContrastOverlayStub;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareEffect:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiPaperContrastOverlayStub;->setIsReadingApp(Z)V

    .line 1220
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mRhythmicEyeCareManager:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-virtual {v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->checkEffectScope()V

    .line 1222
    :cond_65
    return-void
.end method

.method private updateEyeCareTimerEnable()V
    .registers 5

    .line 1288
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-nez v0, :cond_5

    .line 1289
    return-void

    .line 1292
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_paper_mode_time_enabled"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v3, 0x1

    :cond_13
    iput-boolean v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareTimerEnabled:Z

    .line 1295
    return-void
.end method

.method private updatePaperColorType()V
    .registers 5

    .line 1159
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_texture_color_type"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mPaperColorType:I

    .line 1162
    return-void
.end method

.method private updatePaperMode(ZZ)V
    .registers 4
    .param p1, "enabled"  # Z
    .param p2, "immediate"  # Z

    .line 1741
    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mForceDisableEyeCare:Z

    if-eqz v0, :cond_5

    .line 1742
    return-void

    .line 1744
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEyeCare(ZZ)V

    .line 1745
    return-void
.end method

.method private updatePaperReadingModeCTLevel()V
    .registers 5

    .line 1331
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    sget v1, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_TEXTURE_MODE_LEVEL:F

    float-to-int v1, v1

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_paper_texture_level"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevel:I

    .line 1334
    return-void
.end method

.method private updateReadingModeCTLevel()V
    .registers 2

    .line 1350
    iget v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeType:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_1a

    .line 1359
    :pswitch_6  #0x2
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v0, :cond_e

    .line 1360
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updatePaperReadingModeCTLevel()V

    goto :goto_1a

    .line 1362
    :cond_e
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateRhythmicModeCTLevel()V

    .line 1364
    goto :goto_1a

    .line 1356
    :pswitch_12  #0x1, 0x3
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updatePaperReadingModeCTLevel()V

    .line 1357
    goto :goto_1a

    .line 1352
    :pswitch_16  #0x0
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateClassicReadingModeCTLevel()V

    .line 1353
    nop

    .line 1368
    :goto_1a
    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_12  #00000001
        :pswitch_6  #00000002
        :pswitch_12  #00000003
    .end packed-switch
.end method

.method private updateReadingModeEnable()V
    .registers 6

    .line 1228
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_paper_mode_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    iput-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeEnabled:Z

    .line 1233
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-nez v0, :cond_18

    .line 1234
    return-void

    .line 1237
    :cond_18
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "eye_care_not_first_open"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_23

    move v2, v1

    :cond_23
    iput-boolean v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareIsNotFirstOpen:Z

    .line 1240
    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeEnabled:Z

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareIsNotFirstOpen:Z

    if-nez v0, :cond_34

    .line 1241
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1244
    iput-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEyeCareIsNotFirstOpen:Z

    .line 1246
    :cond_34
    return-void
.end method

.method private updateReadingModeType()V
    .registers 5

    .line 1305
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_mode_type"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeType:I

    .line 1307
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1f

    .line 1308
    iput v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeType:I

    .line 1309
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeType:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1315
    :cond_1f
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateReadingModeCTLevel()V

    .line 1316
    return-void
.end method

.method private updateRhythmicModeCTLevel()V
    .registers 5

    .line 1340
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    sget v1, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_RHYTHMIC_EYECARE_LEVEL:I

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_rhythmic_mode_level"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mReadingModeCTLevel:I

    .line 1343
    return-void
.end method

.method private updateShowEyeCareNotifyEnable()V
    .registers 6

    .line 1252
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-nez v0, :cond_5

    .line 1253
    return-void

    .line 1256
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_show_refuse"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    .line 1258
    .local v0, "refuse":Z
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "notification_show_count"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1260
    .local v1, "count":I
    if-nez v0, :cond_26

    const/4 v3, 0x3

    if-lt v1, v3, :cond_27

    :cond_26
    const/4 v2, 0x1

    :cond_27
    iput-boolean v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisableEyeCareNotification:Z

    .line 1261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateShowEyeCareNotifyEnable: refuse = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayFeatureManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    return-void
.end method

.method private updateTrueToneModeEnable()V
    .registers 5

    .line 1150
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_true_tone"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mTrueToneModeEnabled:I

    .line 1153
    return-void
.end method

.method private updateVideoInformationIfNeeded(IZFIIFLandroid/os/IBinder;)V
    .registers 15
    .param p1, "pid"  # I
    .param p2, "bulletChatStatus"  # Z
    .param p3, "frameRate"  # F
    .param p4, "width"  # I
    .param p5, "height"  # I
    .param p6, "compressionRatio"  # F
    .param p7, "token"  # Landroid/os/IBinder;

    .line 1373
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->isForegroundApp(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1374
    return-void

    .line 1376
    :cond_7
    const/4 v0, 0x1

    invoke-direct {p0, p7, v0, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->setDeathCallbackLocked(Landroid/os/IBinder;IZ)V

    .line 1377
    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p2  # "bulletChatStatus":Z
    .end local p3  # "frameRate":F
    .end local p4  # "width":I
    .end local p5  # "height":I
    .end local p6  # "compressionRatio":F
    .local v2, "bulletChatStatus":Z
    .local v3, "frameRate":F
    .local v4, "width":I
    .local v5, "height":I
    .local v6, "compressionRatio":F
    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/DisplayFeatureManagerService;->notifySFVideoInformation(ZFIIF)V

    .line 1378
    return-void
.end method


# virtual methods
.method public loadDozeBrightnessThreshold()V
    .registers 8

    .line 799
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 800
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 802
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 803
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 804
    const-string v3, "display"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 805
    .local v3, "b":Landroid/os/IBinder;
    const v4, 0xfffff7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 806
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 807
    .local v4, "length":I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_41

    .line 808
    new-array v6, v4, [F

    .line 809
    .local v6, "result":[F
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 810
    aget v5, v6, v5

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v5

    iput v5, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mMaxDozeBrightnessInt:I

    .line 811
    aget v2, v6, v2

    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mMinDozeBrightnessInt:I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3a} :catch_3d
    .catchall {:try_start_8 .. :try_end_3a} :catchall_3b

    goto :goto_41

    .line 816
    .end local v3  # "b":Landroid/os/IBinder;
    .end local v4  # "length":I
    .end local v6  # "result":[F
    :catchall_3b
    move-exception v2

    goto :goto_49

    .line 813
    :catch_3d
    move-exception v2

    .line 814
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3b

    .line 816
    .end local v2  # "e":Ljava/lang/Exception;
    :cond_41
    :goto_41
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 818
    nop

    .line 819
    return-void

    .line 816
    :goto_49
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 818
    throw v2
.end method

.method public onBootPhase(I)V
    .registers 9
    .param p1, "phase"  # I

    .line 362
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_189

    .line 364
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_PAPERMODE_ANIMATION:Z

    if-eqz v0, :cond_18

    .line 365
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x110b001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mPaperModeMinRate:I

    .line 369
    :cond_18
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;

    .line 370
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_paper_mode_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 373
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_paper_mode_level"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 376
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_optimize_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 379
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_color_level"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 382
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_texture_color_type"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 385
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_paper_texture_level"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 388
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_auto_adjust"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 391
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_mode_type"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 394
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_game_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 397
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "miui_dkt_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 399
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "external_display_connected"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 401
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/display/DisplayFeatureManagerService$UserSwitchReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/DisplayFeatureManagerService$UserSwitchReceiver;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;Lcom/android/server/display/DisplayFeatureManagerService-IA;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 403
    sget-boolean v0, Landroid/provider/MiuiSettings$ScreenEffect;->SUPPORT_TRUETONE_MODE:Z

    if-eqz v0, :cond_de

    .line 404
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_true_tone"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 409
    :cond_de
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v0, :cond_112

    .line 410
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "read_apps_only"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 413
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_paper_mode_time_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 417
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$3;

    invoke-static {}, Lcom/android/server/MiuiBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/display/DisplayFeatureManagerService$3;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEffectScopeAppListObserver:Landroid/database/ContentObserver;

    .line 423
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/display/DisplayFeatureManagerService;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEffectScopeAppListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 427
    :cond_112
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_PAPERMODE_ANIMATION:Z

    if-eqz v0, :cond_12f

    .line 428
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$4;

    const-string/jumbo v1, "papermode"

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayFeatureManagerService$4;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;Ljava/lang/String;)V

    .line 455
    .local v0, "paperMode":Landroid/util/IntProperty;, "Landroid/util/IntProperty<Lcom/android/server/display/DisplayFeatureManagerService;>;"
    new-instance v1, Lcom/android/server/display/MiuiRampAnimator;

    invoke-direct {v1, p0, v0}, Lcom/android/server/display/MiuiRampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    .line 456
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    new-instance v2, Lcom/android/server/display/DisplayFeatureManagerService$PaperModeAnimatListener;

    invoke-direct {v2, p0}, Lcom/android/server/display/DisplayFeatureManagerService$PaperModeAnimatListener;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/MiuiRampAnimator;->setListener(Lcom/android/server/display/MiuiRampAnimator$Listener;)V

    .line 459
    .end local v0  # "paperMode":Landroid/util/IntProperty;, "Landroid/util/IntProperty<Lcom/android/server/display/DisplayFeatureManagerService;>;"
    :cond_12f
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_CALLBACK_FOR_IPA:Z

    if-eqz v0, :cond_148

    .line 460
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    if-eqz v0, :cond_140

    .line 461
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayFeatureManagerService$5;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->registerCallbackForIPA(Ljava/lang/Object;)V

    goto :goto_148

    .line 470
    :cond_140
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayFeatureManagerService$6;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->registerCallbackForIPA(Ljava/lang/Object;)V

    .line 481
    :cond_148
    :goto_148
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v0, :cond_161

    .line 482
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    if-eqz v0, :cond_159

    .line 483
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayFeatureManagerService$7;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->registerCallbackForRGB(Ljava/lang/Object;)V

    goto :goto_161

    .line 492
    :cond_159
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayFeatureManagerService$8;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->registerCallbackForRGB(Ljava/lang/Object;)V

    .line 503
    :cond_161
    :goto_161
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_CALLBACK:Z

    if-eqz v0, :cond_17a

    .line 504
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    if-eqz v0, :cond_172

    .line 505
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayFeatureManagerService$9;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->registerCallback(Ljava/lang/Object;)V

    goto :goto_17a

    .line 514
    :cond_172
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayFeatureManagerService$10;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->registerCallback(Ljava/lang/Object;)V

    .line 525
    :cond_17a
    :goto_17a
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 526
    invoke-virtual {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->loadDozeBrightnessThreshold()V

    goto :goto_1b0

    .line 527
    :cond_189
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1b0

    .line 528
    iput-boolean v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mBootCompleted:Z

    .line 529
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->FPS_SWITCH_DEFAULT:Z

    if-nez v0, :cond_19c

    .line 530
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->getScreenDpiMode()I

    move-result v0

    const/16 v1, 0x11

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->notifySFDfpsMode(II)V

    .line 532
    :cond_19c
    sget-boolean v0, Lcom/android/server/display/DisplayFeatureManagerService;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v0, :cond_1b0

    .line 533
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mEffectScopeManager:Lcom/android/server/display/eyecare/EffectScopeManager;

    sget-object v1, Lcom/android/server/display/DisplayFeatureManagerService;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/eyecare/EffectScopeManager;->updateReadEffectScopeOpenState(Landroid/net/Uri;I)V

    .line 534
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->updateEyeCareScope()V

    .line 537
    :cond_1b0
    :goto_1b0
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 354
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayFeatureManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mLocalService:Lcom/android/server/display/DisplayFeatureManagerInternal;

    .line 355
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mDisplayFeatureServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mLocalService:Lcom/android/server/display/DisplayFeatureManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->init(Lcom/android/server/display/DisplayFeatureManagerInternal;)V

    .line 356
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;Lcom/android/server/display/DisplayFeatureManagerService-IA;)V

    const-string v1, "displayfeature"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 357
    const-class v0, Lcom/android/server/display/DisplayFeatureManagerInternal;

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mLocalService:Lcom/android/server/display/DisplayFeatureManagerInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 358
    return-void
.end method

.method public registerCallback(Ljava/lang/Object;)V
    .registers 5
    .param p1, "callback"  # Ljava/lang/Object;

    .line 887
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 888
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    if-nez v1, :cond_a

    .line 889
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->initWrapperLocked()V

    .line 891
    :cond_a
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    if-eqz v1, :cond_14

    .line 892
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->registerCallback(ILjava/lang/Object;)V

    .line 894
    :cond_14
    monitor-exit v0

    .line 895
    return-void

    .line 894
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public registerCallbackForIPA(Ljava/lang/Object;)V
    .registers 5
    .param p1, "callback"  # Ljava/lang/Object;

    .line 909
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 910
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    if-nez v1, :cond_a

    .line 911
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->initWrapperLocked()V

    .line 913
    :cond_a
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    if-eqz v1, :cond_15

    .line 914
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, p1}, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->registerCallback(ILjava/lang/Object;)V

    .line 916
    :cond_15
    monitor-exit v0

    .line 917
    return-void

    .line 916
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public registerCallbackForRGB(Ljava/lang/Object;)V
    .registers 5
    .param p1, "callback"  # Ljava/lang/Object;

    .line 898
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 899
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    if-nez v1, :cond_a

    .line 900
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerService;->initWrapperLocked()V

    .line 902
    :cond_a
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    if-eqz v1, :cond_15

    .line 903
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mWrapper:Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, p1}, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->registerCallback(ILjava/lang/Object;)V

    .line 905
    :cond_15
    monitor-exit v0

    .line 906
    return-void

    .line 905
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method protected registerDeathCallbackLocked(Landroid/os/IBinder;I)V
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "flag"  # I

    .line 1415
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mClientDeathCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1416
    const-string v0, "DisplayFeatureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has already registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    return-void

    .line 1419
    :cond_27
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1420
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mClientDeathCallbacks:Ljava/util/HashMap;

    new-instance v2, Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;Landroid/os/IBinder;I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    monitor-exit v0

    .line 1422
    return-void

    .line 1421
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw v1
.end method

.method public setDozeBrightness(JI)V
    .registers 8
    .param p1, "physicalDisplayId"  # J
    .param p3, "brightness"  # I

    .line 822
    move v0, p3

    .line 823
    .local v0, "value":I
    sget-boolean v1, Lcom/android/server/display/DisplayFeatureManagerService;->SUPPORT_MULTIPLE_AOD_BRIGHTNESS:Z

    if-nez v1, :cond_39

    .line 824
    sget-object v1, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;->DOZE_TO_NORMAL:Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    .line 825
    .local v1, "modeId":Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;
    iget v2, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mMinDozeBrightnessInt:I

    if-le p3, v2, :cond_e

    .line 826
    sget-object v1, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;->DOZE_BRIGHTNESS_HBM:Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    goto :goto_12

    .line 827
    :cond_e
    if-lez p3, :cond_12

    .line 828
    sget-object v1, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;->DOZE_BRIGHTNESS_LBM:Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    .line 830
    :cond_12
    :goto_12
    invoke-virtual {v1}, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;->ordinal()I

    move-result v0

    .line 831
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDozeBrightness, brightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayFeatureManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    .end local v1  # "modeId":Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;
    :cond_39
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerService;->getEffectedDisplayIndex(J)I

    move-result v1

    .line 834
    .local v1, "index":I
    const/16 v2, 0x19

    const/16 v3, 0xff

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/server/display/DisplayFeatureManagerService;->setDisplayFeature(IIII)V

    .line 835
    return-void
.end method

.method public setRhythmicScreenEffect(IIII)V
    .registers 6
    .param p1, "screenModeType"  # I
    .param p2, "screenModeValue"  # I
    .param p3, "category"  # I
    .param p4, "time"  # I

    .line 1796
    shl-int/lit8 v0, p3, 0x10

    or-int/2addr v0, p4

    .line 1797
    .local v0, "cookie":I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->setScreenEffectInternal(III)V

    .line 1798
    return-void
.end method

.method protected unregisterDeathCallbackLocked(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;

    .line 1425
    if-eqz p1, :cond_18

    .line 1426
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1427
    :try_start_5
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService;->mClientDeathCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;

    .line 1428
    .local v1, "deathCallback":Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;
    if-eqz v1, :cond_13

    .line 1429
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1431
    .end local v1  # "deathCallback":Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;
    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1

    .line 1433
    :cond_18
    :goto_18
    return-void
.end method
