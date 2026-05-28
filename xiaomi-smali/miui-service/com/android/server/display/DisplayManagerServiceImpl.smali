# classes.dex

.class public Lcom/android/server/display/DisplayManagerServiceImpl;
.super Lcom/android/server/display/DisplayManagerServiceStub;
.source "DisplayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerServiceImpl$DisplayManagerStubHandler;,
        Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;,
        Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;,
        Lcom/android/server/display/DisplayManagerServiceImpl$ClientDeathCallback;
    }
.end annotation


# static fields
.field private static final FLAG_INCREASE_SCREEN_BRIGHTNESS:I = 0x0

.field private static final FLAG_SET_MULTI_DISPLAYS_LIMIT_STATE:I = 0x2

.field private static final FLAG_UPDATE_CINE_LOOK_BOOST_STATE:I = 0x1

.field private static final FLAG_UPDATE_DOLBY_PREVIEW_STATE:I = 0x1

.field private static final FPS_CHANGE_REASON:I = 0x114

.field public static final IS_DUAL_REAR_DEVICE:Z

.field private static final IS_FOLDABLE_OR_FLIP_DEVICE:Z

.field private static final MAX_COUNT_DELAY_SET_DISPLAY_LAYER_STACK:I = 0x2

.field private static final MIUI_PRIMARY_MIRROR_DISPLAY_NAME:Ljava/lang/String; = "screen-mirror-ScreenRecorder"

.field private static final MSG_RESET_SHORT_MODEL:I = 0xff

.field private static final MULTI_DISPLAY_LIMIT_REFRESH_RATE_PERMISSION:Ljava/lang/String; = "com.miui.permission.REFRESH_RATE"

.field private static final SYSTEM_UI_NAME:Ljava/lang/String; = "android.uid.systemui"

.field private static final TAG:Ljava/lang/String; = "DisplayManagerServiceImpl"

.field private static final mMoveFrameRateStrategyUp:Z

.field private static final mVideoCodecListenerRegiste:Z


# instance fields
.field private final COOKIE_AUTO_MODE:I

.field private final COOKIE_BACKLIGHT_DIM:I

.field private final COOKIE_CAMERA:I

.field private final COOKIE_CHARGING_FULL:I

.field private final COOKIE_EXCLUDE:I

.field private final COOKIE_FULL_SCREEN:I

.field private final COOKIE_GAME_MODE:I

.field private final COOKIE_INPUT:I

.field private final COOKIE_SHORT_VIDEO:I

.field private final COOKIE_SKIP_TP_IDLE:I

.field private final COOKIE_VIDEO:I

.field private final COOKIE_VIDEO_HIGH_FPS:I

.field private final COOKIE_VIDEO_LOWER_FPS:I

.field private final COOKIE_VIOLENT:I

.field private final TPIDLE_TIMEOUT:I

.field private mBootCompleted:Z

.field private mClientDeathCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/display/DisplayManagerServiceImpl$ClientDeathCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrnetVideoPackages:Ljava/lang/String;

.field private mDebug:Z

.field private mDefaultDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mDefaultDisplayToken:Landroid/os/IBinder;

.field private mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

.field private mDefaultLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

.field private mDelaySetDisplayLayerStackCount:I

.field private mDisplayDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayFeatureManagerServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

.field private mForceSkipTpidleClientCount:I

.field private mGreezeManagerInternal:Lcom/miui/server/greeze/GreezeManagerInternal;

.field private mHandler:Landroid/os/Handler;

.field private final mIKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

.field private mIsOnTouchHint:Z

.field private mIsResetRate:Z

.field private mIsVideoScene:Z

.field private mLastDimingState:Z

.field private mLastLimitRefreshRateClient:I

.field private mLastVideoFps:I

.field private mLock:Ljava/lang/Object;

.field private mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

.field private mMiuiFlipPolicy:Lcom/android/server/display/MiuiFlipPolicy;

.field private mMiuiFoldPolicy:Lcom/android/server/display/MiuiFoldPolicy;

.field private mNeedHotplugBroadCast:Z

.field private mOpenedReverseDeviceStates:[I

.field private mOpenedReversePresentationDeviceStates:[I

.field private mResolutionSwitchProcessBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolutionSwitchProcessProtectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenEffectDisplayIndex:[I

.field private mSecurityManager:Lmiui/security/SecurityManagerInternal;

.field private mSubDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

.field private mTaskFocusPkg:Ljava/lang/String;

.field private mTofManagerInternal:Lcom/android/server/tof/TofManagerInternal;

.field private final mTouchHintLock:Ljava/lang/Object;

.field private mTouchHintTimer:Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;

.field private mVideoDecoderFps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoFpsCallBack:Lcom/miui/whetstone/IVideoFpsCallBack;

.field private mVideoHighFpsScene:Z

.field private mWakeOrSleepDevice:I

.field private mWhetstoneActivityManager:Lcom/miui/whetstone/server/IWhetstoneActivityManager;


# direct methods
.method public static synthetic $r8$lambda$9hXacZoKAIFRLE2gAUk4PZaUCRI(Lcom/android/server/display/DisplayManagerServiceImpl;Ljava/util/List;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerServiceImpl;->lambda$updateResolutionSwitchList$1(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m-J9aj38qSt5yVsrZUSeH_l3q80(Lcom/android/server/display/DisplayManagerServiceImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerServiceImpl;->lambda$sendHotplugBroadcast$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerServiceImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrnetVideoPackages(Lcom/android/server/display/DisplayManagerServiceImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mCurrnetVideoPackages:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIKeyguardLockedStateListener(Lcom/android/server/display/DisplayManagerServiceImpl;)Lcom/android/internal/policy/IKeyguardLockedStateListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mIKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVideoScene(Lcom/android/server/display/DisplayManagerServiceImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mIsVideoScene:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastVideoFps(Lcom/android/server/display/DisplayManagerServiceImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLastVideoFps:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchHintTimer(Lcom/android/server/display/DisplayManagerServiceImpl;)Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTouchHintTimer:Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoDecoderFps(Lcom/android/server/display/DisplayManagerServiceImpl;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mVideoDecoderFps:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoFpsCallBack(Lcom/android/server/display/DisplayManagerServiceImpl;)Lcom/miui/whetstone/IVideoFpsCallBack;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mVideoFpsCallBack:Lcom/miui/whetstone/IVideoFpsCallBack;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoHighFpsScene(Lcom/android/server/display/DisplayManagerServiceImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mVideoHighFpsScene:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmLastVideoFps(Lcom/android/server/display/DisplayManagerServiceImpl;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLastVideoFps:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoDieLocked(Lcom/android/server/display/DisplayManagerServiceImpl;ILandroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerServiceImpl;->doDieLocked(ILandroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendHotplugBroadcast(Lcom/android/server/display/DisplayManagerServiceImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerServiceImpl;->sendHotplugBroadcast(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 86
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFoldDeviceInside()Z

    move-result v0

    if-nez v0, :cond_f

    .line 87
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    sput-boolean v0, Lcom/android/server/display/DisplayManagerServiceImpl;->IS_FOLDABLE_OR_FLIP_DEVICE:Z

    .line 90
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isIndependentRearDevice()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayManagerServiceImpl;->IS_DUAL_REAR_DEVICE:Z

    .line 150
    nop

    .line 151
    const-string/jumbo v0, "ro.display.move_frame_rate_strategy_up"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMoveFrameRateStrategyUp:Z

    .line 152
    nop

    .line 153
    const-string/jumbo v0, "ro.vendor.display.uiservice_video.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayManagerServiceImpl;->mVideoCodecListenerRegiste:Z

    .line 154
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 75
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerServiceStub;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mClientDeathCallbacks:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mResolutionSwitchProcessProtectList:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mResolutionSwitchProcessBlackList:Ljava/util/List;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mNeedHotplugBroadCast:Z

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayDevices:Ljava/util/List;

    .line 130
    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mScreenEffectDisplayIndex:[I

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mWakeOrSleepDevice:I

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mCurrnetVideoPackages:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTouchHintLock:Ljava/lang/Object;

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mWhetstoneActivityManager:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    .line 157
    new-instance v0, Lcom/android/server/display/DisplayManagerServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerServiceImpl$1;-><init>(Lcom/android/server/display/DisplayManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mVideoFpsCallBack:Lcom/miui/whetstone/IVideoFpsCallBack;

    .line 232
    const/16 v0, 0xf7

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->COOKIE_EXCLUDE:I

    .line 233
    const/16 v0, 0xf8

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->COOKIE_VIDEO:I

    .line 234
    const/16 v0, 0xfc

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->COOKIE_CAMERA:I

    .line 235
    const/16 v0, 0x102

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->COOKIE_SKIP_TP_IDLE:I

    .line 236
    const/16 v0, 0x103

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->COOKIE_SHORT_VIDEO:I

    .line 237
    const/16 v0, 0x105

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->COOKIE_VIDEO_HIGH_FPS:I

    .line 238
    const/16 v0, 0x106

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->COOKIE_BACKLIGHT_DIM:I

    .line 239
    const/16 v0, 0x107

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->COOKIE_CHARGING_FULL:I

    .line 240
    const/16 v0, 0x108

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->COOKIE_VIOLENT:I

    .line 241
    const/16 v0, 0x10a

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->COOKIE_FULL_SCREEN:I

    .line 242
    const/16 v0, 0x10b

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->COOKIE_AUTO_MODE:I

    .line 243
    const/16 v0, 0x10e

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->COOKIE_INPUT:I

    .line 244
    const/16 v0, 0x10f

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->COOKIE_VIDEO_LOWER_FPS:I

    .line 245
    const/16 v0, 0x115

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->COOKIE_GAME_MODE:I

    .line 246
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->TPIDLE_TIMEOUT:I

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mVideoDecoderFps:Ljava/util/List;

    .line 2117
    new-instance v0, Lcom/android/server/display/DisplayManagerServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerServiceImpl$2;-><init>(Lcom/android/server/display/DisplayManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mIKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

    return-void
.end method

.method private appRequestChangeSceneRefreshRate(Landroid/os/Parcel;)Z
    .registers 13
    .param p1, "data"  # Landroid/os/Parcel;

    .line 914
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 916
    .local v0, "callingUid":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, "targetPkgName":Ljava/lang/String;
    const-string/jumbo v2, "mimotion"

    .line 918
    .local v2, "targetMimotionPkgName":Ljava/lang/String;
    const-string/jumbo v3, "powerkeeper"

    .line 920
    .local v3, "targetPowerKeeperPkgName":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/display/DisplayManagerServiceImpl;->mMoveFrameRateStrategyUp:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_3b

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 921
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 922
    .local v6, "token":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 923
    .local v4, "cookie":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 924
    .local v8, "status":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 926
    .local v9, "targetPkg":Ljava/lang/String;
    :try_start_2e
    invoke-direct {p0, v4, v8, v9}, Lcom/android/server/display/DisplayManagerServiceImpl;->collectPowerKeeperScene(IILjava/lang/String;)Z
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_36

    .line 928
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 929
    nop

    .line 930
    return v5

    .line 928
    :catchall_36
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 929
    throw v5

    .line 931
    .end local v4  # "cookie":I
    .end local v6  # "token":J
    .end local v8  # "status":I
    .end local v9  # "targetPkg":Ljava/lang/String;
    :cond_3b
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_63

    .line 932
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 933
    .local v4, "maxRefreshRate":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 934
    .local v7, "token":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 936
    .local v9, "callingPid":I
    :try_start_4e
    iget-object v10, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTaskFocusPkg:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/display/DisplayManagerServiceImpl;->getProcessIdForPackage(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v9, :cond_59

    .line 937
    invoke-direct {p0, v4, v6}, Lcom/android/server/display/DisplayManagerServiceImpl;->changeMimotionRefreshRate(IZ)Z
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_5e

    .line 940
    :cond_59
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 941
    nop

    .line 942
    return v5

    .line 940
    :catchall_5e
    move-exception v5

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 941
    throw v5

    .line 943
    .end local v4  # "maxRefreshRate":I
    .end local v7  # "token":J
    .end local v9  # "callingPid":I
    :cond_63
    const/16 v4, 0x2710

    if-ge v0, v4, :cond_8c

    .line 944
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 945
    .restart local v4  # "maxRefreshRate":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 947
    .restart local v6  # "token":J
    const/4 v8, -0x1

    if-ne v4, v8, :cond_7a

    .line 948
    :try_start_72
    invoke-static {}, Lcom/android/server/wm/RefreshRatePolicyStub;->getInstance()Lcom/android/server/wm/RefreshRatePolicyStub;

    move-result-object v8

    invoke-interface {v8, v1}, Lcom/android/server/wm/RefreshRatePolicyStub;->removeRefreshRateRangeForPackage(Ljava/lang/String;)V

    goto :goto_82

    .line 950
    :cond_7a
    invoke-static {}, Lcom/android/server/wm/RefreshRatePolicyStub;->getInstance()Lcom/android/server/wm/RefreshRatePolicyStub;

    move-result-object v8

    int-to-float v9, v4

    invoke-interface {v8, v1, v9}, Lcom/android/server/wm/RefreshRatePolicyStub;->addSceneRefreshRateForPackage(Ljava/lang/String;F)V
    :try_end_82
    .catchall {:try_start_72 .. :try_end_82} :catchall_87

    .line 954
    :goto_82
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 955
    nop

    .line 956
    return v5

    .line 954
    :catchall_87
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 955
    throw v5

    .line 958
    .end local v4  # "maxRefreshRate":I
    .end local v6  # "token":J
    :cond_8c
    return v6
.end method

.method private changeMimotionRefreshRate(IZ)Z
    .registers 7
    .param p1, "maxRefreshRate"  # I
    .param p2, "isOnTouchHint"  # Z

    .line 718
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_37

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeM2RefreshRate:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    const/16 v2, 0x113

    const-string v3, "M2"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->setMiRefreshRateInfoFlags(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 724
    const/4 v0, 0x1

    return v0

    .line 726
    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method private collectPowerKeeperScene(IILjava/lang/String;)Z
    .registers 14
    .param p1, "cookie"  # I
    .param p2, "status"  # I
    .param p3, "targetPkg"  # Ljava/lang/String;

    .line 730
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    if-nez v0, :cond_b

    .line 731
    :cond_8
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerServiceImpl;->updateDefaultDisplayLocked()V

    .line 733
    :cond_b
    sget-boolean v0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMoveFrameRateStrategyUp:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_271

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v0, :cond_271

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_271

    .line 734
    const-string v0, "DisplayManagerServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collectPowerKeeperScene: , status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " targetPkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/high16 v0, 0x42700000  # 60.0f

    const/16 v2, 0x10b

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x102

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_272

    .line 871
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->setMiRefreshRateInfoFlags(Landroid/os/IBinder;IILjava/lang/String;)V

    goto/16 :goto_270

    .line 740
    :sswitch_5b
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v0

    if-lez p2, :cond_62

    move v1, v8

    :cond_62
    invoke-interface {v0, v1}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setGameMode(Z)V

    .line 741
    if-lez p2, :cond_6d

    .line 742
    iget v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mForceSkipTpidleClientCount:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mForceSkipTpidleClientCount:I

    goto :goto_72

    .line 744
    :cond_6d
    iget v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mForceSkipTpidleClientCount:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mForceSkipTpidleClientCount:I

    .line 746
    :goto_72
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    if-gtz p2, :cond_7c

    iget v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mForceSkipTpidleClientCount:I

    if-lez v2, :cond_7d

    :cond_7c
    move v3, v4

    :cond_7d
    invoke-virtual {v0, v1, v5, v3, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->setMiRefreshRateInfoFlags(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 748
    goto/16 :goto_270

    .line 751
    :sswitch_82
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->isAutoModeLowFPSSupport()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 753
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    if-lez p2, :cond_94

    move v4, v1

    goto :goto_95

    :cond_94
    move v4, v8

    :goto_95
    invoke-virtual {v0, v3, v2, v4, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->setMiRefreshRateInfoFlags(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 755
    :cond_98
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v0

    if-lez p2, :cond_9f

    move v1, v8

    :cond_9f
    invoke-interface {v0, v1, p1}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setForceDisableAutoMode(ZI)V

    .line 757
    goto/16 :goto_270

    .line 760
    :sswitch_a4
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->isAutoModeLowFPSSupport()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 762
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0, v3, v2, p2, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->setMiRefreshRateInfoFlags(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 764
    :cond_b5
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v0

    if-lez p2, :cond_bc

    goto :goto_bd

    :cond_bc
    move v1, v8

    :goto_bd
    invoke-interface {v0, v1, p1}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setForceDisableAutoMode(ZI)V

    .line 766
    goto/16 :goto_270

    .line 781
    :sswitch_c2
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v0

    if-lez p2, :cond_c9

    move v1, v8

    :cond_c9
    invoke-interface {v0, v1, p1}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setForceDisableIdleRefreshRate(ZI)V

    .line 782
    if-lez p2, :cond_d4

    .line 783
    iget v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mForceSkipTpidleClientCount:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mForceSkipTpidleClientCount:I

    goto :goto_d9

    .line 785
    :cond_d4
    iget v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mForceSkipTpidleClientCount:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mForceSkipTpidleClientCount:I

    .line 787
    :goto_d9
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    if-gtz p2, :cond_e3

    iget v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mForceSkipTpidleClientCount:I

    if-lez v2, :cond_e4

    :cond_e3
    move v3, v4

    :cond_e4
    invoke-virtual {v0, v1, v5, v3, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->setMiRefreshRateInfoFlags(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 788
    goto/16 :goto_270

    .line 831
    :sswitch_e9
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->isAutoModeLowFPSSupport()Z

    move-result v2

    if-nez v2, :cond_fc

    .line 832
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->setMiRefreshRateInfoFlags(Landroid/os/IBinder;IILjava/lang/String;)V

    goto/16 :goto_270

    .line 834
    :cond_fc
    if-lez p2, :cond_ff

    move v1, v8

    :cond_ff
    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mVideoHighFpsScene:Z

    .line 835
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTouchHintLock:Ljava/lang/Object;

    monitor-enter v2

    .line 836
    :try_start_104
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mVideoHighFpsScene:Z

    if-eqz v1, :cond_114

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTouchHintTimer:Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;

    if-nez v1, :cond_114

    .line 837
    new-instance v1, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;

    invoke-direct {v1, p0, v7}, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;-><init>(Lcom/android/server/display/DisplayManagerServiceImpl;Lcom/android/server/display/DisplayManagerServiceImpl-IA;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTouchHintTimer:Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;

    goto :goto_123

    .line 838
    :cond_114
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mVideoHighFpsScene:Z

    if-nez v1, :cond_123

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTouchHintTimer:Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;

    if-eqz v1, :cond_123

    .line 839
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTouchHintTimer:Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->shutdown()V

    .line 840
    iput-object v7, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTouchHintTimer:Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;

    .line 842
    :cond_123
    :goto_123
    monitor-exit v2
    :try_end_124
    .catchall {:try_start_104 .. :try_end_124} :catchall_19d

    .line 843
    if-lez p2, :cond_128

    move-object v1, p3

    goto :goto_12a

    :cond_128
    const-string v1, ""

    :goto_12a
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mCurrnetVideoPackages:Ljava/lang/String;

    .line 844
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mVideoHighFpsScene:Z

    if-nez v1, :cond_141

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mCurrnetVideoPackages:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_141

    .line 845
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setVideoMaxRefreshRate(F)V

    goto/16 :goto_270

    .line 847
    :cond_141
    const/4 v1, 0x0

    .line 848
    .local v1, "foundMatch":Z
    const/4 v2, 0x0

    .line 849
    .local v2, "fps":I
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mVideoFpsCallBack:Lcom/miui/whetstone/IVideoFpsCallBack;

    monitor-enter v3

    .line 850
    :try_start_146
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mVideoDecoderFps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_174

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;

    .line 851
    .local v5, "info":Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;
    if-eqz v5, :cond_173

    invoke-virtual {v5}, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;->getDecoderName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_173

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mCurrnetVideoPackages:Ljava/lang/String;

    .line 852
    invoke-virtual {v5}, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;->getDecoderName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_173

    .line 853
    const/4 v1, 0x1

    .line 854
    invoke-virtual {v5}, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;->getFps()I

    move-result v4

    .line 855
    .end local v2  # "fps":I
    .local v4, "fps":I
    move v2, v4

    goto :goto_174

    .line 857
    .end local v4  # "fps":I
    .end local v5  # "info":Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;
    .restart local v2  # "fps":I
    :cond_173
    goto :goto_14c

    .line 858
    :cond_174
    :goto_174
    monitor-exit v3
    :try_end_175
    .catchall {:try_start_146 .. :try_end_175} :catchall_19a

    .line 859
    if-eqz v1, :cond_185

    const/16 v3, 0x6e

    if-lt v2, v3, :cond_185

    .line 860
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v0

    const/high16 v3, 0x42f00000  # 120.0f

    invoke-interface {v0, v3}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setVideoMaxRefreshRate(F)V

    goto :goto_198

    .line 861
    :cond_185
    if-eqz v1, :cond_191

    if-eqz v2, :cond_191

    .line 862
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setVideoMaxRefreshRate(F)V

    goto :goto_198

    .line 864
    :cond_191
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setVideoMaxRefreshRate(F)V

    .line 868
    .end local v1  # "foundMatch":Z
    .end local v2  # "fps":I
    :goto_198
    goto/16 :goto_270

    .line 858
    .restart local v1  # "foundMatch":Z
    .restart local v2  # "fps":I
    :catchall_19a
    move-exception v0

    :try_start_19b
    monitor-exit v3
    :try_end_19c
    .catchall {:try_start_19b .. :try_end_19c} :catchall_19a

    throw v0

    .line 842
    .end local v1  # "foundMatch":Z
    .end local v2  # "fps":I
    :catchall_19d
    move-exception v0

    :try_start_19e
    monitor-exit v2
    :try_end_19f
    .catchall {:try_start_19e .. :try_end_19f} :catchall_19d

    throw v0

    .line 795
    :sswitch_1a0
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->isAutoModeLowFPSSupport()Z

    move-result v2

    if-nez v2, :cond_1b3

    .line 796
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->setMiRefreshRateInfoFlags(Landroid/os/IBinder;IILjava/lang/String;)V

    goto/16 :goto_270

    .line 798
    :cond_1b3
    if-lez p2, :cond_1b6

    move v1, v8

    :cond_1b6
    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mIsVideoScene:Z

    .line 799
    if-lez p2, :cond_1bc

    move-object v1, p3

    goto :goto_1be

    :cond_1bc
    const-string v1, ""

    :goto_1be
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mCurrnetVideoPackages:Ljava/lang/String;

    .line 800
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTouchHintLock:Ljava/lang/Object;

    monitor-enter v2

    .line 801
    :try_start_1c3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mIsVideoScene:Z

    if-eqz v1, :cond_1d3

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTouchHintTimer:Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;

    if-nez v1, :cond_1d3

    .line 802
    new-instance v1, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;

    invoke-direct {v1, p0, v7}, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;-><init>(Lcom/android/server/display/DisplayManagerServiceImpl;Lcom/android/server/display/DisplayManagerServiceImpl-IA;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTouchHintTimer:Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;

    goto :goto_1e2

    .line 803
    :cond_1d3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mIsVideoScene:Z

    if-nez v1, :cond_1e2

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTouchHintTimer:Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;

    if-eqz v1, :cond_1e2

    .line 804
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTouchHintTimer:Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->shutdown()V

    .line 805
    iput-object v7, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTouchHintTimer:Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;

    .line 807
    :cond_1e2
    :goto_1e2
    monitor-exit v2
    :try_end_1e3
    .catchall {:try_start_1c3 .. :try_end_1e3} :catchall_23b

    .line 808
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mIsVideoScene:Z

    if-nez v1, :cond_1f8

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mCurrnetVideoPackages:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f8

    .line 809
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setVideoMaxRefreshRate(F)V

    goto/16 :goto_270

    .line 811
    :cond_1f8
    const/4 v1, 0x0

    .line 812
    .restart local v1  # "foundMatch":Z
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mVideoFpsCallBack:Lcom/miui/whetstone/IVideoFpsCallBack;

    monitor-enter v3

    .line 813
    :try_start_1fc
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mVideoDecoderFps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_202
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_225

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;

    .line 814
    .local v4, "info":Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;
    if-eqz v4, :cond_224

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;->getDecoderName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_224

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mCurrnetVideoPackages:Ljava/lang/String;

    .line 815
    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;->getDecoderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_224

    .line 816
    const/4 v1, 0x1

    .line 817
    goto :goto_225

    .line 819
    .end local v4  # "info":Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;
    :cond_224
    goto :goto_202

    .line 820
    :cond_225
    :goto_225
    monitor-exit v3
    :try_end_226
    .catchall {:try_start_1fc .. :try_end_226} :catchall_238

    .line 821
    if-eqz v1, :cond_230

    .line 822
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setVideoMaxRefreshRate(F)V

    goto :goto_237

    .line 824
    :cond_230
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setVideoMaxRefreshRate(F)V

    .line 828
    .end local v1  # "foundMatch":Z
    :goto_237
    goto :goto_270

    .line 820
    .restart local v1  # "foundMatch":Z
    :catchall_238
    move-exception v0

    :try_start_239
    monitor-exit v3
    :try_end_23a
    .catchall {:try_start_239 .. :try_end_23a} :catchall_238

    throw v0

    .line 807
    .end local v1  # "foundMatch":Z
    :catchall_23b
    move-exception v0

    :try_start_23c
    monitor-exit v2
    :try_end_23d
    .catchall {:try_start_23c .. :try_end_23d} :catchall_23b

    throw v0

    .line 769
    :sswitch_23e
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v0

    if-lez p2, :cond_246

    move v2, v8

    goto :goto_247

    :cond_246
    move v2, v1

    :goto_247
    invoke-interface {v0, v2, p1}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setForceDisableIdleRefreshRate(ZI)V

    .line 770
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v0

    if-lez p2, :cond_251

    move v1, v8

    :cond_251
    invoke-interface {v0, v1, p1}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setForceDisableAutoMode(ZI)V

    .line 771
    if-lez p2, :cond_25c

    .line 772
    iget v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mForceSkipTpidleClientCount:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mForceSkipTpidleClientCount:I

    goto :goto_261

    .line 774
    :cond_25c
    iget v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mForceSkipTpidleClientCount:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mForceSkipTpidleClientCount:I

    .line 776
    :goto_261
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    if-gtz p2, :cond_26b

    iget v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mForceSkipTpidleClientCount:I

    if-lez v2, :cond_26c

    :cond_26b
    move v3, v4

    :cond_26c
    invoke-virtual {v0, v1, v5, v3, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->setMiRefreshRateInfoFlags(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 777
    nop

    .line 874
    :goto_270
    return v8

    .line 876
    :cond_271
    return v1

    :sswitch_data_272
    .sparse-switch
        0xf7 -> :sswitch_23e
        0xf8 -> :sswitch_1a0
        0xfc -> :sswitch_1a0
        0x103 -> :sswitch_1a0
        0x105 -> :sswitch_e9
        0x107 -> :sswitch_c2
        0x108 -> :sswitch_c2
        0x10a -> :sswitch_1a0
        0x10b -> :sswitch_a4
        0x10e -> :sswitch_82
        0x10f -> :sswitch_1a0
        0x115 -> :sswitch_5b
    .end sparse-switch
.end method

.method private doDieLocked(ILandroid/os/IBinder;)V
    .registers 7
    .param p1, "flag"  # I
    .param p2, "token"  # Landroid/os/IBinder;

    .line 1571
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_44

    goto :goto_43

    .line 1589
    :pswitch_5  #0x2
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mClientDeathCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    .line 1590
    :try_start_8
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerServiceImpl;->unregisterDeathCallbackLocked(Landroid/os/IBinder;)V

    .line 1591
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setMultiDisplaysLowRefreshRate(Z)V

    .line 1592
    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLastLimitRefreshRateClient:I

    .line 1593
    monitor-exit v1

    .line 1594
    goto :goto_43

    .line 1593
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v0

    .line 1581
    :pswitch_19  #0x1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1582
    :try_start_1c
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerServiceImpl;->unregisterDeathCallbackLocked(Landroid/os/IBinder;)V

    .line 1583
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v2, :cond_2a

    .line 1584
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    const/high16 v3, 0x7fc00000  # Float.NaN

    invoke-virtual {v2, v0, v3}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateCineLookBoostStateLocked(ZF)V

    .line 1586
    :cond_2a
    monitor-exit v1

    .line 1587
    goto :goto_43

    .line 1586
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_2c

    throw v0

    .line 1573
    :pswitch_2f  #0x0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1574
    :try_start_32
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerServiceImpl;->unregisterDeathCallbackLocked(Landroid/os/IBinder;)V

    .line 1575
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v2, :cond_3e

    .line 1576
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateGalleryHdrState(Z)V

    .line 1578
    :cond_3e
    monitor-exit v1

    .line 1579
    goto :goto_43

    .line 1578
    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_40

    throw v0

    .line 1598
    :goto_43
    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_2f  #00000000
        :pswitch_19  #00000001
        :pswitch_5  #00000002
    .end packed-switch
.end method

.method private getCurrentMaxBrightness()F
    .registers 2

    .line 2041
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_b

    .line 2042
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getCurrentMaxBrightness()F

    move-result v0

    return v0

    .line 2044
    :cond_b
    const/high16 v0, 0x3f800000  # 1.0f

    return v0
.end method

.method public static getInstance()Lcom/android/server/display/DisplayManagerServiceImpl;
    .registers 1

    .line 328
    const-class v0, Lcom/android/server/display/DisplayManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerServiceImpl;

    return-object v0
.end method

.method private getMinBrightness()F
    .registers 2

    .line 2048
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_b

    .line 2049
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getMinBrightness()F

    move-result v0

    return v0

    .line 2051
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private getProcessIdForPackage(Ljava/lang/String;)I
    .registers 11
    .param p1, "packageName"  # Ljava/lang/String;

    .line 887
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 888
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 889
    .local v1, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v1, :cond_35

    .line 890
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 891
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_24
    if-ge v6, v5, :cond_34

    aget-object v7, v4, v6

    .line 892
    .local v7, "pkg":Ljava/lang/String;
    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 893
    iget v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    return v2

    .line 891
    .end local v7  # "pkg":Ljava/lang/String;
    :cond_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 896
    .end local v3  # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_34
    goto :goto_14

    .line 898
    :cond_35
    const/4 v2, -0x1

    return v2
.end method

.method private getScreenEffectDisplayIndexInternal(J)I
    .registers 7
    .param p1, "physicalDisplayId"  # J

    .line 435
    invoke-static {p1, p2}, Lcom/android/server/display/DisplayControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v0

    .line 436
    .local v0, "displayToken":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 437
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    :try_start_8
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 438
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v3

    if-ne v0, v3, :cond_20

    .line 439
    monitor-exit v1

    return v2

    .line 437
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 442
    .end local v2  # "i":I
    :cond_23
    monitor-exit v1

    .line 443
    const/4 v1, 0x0

    return v1

    .line 442
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw v2
.end method

.method private handleGalleryHdrRequest(Landroid/os/Parcel;)Z
    .registers 5
    .param p1, "data"  # Landroid/os/Parcel;

    .line 1386
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1388
    .local v0, "token":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1389
    .local v1, "increaseScreenBrightness":Z
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayManagerServiceImpl;->requestGalleryHdrBoost(Landroid/os/IBinder;Z)V

    .line 1390
    const/4 v2, 0x1

    return v2
.end method

.method private isInPowerGroup(ILcom/android/server/display/DisplayDevice;)Z
    .registers 8
    .param p1, "groupId"  # I
    .param p2, "device"  # Lcom/android/server/display/DisplayDevice;

    .line 2018
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 2019
    return v0

    .line 2021
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2022
    :try_start_7
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v2, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v2

    .line 2023
    .local v2, "displayGroup":Lcom/android/server/display/DisplayGroup;
    if-eqz v2, :cond_20

    .line 2024
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 2025
    invoke-virtual {v3, p2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v3

    .line 2026
    .local v3, "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    if-eqz v3, :cond_1e

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayGroup;->containsLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    monitor-exit v1

    return v0

    .line 2028
    .end local v2  # "displayGroup":Lcom/android/server/display/DisplayGroup;
    .end local v3  # "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    :cond_20
    monitor-exit v1

    .line 2029
    return v0

    .line 2028
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw v0
.end method

.method private isUidSystem(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 573
    const v0, 0x186a0

    rem-int/2addr p1, v0

    .line 575
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private synthetic lambda$sendHotplugBroadcast$0(Z)V
    .registers 4
    .param p1, "isHotplug"  # Z

    .line 397
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.display.action.DISPLAY_HOTPLUG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.milink.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v1, "ISHOTPLUG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 400
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 401
    return-void
.end method

.method private synthetic lambda$updateResolutionSwitchList$1(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p1, "resolutionSwitchBlackList"  # Ljava/util/List;
    .param p2, "resolutionSwitchProtectList"  # Ljava/util/List;

    .line 1238
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mResolutionSwitchProcessBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1239
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mResolutionSwitchProcessProtectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1240
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mResolutionSwitchProcessBlackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1241
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mResolutionSwitchProcessProtectList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1242
    return-void
.end method

.method private notifyScreenOffAnimatorEnd(Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"  # Landroid/os/Parcel;

    .line 962
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 965
    .local v0, "token":J
    :try_start_9
    const-string v2, "DisplayManagerServiceImpl"

    const-string/jumbo v3, "receive screen off animator end"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v2, :cond_1a

    .line 967
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->notifyScreenOffAnimatorEnd()V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_20

    .line 970
    :cond_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 971
    nop

    .line 972
    const/4 v2, 0x1

    return v2

    .line 970
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 971
    throw v2
.end method

.method private requestGalleryHdrBoost(Landroid/os/IBinder;Z)V
    .registers 10
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "enable"  # Z

    .line 1394
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1395
    .local v0, "ident":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1396
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1398
    .local v3, "callingPid":I
    if-eqz p1, :cond_55

    .line 1399
    :try_start_e
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_50

    .line 1400
    const/4 v5, 0x0

    :try_start_12
    invoke-direct {p0, p1, v5, p2}, Lcom/android/server/display/DisplayManagerServiceImpl;->setDeathCallbackLocked(Landroid/os/IBinder;IZ)V

    .line 1401
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v5, :cond_1e

    .line 1402
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v5, p2}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateGalleryHdrState(Z)V

    .line 1404
    :cond_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_4d

    .line 1405
    :try_start_1f
    const-string v4, "DisplayManagerServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestGalleryHdrBoost: callingUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", callingPid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_1f .. :try_end_4c} :catchall_50

    goto :goto_55

    .line 1404
    :catchall_4d
    move-exception v5

    :try_start_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    .end local v0  # "ident":J
    .end local v2  # "callingUid":I
    .end local v3  # "callingPid":I
    .end local p0  # "this":Lcom/android/server/display/DisplayManagerServiceImpl;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "enable":Z
    :try_start_4f
    throw v5
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    .line 1410
    .restart local v0  # "ident":J
    .restart local v2  # "callingUid":I
    .restart local v3  # "callingPid":I
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerServiceImpl;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "enable":Z
    :catchall_50
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1411
    throw v4

    .line 1410
    :cond_55
    :goto_55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1411
    nop

    .line 1412
    return-void
.end method

.method private resetAutoBrightnessShortModelInternal(Landroid/os/Handler;)V
    .registers 7
    .param p1, "displayControllerHandler"  # Landroid/os/Handler;

    .line 1011
    const-string v0, ""

    .line 1012
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1013
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 1014
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 1015
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1016
    .local v2, "packageNameAndUid":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 1018
    .end local v2  # "packageNameAndUid":[Ljava/lang/String;
    :cond_25
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_3e

    .line 1019
    const-string v2, "android.uid.systemui"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_3e

    .line 1020
    :cond_36
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only system uid can reset Short Model!"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1022
    :cond_3e
    :goto_3e
    const-string v2, "DisplayManagerServiceImpl"

    const-string/jumbo v3, "reset AutoBrightness ShortModel"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1025
    .local v2, "token":J
    if-eqz p1, :cond_55

    .line 1026
    const/16 v4, 0xff

    :try_start_4e
    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1028
    :cond_55
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetDefaultSpline()V

    .line 1029
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mSubDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v4, :cond_63

    .line 1030
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mSubDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerControllerImpl;->resetDefaultSpline()V
    :try_end_63
    .catchall {:try_start_4e .. :try_end_63} :catchall_68

    .line 1033
    :cond_63
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1034
    nop

    .line 1035
    return-void

    .line 1033
    :catchall_68
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1034
    throw v4
.end method

.method private sendHotplugBroadcast(Z)V
    .registers 4
    .param p1, "isHotplug"  # Z

    .line 392
    const-string/jumbo v0, "piano"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "yupei"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 393
    return-void

    .line 395
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mBootCompleted:Z

    if-eqz v0, :cond_29

    .line 396
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/display/DisplayManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayManagerServiceImpl;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 401
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2c

    .line 403
    :cond_29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mNeedHotplugBroadCast:Z

    .line 405
    :goto_2c
    return-void
.end method

.method private setBrightnessBoost(Landroid/os/Parcel;)Z
    .registers 12
    .param p1, "data"  # Landroid/os/Parcel;

    .line 544
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 546
    .local v0, "brightnessBoostRatio":F
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "reason":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 548
    .local v2, "ident":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 549
    .local v4, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 550
    .local v5, "callingPid":I
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayManagerServiceImpl;->isUidSystem(I)Z

    move-result v6

    if-nez v6, :cond_28

    .line 551
    const-string v6, "DisplayManagerServiceImpl"

    const-string v7, "Not support Non-system uids."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v6, 0x0

    return v6

    .line 555
    :cond_28
    :try_start_28
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_75

    .line 556
    :try_start_2b
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v7, :cond_34

    .line 558
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v7, v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->setBrightnessBoost(F)V

    .line 560
    :cond_34
    const-string v7, "DisplayManagerServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setBrightnessBoost: reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", callingUid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", callingPid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", brightnessBoostRatio: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    monitor-exit v6
    :try_end_6c
    .catchall {:try_start_2b .. :try_end_6c} :catchall_72

    .line 566
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 567
    nop

    .line 568
    const/4 v6, 0x1

    return v6

    .line 564
    :catchall_72
    move-exception v7

    :try_start_73
    monitor-exit v6
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    .end local v0  # "brightnessBoostRatio":F
    .end local v1  # "reason":Ljava/lang/String;
    .end local v2  # "ident":J
    .end local v4  # "callingUid":I
    .end local v5  # "callingPid":I
    .end local p0  # "this":Lcom/android/server/display/DisplayManagerServiceImpl;
    .end local p1  # "data":Landroid/os/Parcel;
    :try_start_74
    throw v7
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    .line 566
    .restart local v0  # "brightnessBoostRatio":F
    .restart local v1  # "reason":Ljava/lang/String;
    .restart local v2  # "ident":J
    .restart local v4  # "callingUid":I
    .restart local v5  # "callingPid":I
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerServiceImpl;
    .restart local p1  # "data":Landroid/os/Parcel;
    :catchall_75
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 567
    throw v6
.end method

.method private setBrightnessRate(Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"  # Landroid/os/Parcel;

    .line 1038
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1039
    .local v0, "uid":I
    const-string v1, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1042
    .local v1, "token":J
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mIsResetRate:Z

    .line 1043
    const-string v3, "DisplayManagerServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBrightnessRate, uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsResetRate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mIsResetRate:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_d .. :try_end_38} :catchall_3e

    .line 1045
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1046
    nop

    .line 1047
    const/4 v3, 0x1

    return v3

    .line 1045
    :catchall_3e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1046
    throw v3
.end method

.method private setCustomCurveEnabledOnCommand(Z)Z
    .registers 5
    .param p1, "enable"  # Z

    .line 1748
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1750
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v2, :cond_d

    .line 1751
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->setCustomCurveEnabledOnCommand(Z)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_13

    .line 1754
    :cond_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1755
    nop

    .line 1756
    const/4 v2, 0x1

    return v2

    .line 1754
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1755
    throw v2
.end method

.method private setDeathCallbackLocked(Landroid/os/IBinder;IZ)V
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "flag"  # I
    .param p3, "enable"  # Z

    .line 1415
    if-eqz p3, :cond_6

    .line 1416
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerServiceImpl;->registerDeathCallbackLocked(Landroid/os/IBinder;I)V

    goto :goto_9

    .line 1418
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerServiceImpl;->unregisterDeathCallbackLocked(Landroid/os/IBinder;)V

    .line 1420
    :goto_9
    return-void
.end method

.method private setForceTrainEnabledOnCommand(Z)Z
    .registers 5
    .param p1, "enable"  # Z

    .line 1772
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1774
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v2, :cond_d

    .line 1775
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->setForceTrainEnabledOnCommand(Z)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_13

    .line 1778
    :cond_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1779
    nop

    .line 1780
    const/4 v2, 0x1

    return v2

    .line 1778
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1779
    throw v2
.end method

.method private setIndividualModelEnabledOnCommand(Z)Z
    .registers 5
    .param p1, "enable"  # Z

    .line 1760
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1762
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v2, :cond_d

    .line 1763
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->setIndividualModelEnabledOnCommand(Z)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_13

    .line 1766
    :cond_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1767
    nop

    .line 1768
    const/4 v2, 0x1

    return v2

    .line 1766
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1767
    throw v2
.end method

.method private setMultiDisplaysLowRefreshRate(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"  # Landroid/os/Parcel;
    .param p2, "reply"  # Landroid/os/Parcel;

    .line 618
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.miui.permission.REFRESH_RATE"

    const-string/jumbo v2, "setMultiDisplaysLowRefreshRate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 622
    .local v0, "token":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 623
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 624
    .local v2, "uid":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 625
    .local v3, "limit":Z
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mClientDeathCallbacks:Ljava/util/HashMap;

    monitor-enter v4

    .line 626
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_82

    :try_start_26
    iget v7, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLastLimitRefreshRateClient:I

    if-eqz v7, :cond_2f

    iget v7, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLastLimitRefreshRateClient:I

    if-eq v7, v2, :cond_2f

    goto :goto_82

    .line 637
    :cond_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_b0

    .line 639
    .local v7, "callingIdentity":J
    :try_start_33
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v9

    invoke-interface {v9, v3}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setMultiDisplaysLowRefreshRate(Z)V

    .line 640
    const/4 v9, 0x2

    invoke-direct {p0, v0, v9, v3}, Lcom/android/server/display/DisplayManagerServiceImpl;->setDeathCallbackLocked(Landroid/os/IBinder;IZ)V

    .line 641
    if-eqz v3, :cond_41

    move v5, v2

    :cond_41
    iput v5, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLastLimitRefreshRateClient:I

    .line 642
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    const-string v5, "DisplayManagerServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setMultiDisplaysLowRefreshRate uid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", limit:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_33 .. :try_end_76} :catchall_7c

    .line 649
    :try_start_76
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 650
    nop

    .line 651
    .end local v7  # "callingIdentity":J
    monitor-exit v4

    .line 652
    return v6

    .line 649
    .restart local v7  # "callingIdentity":J
    :catchall_7c
    move-exception v5

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 650
    nop

    .end local v0  # "token":Landroid/os/IBinder;
    .end local v1  # "pid":I
    .end local v2  # "uid":I
    .end local v3  # "limit":Z
    .end local p0  # "this":Lcom/android/server/display/DisplayManagerServiceImpl;
    .end local p1  # "data":Landroid/os/Parcel;
    .end local p2  # "reply":Landroid/os/Parcel;
    throw v5

    .line 628
    .end local v7  # "callingIdentity":J
    .restart local v0  # "token":Landroid/os/IBinder;
    .restart local v1  # "pid":I
    .restart local v2  # "uid":I
    .restart local v3  # "limit":Z
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerServiceImpl;
    .restart local p1  # "data":Landroid/os/Parcel;
    .restart local p2  # "reply":Landroid/os/Parcel;
    :cond_82
    :goto_82
    const-string v7, "DisplayManagerServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMultiDisplaysLowRefreshRate was rejected, mLastLimitRefreshRateClient:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLastLimitRefreshRateClient:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 630
    if-nez v0, :cond_9b

    const-string v9, ", token is null"

    goto :goto_9d

    :cond_9b
    const-string v9, ""

    :goto_9d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 628
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    monitor-exit v4

    return v6

    .line 651
    :catchall_b0
    move-exception v5

    monitor-exit v4
    :try_end_b2
    .catchall {:try_start_76 .. :try_end_b2} :catchall_b0

    throw v5
.end method

.method private setVideoInformation(Landroid/os/Parcel;)Z
    .registers 13
    .param p1, "data"  # Landroid/os/Parcel;

    .line 976
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.miui.permission.VIDEO_INFORMATION"

    const-string v2, "Permission required to set video information"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 981
    .local v2, "pid":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 982
    .local v3, "bulletChatStatus":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 983
    .local v4, "frameRate":F
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 984
    .local v5, "width":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 985
    .local v6, "height":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 986
    .local v7, "compressionRatio":F
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 987
    .local v8, "token":Landroid/os/IBinder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoInformation bulletChatStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    if-lez v2, :cond_6f

    if-eqz v8, :cond_6f

    .line 990
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 992
    .local v9, "ident":J
    :try_start_5f
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayFeatureManagerServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->setVideoInformation(IZFIIFLandroid/os/IBinder;)V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_6a

    .line 995
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 996
    nop

    .line 997
    const/4 v0, 0x1

    return v0

    .line 995
    :catchall_6a
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 996
    throw v0

    .line 999
    .end local v9  # "ident":J
    :cond_6f
    const/4 v0, 0x0

    return v0
.end method

.method private showTouchCoverProtectionRect(Z)Z
    .registers 5
    .param p1, "enable"  # Z

    .line 1784
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1786
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v2, :cond_13

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1787
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->showTouchCoverProtectionRect(Z)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_19

    .line 1790
    :cond_13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1791
    nop

    .line 1792
    const/4 v2, 0x1

    return v2

    .line 1790
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1791
    throw v2
.end method

.method private updateCineLookBoostState(Landroid/os/Parcel;)Z
    .registers 13
    .param p1, "data"  # Landroid/os/Parcel;

    .line 585
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 588
    .local v0, "token":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 590
    .local v1, "isCineLookBoostEnable":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 591
    .local v2, "cineLookBoostRatio":F
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 592
    .local v3, "ident":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 593
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 595
    .local v6, "callingPid":I
    const/4 v7, 0x1

    if-eqz v0, :cond_70

    .line 596
    :try_start_20
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_6b

    .line 598
    :try_start_23
    invoke-direct {p0, v0, v7, v1}, Lcom/android/server/display/DisplayManagerServiceImpl;->setDeathCallbackLocked(Landroid/os/IBinder;IZ)V

    .line 600
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v9, :cond_2f

    .line 602
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v9, v1, v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateCineLookBoostStateLocked(ZF)V

    .line 605
    :cond_2f
    monitor-exit v8
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_68

    .line 606
    :try_start_30
    const-string v8, "DisplayManagerServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateCineLookBoostState: callingUid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", callingPid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isCineLookBoostEnable: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cineLookBoostRatio: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_30 .. :try_end_67} :catchall_6b

    goto :goto_70

    .line 605
    :catchall_68
    move-exception v7

    :try_start_69
    monitor-exit v8
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    .end local v0  # "token":Landroid/os/IBinder;
    .end local v1  # "isCineLookBoostEnable":Z
    .end local v2  # "cineLookBoostRatio":F
    .end local v3  # "ident":J
    .end local v5  # "callingUid":I
    .end local v6  # "callingPid":I
    .end local p0  # "this":Lcom/android/server/display/DisplayManagerServiceImpl;
    .end local p1  # "data":Landroid/os/Parcel;
    :try_start_6a
    throw v7
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    .line 612
    .restart local v0  # "token":Landroid/os/IBinder;
    .restart local v1  # "isCineLookBoostEnable":Z
    .restart local v2  # "cineLookBoostRatio":F
    .restart local v3  # "ident":J
    .restart local v5  # "callingUid":I
    .restart local v6  # "callingPid":I
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerServiceImpl;
    .restart local p1  # "data":Landroid/os/Parcel;
    :catchall_6b
    move-exception v7

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 613
    throw v7

    .line 612
    :cond_70
    :goto_70
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 613
    nop

    .line 614
    return v7
.end method

.method private updateDefaultDisplayLocked()V
    .registers 3

    .line 1370
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    if-nez v0, :cond_5

    return-void

    .line 1372
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1373
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    if-nez v0, :cond_1b

    .line 1374
    const-string v0, "DisplayManagerServiceImpl"

    const-string/jumbo v1, "get default display error"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    return-void

    .line 1377
    :cond_1b
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 1378
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayDevice:Lcom/android/server/display/DisplayDevice;

    instance-of v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v0, :cond_2f

    .line 1379
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayDevice:Lcom/android/server/display/DisplayDevice;

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 1382
    :cond_2f
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    .line 1383
    return-void
.end method

.method private updateScreenEffectDisplayIndexLocked()[I
    .registers 6

    .line 414
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v1, "displayIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1b

    .line 418
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 420
    .end local v2  # "i":I
    :cond_1b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mScreenEffectDisplayIndex:[I

    .line 421
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3b

    .line 422
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mScreenEffectDisplayIndex:[I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 424
    .end local v2  # "i":I
    :cond_3b
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mScreenEffectDisplayIndex:[I

    monitor-exit v0

    return-object v2

    .line 425
    .end local v1  # "displayIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method


# virtual methods
.method public GetAccumulatedGrayValue(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"  # Landroid/os/Parcel;
    .param p2, "reply"  # Landroid/os/Parcel;

    .line 1204
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1206
    .local v0, "displayId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1208
    .local v1, "token":J
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1e

    :try_start_10
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mSubDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v4, :cond_1e

    .line 1209
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mSubDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerControllerImpl;->GetAccumulatedGrayValue()J

    move-result-wide v4

    .line 1210
    .local v4, "value":J
    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1211
    .end local v4  # "value":J
    goto :goto_27

    .line 1212
    :cond_1e
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerControllerImpl;->GetAccumulatedGrayValue()J

    move-result-wide v4

    .line 1213
    .restart local v4  # "value":J
    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2c

    .line 1216
    .end local v4  # "value":J
    :goto_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1217
    nop

    .line 1218
    return v3

    .line 1216
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1217
    throw v3
.end method

.method public GetCurrentGrayScale(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"  # Landroid/os/Parcel;
    .param p2, "reply"  # Landroid/os/Parcel;

    .line 1186
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1188
    .local v0, "displayId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1190
    .local v1, "token":J
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1e

    :try_start_10
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mSubDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v4, :cond_1e

    .line 1191
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mSubDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerControllerImpl;->GetCurrentGrayScale()F

    move-result v4

    .line 1192
    .local v4, "value":F
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1193
    .end local v4  # "value":F
    goto :goto_27

    .line 1194
    :cond_1e
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerControllerImpl;->GetCurrentGrayScale()F

    move-result v4

    .line 1195
    .restart local v4  # "value":F
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeFloat(F)V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2c

    .line 1198
    .end local v4  # "value":F
    :goto_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1199
    nop

    .line 1200
    return v3

    .line 1198
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1199
    throw v3
.end method

.method public addBinderProxy(Landroid/os/IBinder;II)V
    .registers 6
    .param p1, "bpBinder"  # Landroid/os/IBinder;
    .param p2, "uid"  # I
    .param p3, "pid"  # I

    .line 1924
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mGreezeManagerInternal:Lcom/miui/server/greeze/GreezeManagerInternal;

    if-eqz v0, :cond_b

    .line 1925
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mGreezeManagerInternal:Lcom/miui/server/greeze/GreezeManagerInternal;

    const-string v1, "IDisplayManagerCallback"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/miui/server/greeze/GreezeManagerInternal;->addBinderProxy(Landroid/os/IBinder;IILjava/lang/String;)Z

    .line 1927
    :cond_b
    return-void
.end method

.method public addDisplayGroupManuallyIfNeededLocked(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;",
            ">;)V"
        }
    .end annotation

    .line 1890
    .local p1, "mDisplayGroupListeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;>;"
    const-string/jumbo v0, "star"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1891
    const-string v0, "DisplayManagerServiceImpl"

    const-string/jumbo v1, "initPowerManagement: Manually set display group"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;

    .line 1893
    .local v1, "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;->onDisplayGroupAdded(I)V

    .line 1894
    .end local v1  # "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;
    goto :goto_17

    .line 1896
    :cond_28
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1626
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1627
    const-string v0, "DisplayManagerServiceImpl Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1628
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_DMS:Z

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDebug:Z

    .line 1629
    return-void
.end method

.method public finishedGoingToSleep()V
    .registers 2

    .line 1684
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mBootCompleted:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFoldPolicy:Lcom/android/server/display/MiuiFoldPolicy;

    if-nez v0, :cond_9

    goto :goto_f

    .line 1687
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFoldPolicy:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiFoldPolicy;->notifyFinishedGoingToSleep()V

    .line 1688
    return-void

    .line 1685
    :cond_f
    :goto_f
    return-void
.end method

.method public getBrightnessAnimateValue(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"  # Landroid/os/Parcel;
    .param p2, "reply"  # Landroid/os/Parcel;

    .line 1056
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1059
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->getCurrentAnimateValue()[F

    move-result-object v2

    .line 1060
    .local v2, "value":[F
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeFloatArray([F)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_18

    .line 1062
    .end local v2  # "value":[F
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1063
    nop

    .line 1064
    const/4 v2, 0x1

    return v2

    .line 1062
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1063
    throw v2
.end method

.method public getCineLookBoostRatio()F
    .registers 2

    .line 1459
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_b

    .line 1460
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getCineLookBoostRatio()F

    move-result v0

    return v0

    .line 1462
    :cond_b
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0
.end method

.method public getCurrentScreenState()I
    .registers 2

    .line 1527
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_b

    .line 1528
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getCurrentScreenState()I

    move-result v0

    return v0

    .line 1530
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultSleepFlags()I
    .registers 2

    .line 1914
    const/4 v0, 0x0

    return v0
.end method

.method getDozeBrightnessThreshold(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"  # Landroid/os/Parcel;
    .param p2, "reply"  # Landroid/os/Parcel;

    .line 475
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 477
    .local v0, "isAod":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 479
    .local v1, "token":J
    const/4 v3, 0x0

    :try_start_e
    new-array v3, v3, [F

    .line 480
    .local v3, "result":[F
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v4, :cond_1b

    .line 481
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v4, v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getDozeBrightnessThreshold(Z)[F

    move-result-object v4

    move-object v3, v4

    .line 483
    :cond_1b
    array-length v4, v3

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeFloatArray([F)V
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_28

    .line 486
    .end local v3  # "result":[F
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 487
    nop

    .line 488
    const/4 v3, 0x1

    return v3

    .line 486
    :catchall_28
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 487
    throw v3
.end method

.method public getGalleryHdrBoostFactor(FF)F
    .registers 4
    .param p1, "sdrBacklight"  # F
    .param p2, "hdrBacklight"  # F

    .line 1554
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_b

    .line 1555
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayPowerControllerImpl;->getGalleryHdrBoostFactor(FF)F

    move-result v0

    return v0

    .line 1557
    :cond_b
    const/high16 v0, 0x3f800000  # 1.0f

    return v0
.end method

.method public getIntBrightnessValue(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"  # Landroid/os/Parcel;
    .param p2, "reply"  # Landroid/os/Parcel;

    .line 1156
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1159
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->getSliderValue()F

    move-result v2

    .line 1160
    .local v2, "sliderVal":F
    const-string v3, "DisplayManagerServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getIntBrightnessValue: sliderVal:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeFloat(F)V
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_31

    .line 1163
    .end local v2  # "sliderVal":F
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1164
    nop

    .line 1165
    const/4 v2, 0x1

    return v2

    .line 1163
    :catchall_31
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1164
    throw v2
.end method

.method public getIsResetRate()Z
    .registers 2

    .line 1052
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mIsResetRate:Z

    return v0
.end method

.method public getLogicalDisplayId(ZLcom/android/server/display/layout/DisplayIdProducer;)I
    .registers 4
    .param p1, "isDefault"  # Z
    .param p2, "idProducer"  # Lcom/android/server/display/layout/DisplayIdProducer;

    .line 1919
    sget-boolean v0, Lcom/android/server/display/DisplayManagerServiceImpl;->IS_FOLDABLE_OR_FLIP_DEVICE:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/server/display/DisplayManagerServiceImpl;->IS_DUAL_REAR_DEVICE:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, -0x1

    goto :goto_f

    :cond_b
    :goto_b
    invoke-interface {p2, p1}, Lcom/android/server/display/layout/DisplayIdProducer;->getId(Z)I

    move-result v0

    :goto_f
    return v0
.end method

.method public getMaskedDensity(Landroid/graphics/Rect;Lcom/android/server/display/DisplayDeviceInfo;)I
    .registers 6
    .param p1, "maskingInsets"  # Landroid/graphics/Rect;
    .param p2, "deviceInfo"  # Lcom/android/server/display/DisplayDeviceInfo;

    .line 1876
    iget v0, p2, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 1877
    .local v0, "maskedDensity":I
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerServiceStub;->isSupportSetActiveModeSwitchResolution()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, p2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 1879
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerServiceStub;->getDefaultDensity()I

    move-result v1

    .line 1880
    .local v1, "density":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d

    .line 1881
    move v0, v1

    .line 1884
    .end local v1  # "density":I
    :cond_1d
    return v0
.end method

.method public getMaskedHeight(Landroid/graphics/Rect;Lcom/android/server/display/DisplayDeviceInfo;)I
    .registers 7
    .param p1, "maskingInsets"  # Landroid/graphics/Rect;
    .param p2, "deviceInfo"  # Lcom/android/server/display/DisplayDeviceInfo;

    .line 1856
    iget v0, p2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 1857
    .local v0, "deviceInfoHeight":I
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerServiceStub;->isSupportSetActiveModeSwitchResolution()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    iget v1, p2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v1, v2, :cond_1d

    .line 1859
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerServiceStub;->getUserSetResolution()[I

    move-result-object v1

    .line 1860
    .local v1, "screenResolution":[I
    if-eqz v1, :cond_1d

    .line 1861
    aget v0, v1, v2

    .line 1866
    .end local v1  # "screenResolution":[I
    :cond_1d
    const-string v1, "cetus"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget v1, p2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v1, v2, :cond_34

    iget v1, p2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-nez v1, :cond_34

    .line 1869
    const/16 v0, 0xa50

    .line 1871
    :cond_34
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, v0, v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getMaskedWidth(Landroid/graphics/Rect;Lcom/android/server/display/DisplayDeviceInfo;)I
    .registers 7
    .param p1, "maskingInsets"  # Landroid/graphics/Rect;
    .param p2, "deviceInfo"  # Lcom/android/server/display/DisplayDeviceInfo;

    .line 1836
    iget v0, p2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 1837
    .local v0, "deviceInfoWidth":I
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerServiceStub;->isSupportSetActiveModeSwitchResolution()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    iget v1, p2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v1, v2, :cond_1e

    .line 1839
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerServiceStub;->getUserSetResolution()[I

    move-result-object v1

    .line 1840
    .local v1, "screenResolution":[I
    if-eqz v1, :cond_1e

    .line 1841
    const/4 v3, 0x0

    aget v0, v1, v3

    .line 1846
    .end local v1  # "screenResolution":[I
    :cond_1e
    const-string v1, "cetus"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget v1, p2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v1, v2, :cond_35

    iget v1, p2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-nez v1, :cond_35

    .line 1849
    const/16 v0, 0x370

    .line 1851
    :cond_35
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getMaxHbmBrightnessForPeak()F
    .registers 2

    .line 1484
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_b

    .line 1485
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getMaxHbmBrightnessForPeak()F

    move-result v0

    return v0

    .line 1487
    :cond_b
    const/high16 v0, 0x3f800000  # 1.0f

    return v0
.end method

.method public getMaxManualBrightnessBoost()F
    .registers 2

    .line 1498
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_b

    .line 1499
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getMaxManualBrightnessBoost()F

    move-result v0

    return v0

    .line 1501
    :cond_b
    const/high16 v0, -0x40800000  # -1.0f

    return v0
.end method

.method public getMaxManualDynamicBrightness()F
    .registers 2

    .line 1512
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_b

    .line 1513
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getMaxManualDynamicBrightness()F

    move-result v0

    return v0

    .line 1515
    :cond_b
    const/high16 v0, -0x40800000  # -1.0f

    return v0
.end method

.method public getMaxOutdoorBrightness()F
    .registers 2

    .line 1542
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_b

    .line 1543
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getMaxOutdoorBrightness()F

    move-result v0

    return v0

    .line 1545
    :cond_b
    const/high16 v0, 0x3f800000  # 1.0f

    return v0
.end method

.method public getScreenBrightnessSetting()F
    .registers 2

    .line 696
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_b

    .line 697
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getScreenBrightnessSetting()F

    move-result v0

    return v0

    .line 699
    :cond_b
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0
.end method

.method getScreenEffectAvailableDisplay(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"  # Landroid/os/Parcel;
    .param p2, "reply"  # Landroid/os/Parcel;

    .line 447
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 450
    .local v0, "token":J
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerServiceImpl;->getScreenEffectAvailableDisplayInternal()[I

    move-result-object v2

    .line 451
    .local v2, "result":[I
    array-length v3, v2

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeIntArray([I)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1a

    .line 454
    .end local v2  # "result":[I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 455
    nop

    .line 456
    const/4 v2, 0x1

    return v2

    .line 454
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 455
    throw v2
.end method

.method public getScreenEffectAvailableDisplayInternal()[I
    .registers 3

    .line 429
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mScreenEffectDisplayIndex:[I

    monitor-exit v0

    return-object v1

    .line 431
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getScreenEffectDisplayIndex(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"  # Landroid/os/Parcel;
    .param p2, "reply"  # Landroid/os/Parcel;

    .line 460
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 463
    .local v0, "token":J
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/DisplayManagerServiceImpl;->getScreenEffectDisplayIndexInternal(J)I

    move-result v2

    .line 464
    .local v2, "result":I
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1a

    .line 466
    .end local v2  # "result":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 467
    nop

    .line 468
    const/4 v2, 0x1

    return v2

    .line 466
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 467
    throw v2
.end method

.method protected getSyncRoot()Ljava/lang/Object;
    .registers 2

    .line 1226
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public init(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/display/LogicalDisplayMapper;)V
    .registers 7
    .param p1, "lock"  # Ljava/lang/Object;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "looper"  # Landroid/os/Looper;
    .param p4, "logicalDisplayMapper"  # Lcom/android/server/display/LogicalDisplayMapper;

    .line 310
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 311
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 312
    new-instance v0, Lcom/android/server/display/DisplayManagerServiceImpl$DisplayManagerStubHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/display/DisplayManagerServiceImpl$DisplayManagerStubHandler;-><init>(Lcom/android/server/display/DisplayManagerServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 313
    iput-object p4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 314
    nop

    .line 315
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayFeatureManagerServiceStub;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayFeatureManagerServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    .line 317
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11050082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 319
    new-instance v0, Lcom/android/server/display/MiuiFoldPolicy;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/display/MiuiFoldPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFoldPolicy:Lcom/android/server/display/MiuiFoldPolicy;

    .line 321
    :cond_2e
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110500d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 323
    new-instance v0, Lcom/android/server/display/MiuiFlipPolicy;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/display/MiuiFlipPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFlipPolicy:Lcom/android/server/display/MiuiFlipPolicy;

    .line 325
    :cond_46
    return-void
.end method

.method public isCineLookBoostEnable()Z
    .registers 2

    .line 1446
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_b

    .line 1447
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isCineLookBoostEnable()Z

    move-result v0

    return v0

    .line 1449
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isDefaultDisplay(I)Z
    .registers 5
    .param p1, "displayId"  # I

    .line 2106
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2107
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 2108
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_11

    .line 2109
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->isDefaultDisplayLocked()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2111
    :cond_11
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 2113
    .end local v1  # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public isDefaultDisplayStateChangedLocked(Lcom/android/server/display/DisplayDevice;)Z
    .registers 5
    .param p1, "device"  # Lcom/android/server/display/DisplayDevice;

    .line 2069
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2070
    return v0

    .line 2072
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 2075
    .local v1, "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 2076
    .local v2, "displayDevice":Lcom/android/server/display/DisplayDevice;
    :goto_12
    if-eqz v2, :cond_17

    if-ne v2, p1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public isDisplayGroupAlwaysOn(I)Z
    .registers 11
    .param p1, "groupId"  # I

    .line 1257
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1258
    return v0

    .line 1260
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1261
    :try_start_7
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v2, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v2

    .line 1263
    .local v2, "displayGroup":Lcom/android/server/display/DisplayGroup;
    const/4 v3, 0x0

    .line 1264
    .local v3, "alwaysOn":Z
    if-eqz v2, :cond_32

    .line 1265
    invoke-virtual {v2}, Lcom/android/server/display/DisplayGroup;->getSizeLocked()I

    move-result v4

    .line 1266
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    if-ge v5, v4, :cond_32

    .line 1267
    invoke-virtual {v2, v5}, Lcom/android/server/display/DisplayGroup;->getIdLocked(I)I

    move-result v6

    .line 1268
    .local v6, "id":I
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v7, v6, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v7

    .line 1269
    .local v7, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v7, :cond_2f

    invoke-virtual {v7}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v8

    iget v8, v8, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 v8, v8, 0x200

    if-eqz v8, :cond_2f

    .line 1271
    const/4 v3, 0x1

    .line 1272
    goto :goto_32

    .line 1266
    .end local v6  # "id":I
    .end local v7  # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 1276
    .end local v4  # "size":I
    .end local v5  # "i":I
    :cond_32
    :goto_32
    monitor-exit v1

    return v3

    .line 1277
    .end local v2  # "displayGroup":Lcom/android/server/display/DisplayGroup;
    .end local v3  # "alwaysOn":Z
    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public isDualRearDevice()Z
    .registers 2

    .line 1938
    sget-boolean v0, Lcom/android/server/display/DisplayManagerServiceImpl;->IS_DUAL_REAR_DEVICE:Z

    return v0
.end method

.method public isFoldableOrFlipDevice()Z
    .registers 2

    .line 1943
    sget-boolean v0, Lcom/android/server/display/DisplayManagerServiceImpl;->IS_FOLDABLE_OR_FLIP_DEVICE:Z

    return v0
.end method

.method public isGalleryHdrEnable()Z
    .registers 2

    .line 1470
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_b

    .line 1471
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isGalleryHdrEnable()Z

    move-result v0

    return v0

    .line 1473
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isInResolutionSwitchBlackList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "processName"  # Ljava/lang/String;

    .line 1252
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mResolutionSwitchProcessBlackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInResolutionSwitchProtectList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "processName"  # Ljava/lang/String;

    .line 1247
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mResolutionSwitchProcessProtectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNeedDelaySetDisplayLayerStack(Z)Z
    .registers 5
    .param p1, "isBlank"  # Z

    .line 2080
    sget-boolean v0, Lcom/android/server/display/DisplayManagerServiceImpl;->IS_FOLDABLE_OR_FLIP_DEVICE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2081
    :cond_6
    iget v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDelaySetDisplayLayerStackCount:I

    if-lez v0, :cond_1b

    .line 2082
    const/4 v0, 0x1

    if-nez p1, :cond_12

    iget v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDelaySetDisplayLayerStackCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDelaySetDisplayLayerStackCount:I

    .line 2083
    :cond_12
    const-string v1, "DisplayManagerServiceImpl"

    const-string/jumbo v2, "isNeedDelaySetDisplayLayerStack: true"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    return v0

    .line 2086
    :cond_1b
    return v1
.end method

.method public isRearScreenDevice()Z
    .registers 2

    .line 1519
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_b

    .line 1520
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isRearScreenDevice()Z

    move-result v0

    return v0

    .line 1522
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportManualBrightnessBoost()Z
    .registers 2

    .line 1491
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_b

    .line 1492
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isSupportManualBrightnessBoost()Z

    move-result v0

    return v0

    .line 1494
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportManualDynamicBrightness()Z
    .registers 2

    .line 1505
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_b

    .line 1506
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isSupportManualDynamicBrightness()Z

    move-result v0

    return v0

    .line 1508
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportOutdoorMode()Z
    .registers 2

    .line 1535
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_b

    .line 1536
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isSupportOutdoorMode()Z

    move-result v0

    return v0

    .line 1538
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportPeakBrightness()Z
    .registers 2

    .line 1477
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_b

    .line 1478
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->isSupportPeakBrightness()Z

    move-result v0

    return v0

    .line 1480
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isTableDevice()Z
    .registers 2

    .line 2100
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isTableDevice()Z

    move-result v0

    return v0
.end method

.method public notifyFinishDisplayTransitionLocked()V
    .registers 2

    .line 1655
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mBootCompleted:Z

    if-nez v0, :cond_5

    .line 1656
    return-void

    .line 1658
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFoldPolicy:Lcom/android/server/display/MiuiFoldPolicy;

    if-eqz v0, :cond_e

    .line 1659
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFoldPolicy:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiFoldPolicy;->dealDisplayTransition()V

    .line 1661
    :cond_e
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFlipPolicy:Lcom/android/server/display/MiuiFlipPolicy;

    if-eqz v0, :cond_17

    .line 1662
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFlipPolicy:Lcom/android/server/display/MiuiFlipPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiFlipPolicy;->enablePocketMode()V

    .line 1664
    :cond_17
    return-void
.end method

.method public notifyHotplugConnectStateChangedLocked(JZLcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)V
    .registers 16
    .param p1, "physicalDisplayId"  # J
    .param p3, "isConnected"  # Z
    .param p4, "device"  # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 1714
    const/4 v0, 0x0

    .line 1715
    .local v0, "productName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1716
    .local v1, "frameRate":I
    const/4 v2, 0x0

    .line 1717
    .local v2, "resolution":Ljava/lang/String;
    if-eqz p4, :cond_37

    if-eqz p3, :cond_37

    .line 1718
    invoke-virtual {p4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    .line 1719
    .local v3, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v4, v3, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    if-eqz v4, :cond_15

    .line 1720
    iget-object v4, v3, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    invoke-virtual {v4}, Landroid/hardware/display/DeviceProductInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1722
    :cond_15
    iget v4, v3, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    float-to-int v1, v4

    .line 1723
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v0

    move v9, v1

    move-object v10, v2

    goto :goto_3a

    .line 1725
    .end local v3  # "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    :cond_37
    move-object v8, v0

    move v9, v1

    move-object v10, v2

    .end local v0  # "productName":Ljava/lang/String;
    .end local v1  # "frameRate":I
    .end local v2  # "resolution":Ljava/lang/String;
    .local v8, "productName":Ljava/lang/String;
    .local v9, "frameRate":I
    .local v10, "resolution":Ljava/lang/String;
    :goto_3a
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceStub;->get()Lcom/android/server/power/PowerManagerServiceStub;

    move-result-object v4

    move-wide v5, p1

    move v7, p3

    .end local p1  # "physicalDisplayId":J
    .end local p3  # "isConnected":Z
    .local v5, "physicalDisplayId":J
    .local v7, "isConnected":Z
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerServiceStub;->notifyDisplayPortConnectStateChanged(JZLjava/lang/String;ILjava/lang/String;)V

    .line 1727
    return-void
.end method

.method public notifyOnTouchHint()V
    .registers 4

    .line 657
    sget-boolean v0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMoveFrameRateStrategyUp:Z

    if-eqz v0, :cond_63

    .line 658
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mWhetstoneActivityManager:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-nez v0, :cond_2e

    sget-boolean v0, Lcom/android/server/display/DisplayManagerServiceImpl;->mVideoCodecListenerRegiste:Z

    if-eqz v0, :cond_2e

    .line 660
    const-string/jumbo v0, "whetstone.activity"

    .line 661
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 660
    invoke-static {v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mWhetstoneActivityManager:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    .line 663
    :try_start_19
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mWhetstoneActivityManager:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_24

    .line 664
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mWhetstoneActivityManager:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mVideoFpsCallBack:Lcom/miui/whetstone/IVideoFpsCallBack;

    invoke-interface {v0, v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->registVideoFpsCallBack(Lcom/miui/whetstone/IVideoFpsCallBack;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_24} :catch_25

    .line 668
    :cond_24
    goto :goto_2e

    .line 666
    :catch_25
    move-exception v0

    .line 667
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplayManagerServiceImpl"

    const-string/jumbo v2, "mWhetstoneActivityManager work abnormal"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_2e
    :goto_2e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mIsOnTouchHint:Z

    .line 671
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTouchHintLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_34
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mVideoDecoderFps:Ljava/util/List;

    if-eqz v1, :cond_5e

    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mIsOnTouchHint:Z

    if-eqz v1, :cond_5e

    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mIsVideoScene:Z

    if-nez v1, :cond_4a

    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mVideoHighFpsScene:Z

    if-eqz v1, :cond_5e

    iget v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLastVideoFps:I

    const/16 v2, 0x6e

    if-ge v1, v2, :cond_5e

    :cond_4a
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTouchHintTimer:Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;

    if-eqz v1, :cond_5e

    .line 674
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setVideoMaxRefreshRate(F)V

    .line 675
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTouchHintTimer:Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->handleEvent()V

    .line 676
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mIsOnTouchHint:Z

    .line 678
    :cond_5e
    monitor-exit v0

    goto :goto_63

    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_34 .. :try_end_62} :catchall_60

    throw v1

    .line 680
    :cond_63
    :goto_63
    return-void
.end method

.method public notifyTaskFocusChange(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;

    .line 903
    const-string v0, "android.graphics.cts"

    .line 905
    .local v0, "targetCtsPkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTaskFocusPkg:Ljava/lang/String;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTaskFocusPkg:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 906
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->updateSystemRequestVote(Z)V

    goto :goto_39

    .line 907
    :cond_1d
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTaskFocusPkg:Ljava/lang/String;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTaskFocusPkg:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTaskFocusPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 908
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->updateSystemRequestVote(Z)V

    .line 910
    :cond_39
    :goto_39
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTaskFocusPkg:Ljava/lang/String;

    .line 911
    return-void
.end method

.method public onBootCompleted()V
    .registers 4

    .line 1633
    const-class v0, Lcom/android/server/tof/TofManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tof/TofManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTofManagerInternal:Lcom/android/server/tof/TofManagerInternal;

    .line 1634
    invoke-static {}, Lcom/miui/server/greeze/GreezeManagerInternal;->getInstance()Lcom/miui/server/greeze/GreezeManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mGreezeManagerInternal:Lcom/miui/server/greeze/GreezeManagerInternal;

    .line 1635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mBootCompleted:Z

    .line 1636
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFoldPolicy:Lcom/android/server/display/MiuiFoldPolicy;

    if-eqz v0, :cond_1c

    .line 1637
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFoldPolicy:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiFoldPolicy;->initMiuiFoldPolicy()V

    .line 1639
    :cond_1c
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFlipPolicy:Lcom/android/server/display/MiuiFlipPolicy;

    if-eqz v0, :cond_25

    .line 1640
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFlipPolicy:Lcom/android/server/display/MiuiFlipPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiFlipPolicy;->initMiuiFlipPolicy()V

    .line 1642
    :cond_25
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mNeedHotplugBroadCast:Z

    if-eqz v0, :cond_39

    .line 1643
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 1645
    .local v0, "mWM":Landroid/view/IWindowManager;
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mIKeyguardLockedStateListener:Lcom/android/internal/policy/IKeyguardLockedStateListener;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->addKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_33

    .line 1648
    goto :goto_39

    .line 1646
    :catch_33
    move-exception v1

    .line 1647
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1651
    .end local v0  # "mWM":Landroid/view/IWindowManager;
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    return-void
.end method

.method public onCommand(Ljava/lang/String;)Z
    .registers 5
    .param p1, "cmd"  # Ljava/lang/String;

    .line 1797
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_90

    :cond_9
    goto :goto_62

    :sswitch_a
    const-string/jumbo v0, "set-individual-model-disable"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_63

    :sswitch_15
    const-string/jumbo v0, "touch-cover-protect-show"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    goto :goto_63

    :sswitch_20
    const-string/jumbo v0, "touch-cover-protect-hide"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    goto :goto_63

    :sswitch_2b
    const-string/jumbo v0, "set-force-train-enable"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto :goto_63

    :sswitch_36
    const-string/jumbo v0, "set-custom-curve-enable"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_63

    :sswitch_41
    const-string/jumbo v0, "set-force-train-disable"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    goto :goto_63

    :sswitch_4c
    const-string/jumbo v0, "set-individual-model-enable"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto :goto_63

    :sswitch_57
    const-string/jumbo v0, "set-custom-curve-disable"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_63

    :goto_62
    const/4 v0, -0x1

    :goto_63
    packed-switch v0, :pswitch_data_b2

    .line 1815
    return v2

    .line 1813
    :pswitch_67  #0x7
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerServiceImpl;->showTouchCoverProtectionRect(Z)Z

    move-result v0

    return v0

    .line 1811
    :pswitch_6c  #0x6
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerServiceImpl;->showTouchCoverProtectionRect(Z)Z

    move-result v0

    return v0

    .line 1809
    :pswitch_71  #0x5
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerServiceImpl;->setForceTrainEnabledOnCommand(Z)Z

    move-result v0

    return v0

    .line 1807
    :pswitch_76  #0x4
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerServiceImpl;->setForceTrainEnabledOnCommand(Z)Z

    move-result v0

    return v0

    .line 1805
    :pswitch_7b  #0x3
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerServiceImpl;->setIndividualModelEnabledOnCommand(Z)Z

    move-result v0

    return v0

    .line 1803
    :pswitch_80  #0x2
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerServiceImpl;->setIndividualModelEnabledOnCommand(Z)Z

    move-result v0

    return v0

    .line 1801
    :pswitch_85  #0x1
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerServiceImpl;->setCustomCurveEnabledOnCommand(Z)Z

    move-result v0

    return v0

    .line 1799
    :pswitch_8a  #0x0
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerServiceImpl;->setCustomCurveEnabledOnCommand(Z)Z

    move-result v0

    return v0

    nop

    :sswitch_data_90
    .sparse-switch
        -0x5ae158c7 -> :sswitch_57
        -0x4e160510 -> :sswitch_4c
        -0x3798252a -> :sswitch_41
        -0x2a45acee -> :sswitch_36
        -0x2922482b -> :sswitch_2b
        -0x1c406adc -> :sswitch_20
        -0x1c3b6d21 -> :sswitch_15
        0x4ee3fb1b -> :sswitch_a
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_8a  #00000000
        :pswitch_85  #00000001
        :pswitch_80  #00000002
        :pswitch_7b  #00000003
        :pswitch_76  #00000004
        :pswitch_71  #00000005
        :pswitch_6c  #00000006
        :pswitch_67  #00000007
    .end packed-switch
.end method

.method public onEarlyInteractivityChange(Z)V
    .registers 3
    .param p1, "interactive"  # Z

    .line 1697
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mBootCompleted:Z

    if-eqz v0, :cond_21

    .line 1698
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTofManagerInternal:Lcom/android/server/tof/TofManagerInternal;

    if-eqz v0, :cond_d

    .line 1699
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mTofManagerInternal:Lcom/android/server/tof/TofManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/tof/TofManagerInternal;->onEarlyInteractivityChange(Z)V

    .line 1701
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayFeatureManagerServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    if-eqz v0, :cond_16

    .line 1702
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayFeatureManagerServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->onEarlyInteractivityChange(Z)V

    .line 1706
    :cond_16
    sget-boolean v0, Lcom/android/server/display/DisplayManagerServiceImpl;->IS_FOLDABLE_OR_FLIP_DEVICE:Z

    if-eqz v0, :cond_21

    .line 1707
    invoke-static {}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->getInstance()Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->onEarlyInteractivityChange(Z)V

    .line 1710
    :cond_21
    return-void
.end method

.method public onHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1822
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1823
    return-void

    .line 1825
    :cond_7
    const-string v0, "  set-custom-curve-[enable|disable]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1826
    const-string v0, "    Enable or disable custom curve"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1827
    const-string v0, "  set-individual-model-[enable|disable]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1828
    const-string v0, "    Enable or disable individual model"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1829
    const-string v0, "  set-force-train-[enable|disable]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1830
    const-string v0, "    Enable or disable force train"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1831
    const-string v0, "  touch-cover-protect-[show|hide]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1832
    const-string v0, "    Show or hide the touch cover protection rect"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1833
    return-void
.end method

.method public onTransact(Landroid/os/Handler;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "displayControllerHandler"  # Landroid/os/Handler;
    .param p2, "code"  # I
    .param p3, "data"  # Landroid/os/Parcel;
    .param p4, "reply"  # Landroid/os/Parcel;
    .param p5, "flags"  # I

    .line 493
    const v0, 0xfffffe

    if-ne p2, v0, :cond_a

    .line 494
    invoke-virtual {p0, p1, p3}, Lcom/android/server/display/DisplayManagerServiceImpl;->resetAutoBrightnessShortModel(Landroid/os/Handler;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 495
    :cond_a
    const v0, 0xfffffd

    if-ne p2, v0, :cond_14

    .line 496
    invoke-direct {p0, p3}, Lcom/android/server/display/DisplayManagerServiceImpl;->setBrightnessRate(Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 497
    :cond_14
    const v0, 0xfffffc

    if-ne p2, v0, :cond_1e

    .line 498
    invoke-virtual {p0, p3, p4}, Lcom/android/server/display/DisplayManagerServiceImpl;->getScreenEffectAvailableDisplay(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 499
    :cond_1e
    const v0, 0xfffffb

    if-ne p2, v0, :cond_28

    .line 500
    invoke-virtual {p0, p3, p4}, Lcom/android/server/display/DisplayManagerServiceImpl;->getScreenEffectDisplayIndex(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 501
    :cond_28
    const v0, 0xfffffa

    if-ne p2, v0, :cond_32

    .line 502
    invoke-direct {p0, p3}, Lcom/android/server/display/DisplayManagerServiceImpl;->setVideoInformation(Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 503
    :cond_32
    const v0, 0xfffff9

    if-ne p2, v0, :cond_3c

    .line 504
    invoke-direct {p0, p3}, Lcom/android/server/display/DisplayManagerServiceImpl;->handleGalleryHdrRequest(Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 505
    :cond_3c
    const v0, 0xfffff8

    if-ne p2, v0, :cond_46

    .line 506
    invoke-direct {p0, p3}, Lcom/android/server/display/DisplayManagerServiceImpl;->appRequestChangeSceneRefreshRate(Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 507
    :cond_46
    const v0, 0xfffff7

    if-ne p2, v0, :cond_50

    .line 508
    invoke-virtual {p0, p3, p4}, Lcom/android/server/display/DisplayManagerServiceImpl;->getDozeBrightnessThreshold(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 509
    :cond_50
    const v0, 0xfffff6

    if-ne p2, v0, :cond_5a

    .line 510
    invoke-direct {p0, p3}, Lcom/android/server/display/DisplayManagerServiceImpl;->updateCineLookBoostState(Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 511
    :cond_5a
    const v0, 0xfffff5

    if-ne p2, v0, :cond_64

    .line 512
    invoke-direct {p0, p3}, Lcom/android/server/display/DisplayManagerServiceImpl;->setBrightnessBoost(Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 513
    :cond_64
    const v0, 0xfffff4

    if-ne p2, v0, :cond_6e

    .line 514
    invoke-direct {p0, p3, p4}, Lcom/android/server/display/DisplayManagerServiceImpl;->setMultiDisplaysLowRefreshRate(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 515
    :cond_6e
    const v0, 0xfffff3

    if-ne p2, v0, :cond_78

    .line 516
    invoke-direct {p0, p3}, Lcom/android/server/display/DisplayManagerServiceImpl;->notifyScreenOffAnimatorEnd(Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 517
    :cond_78
    const v0, 0xfffff2

    if-ne p2, v0, :cond_82

    .line 518
    invoke-virtual {p0, p3, p4}, Lcom/android/server/display/DisplayManagerServiceImpl;->getBrightnessAnimateValue(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 519
    :cond_82
    const v0, 0xfffff1

    if-ne p2, v0, :cond_8c

    .line 520
    invoke-virtual {p0, p3}, Lcom/android/server/display/DisplayManagerServiceImpl;->setTemporarySliderValue(Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 521
    :cond_8c
    const v0, 0xfffff0

    if-ne p2, v0, :cond_96

    .line 522
    invoke-virtual {p0, p3}, Lcom/android/server/display/DisplayManagerServiceImpl;->setSliderValue(Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 523
    :cond_96
    const v0, 0xffffef

    if-ne p2, v0, :cond_a0

    .line 524
    invoke-virtual {p0, p3, p4}, Lcom/android/server/display/DisplayManagerServiceImpl;->getIntBrightnessValue(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 525
    :cond_a0
    const v0, 0xffffee

    if-ne p2, v0, :cond_aa

    .line 526
    invoke-virtual {p0, p3}, Lcom/android/server/display/DisplayManagerServiceImpl;->setManualMaxBrightness(Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 527
    :cond_aa
    const v0, 0xffffed

    if-ne p2, v0, :cond_b4

    .line 528
    invoke-virtual {p0, p3}, Lcom/android/server/display/DisplayManagerServiceImpl;->setGrayScaleHist(Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 529
    :cond_b4
    const v0, 0xffffec

    if-ne p2, v0, :cond_be

    .line 530
    invoke-virtual {p0, p3, p4}, Lcom/android/server/display/DisplayManagerServiceImpl;->GetCurrentGrayScale(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 531
    :cond_be
    const v0, 0xffffeb

    if-ne p2, v0, :cond_c8

    .line 532
    invoke-virtual {p0, p3, p4}, Lcom/android/server/display/DisplayManagerServiceImpl;->GetAccumulatedGrayValue(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 534
    :cond_c8
    const/4 v0, 0x0

    return v0
.end method

.method protected registerDeathCallbackLocked(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "flag"  # I

    .line 1423
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mClientDeathCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has already registered."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    return-void

    .line 1427
    :cond_27
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mClientDeathCallbacks:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/display/DisplayManagerServiceImpl$ClientDeathCallback;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayManagerServiceImpl$ClientDeathCallback;-><init>(Lcom/android/server/display/DisplayManagerServiceImpl;Landroid/os/IBinder;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    return-void
.end method

.method public remapBrightnessForCmd(F)F
    .registers 6
    .param p1, "brightness"  # F

    .line 2033
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerServiceImpl;->getMinBrightness()F

    move-result v0

    .line 2034
    .local v0, "minBrightness":F
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerServiceImpl;->getCurrentMaxBrightness()F

    move-result v1

    .line 2035
    .local v1, "maxBrightness":F
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v0, v1, v2, v3, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p1

    .line 2037
    return p1
.end method

.method public removeBinderProxy(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "bpBinder"  # Landroid/os/IBinder;
    .param p2, "uid"  # I

    .line 1931
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mGreezeManagerInternal:Lcom/miui/server/greeze/GreezeManagerInternal;

    if-eqz v0, :cond_b

    .line 1932
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mGreezeManagerInternal:Lcom/miui/server/greeze/GreezeManagerInternal;

    const-string v1, "IDisplayManagerCallback"

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/server/greeze/GreezeManagerInternal;->removeBinderProxy(Landroid/os/IBinder;ILjava/lang/String;)Z

    .line 1934
    :cond_b
    return-void
.end method

.method public reportRotationEvent(I)V
    .registers 3
    .param p1, "rotation"  # I

    .line 2095
    invoke-static {}, Lcom/android/server/display/statistics/DisplayUsageStates;->getInstance()Lcom/android/server/display/statistics/DisplayUsageStates;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/statistics/DisplayUsageStates;->reportRotationEvent(I)V

    .line 2096
    return-void
.end method

.method resetAutoBrightnessShortModel(Landroid/os/Handler;Landroid/os/Parcel;)Z
    .registers 4
    .param p1, "displayControllerHandler"  # Landroid/os/Handler;
    .param p2, "data"  # Landroid/os/Parcel;

    .line 1004
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerServiceImpl;->resetAutoBrightnessShortModelInternal(Landroid/os/Handler;)V

    .line 1006
    const/4 v0, 0x1

    return v0
.end method

.method public resetCount()V
    .registers 2

    .line 2090
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDelaySetDisplayLayerStackCount:I

    .line 2091
    return-void
.end method

.method public screenTurningOff()V
    .registers 2

    .line 1676
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mBootCompleted:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFoldPolicy:Lcom/android/server/display/MiuiFoldPolicy;

    if-nez v0, :cond_9

    goto :goto_f

    .line 1679
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFoldPolicy:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiFoldPolicy;->screenTurningOff()V

    .line 1680
    return-void

    .line 1677
    :cond_f
    :goto_f
    return-void
.end method

.method public screenTurningOn()V
    .registers 2

    .line 1668
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mBootCompleted:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFoldPolicy:Lcom/android/server/display/MiuiFoldPolicy;

    if-nez v0, :cond_9

    goto :goto_f

    .line 1671
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFoldPolicy:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiFoldPolicy;->screenTurningOn()V

    .line 1672
    return-void

    .line 1669
    :cond_f
    :goto_f
    return-void
.end method

.method public sendDimStateToDisplayManager(Z)V
    .registers 7
    .param p1, "enable"  # Z

    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, "enableStatus":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDimStateToDisplayManager  enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayManagerServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    move v0, p1

    .line 687
    sget-boolean v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mMoveFrameRateStrategyUp:Z

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    if-eqz v1, :cond_3a

    .line 688
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, p1, v2}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setForceDisableIdleRefreshRate(ZI)V

    .line 689
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    const/16 v3, 0x106

    const-string v4, "PowerManager"

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->setMiRefreshRateInfoFlags(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 692
    :cond_3a
    return-void
.end method

.method public setDeviceStateLocked(I)V
    .registers 3
    .param p1, "state"  # I

    .line 1731
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mBootCompleted:Z

    if-nez v0, :cond_5

    .line 1732
    return-void

    .line 1734
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFoldPolicy:Lcom/android/server/display/MiuiFoldPolicy;

    if-eqz v0, :cond_e

    .line 1735
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFoldPolicy:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/MiuiFoldPolicy;->setDeviceStateLocked(I)V

    .line 1737
    :cond_e
    invoke-static {}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->getInstance()Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->notifyDeviceStateChanged(I)V

    .line 1738
    return-void
.end method

.method public setFpsChangeReason()V
    .registers 6

    .line 1325
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    if-nez v0, :cond_9

    goto :goto_1e

    .line 1328
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    .line 1329
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getFpsSwitchReason()I

    move-result v2

    .line 1328
    const/16 v3, 0x114

    const-string/jumbo v4, "reason"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->setMiRefreshRateInfoFlags(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 1330
    return-void

    .line 1326
    :cond_1e
    :goto_1e
    return-void
.end method

.method public setGrayScaleHist(Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"  # Landroid/os/Parcel;

    .line 1170
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1172
    .local v0, "token":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    move v2, v3

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 1175
    .local v2, "EnableGrayHist":Z
    :goto_13
    :try_start_13
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v4, v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->setGrayScaleHist(Z)V

    .line 1176
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mSubDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v4, :cond_21

    .line 1177
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mSubDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v4, v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->setGrayScaleHist(Z)V
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_26

    .line 1180
    :cond_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1181
    nop

    .line 1182
    return v3

    .line 1180
    :catchall_26
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1181
    throw v3
.end method

.method public setManualMaxBrightness(Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"  # Landroid/os/Parcel;

    .line 1137
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1140
    .local v0, "token":J
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1141
    .local v2, "displayId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 1142
    .local v3, "manualMaxBrightness":F
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v4, v3}, Lcom/android/server/display/DisplayPowerControllerImpl;->getMaxManualBrightness(F)F

    move-result v4

    .line 1143
    .local v4, "brightness":F
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v5, :cond_27

    .line 1144
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v6, "display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    iput-object v5, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1146
    :cond_27
    const-string v5, "DisplayManagerServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBrightness displayId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", manualMaxBrightness:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5, v2, v4}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V
    :try_end_4f
    .catchall {:try_start_9 .. :try_end_4f} :catchall_55

    .line 1150
    .end local v2  # "displayId":I
    .end local v3  # "manualMaxBrightness":F
    .end local v4  # "brightness":F
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1151
    nop

    .line 1152
    const/4 v2, 0x1

    return v2

    .line 1150
    :catchall_55
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1151
    throw v2
.end method

.method public setSceneMaxRefreshRate(IF)V
    .registers 6
    .param p1, "displayId"  # I
    .param p2, "maxFrameRate"  # F

    .line 1282
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1283
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 1284
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v1, :cond_d

    .line 1285
    monitor-exit v0

    return-void

    .line 1287
    :cond_d
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setSceneMaxRefreshRate(IF)V

    .line 1288
    .end local v1  # "display":Lcom/android/server/display/LogicalDisplay;
    monitor-exit v0

    .line 1289
    return-void

    .line 1288
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public setSliderValue(Landroid/os/Parcel;)Z
    .registers 18
    .param p1, "data"  # Landroid/os/Parcel;

    .line 1100
    move-object/from16 v1, p0

    const-string v2, ", callingPid:"

    const-string v3, ", logicalNit:"

    const-string v4, ", sliderVal:"

    const-string/jumbo v5, "setSliderValue: displayId:"

    const-string v6, "DisplayManagerServiceImpl"

    iget-object v0, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    const-string v8, "Permission required to control display brightness"

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    move-object/from16 v7, p1

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1104
    .local v8, "token":J
    const/4 v10, 0x0

    .line 1105
    .local v10, "displayId":I
    const/4 v11, 0x0

    .line 1106
    .local v11, "sliderVal":F
    const/4 v12, 0x0

    .line 1108
    .local v12, "logicalNit":F
    :try_start_24
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move v10, v0

    .line 1109
    invoke-virtual {v7}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    move v11, v0

    .line 1110
    invoke-static {v11}, Lcom/android/server/display/RefactorBrightnessUtil;->sliderToLogicalBrightness(F)F

    move-result v0

    move v12, v0

    .line 1111
    iget-object v0, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    iget-object v13, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 1112
    invoke-virtual {v13}, Lcom/android/server/display/DisplayPowerControllerImpl;->getCurrentAmbientLux()F

    move-result v13

    .line 1111
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v0, v13, v12, v15, v14}, Lcom/android/server/display/DisplayPowerControllerImpl;->getTargetBrightness(FFZZ)F

    move-result v0

    .line 1114
    .local v0, "brightness":F
    iget-object v13, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mSubDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v13, :cond_51

    .line 1115
    iget-object v13, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mSubDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    iget-object v14, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 1116
    invoke-virtual {v14}, Lcom/android/server/display/DisplayPowerControllerImpl;->getCurrentAmbientLux()F

    move-result v14

    .line 1115
    const/4 v7, 0x0

    invoke-virtual {v13, v14, v12, v15, v7}, Lcom/android/server/display/DisplayPowerControllerImpl;->getTargetBrightness(FFZZ)F

    .line 1119
    :cond_51
    iget-object v7, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v7, :cond_61

    .line 1120
    iget-object v7, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v13, "display"

    invoke-virtual {v7, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayManager;

    iput-object v7, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1122
    :cond_61
    iget-object v7, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v7}, Lcom/android/server/display/DisplayPowerControllerImpl;->isRearScreenDevice()Z

    move-result v7

    if-eqz v7, :cond_70

    .line 1123
    iget-object v7, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v13, 0x0

    invoke-virtual {v7, v13, v0}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    goto :goto_75

    .line 1125
    :cond_70
    iget-object v7, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7, v10, v0}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V
    :try_end_75
    .catchall {:try_start_24 .. :try_end_75} :catchall_aa

    .line 1128
    .end local v0  # "brightness":F
    :goto_75
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1131
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1129
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    nop

    .line 1133
    return v15

    .line 1128
    :catchall_aa
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1129
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1131
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1129
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    throw v0
.end method

.method public setTemporarySliderValue(Landroid/os/Parcel;)Z
    .registers 19
    .param p1, "data"  # Landroid/os/Parcel;

    .line 1068
    move-object/from16 v1, p0

    const-string v2, ", callingPid:"

    const-string v3, ", logicalNit:"

    const-string v4, ", sliderVal:"

    const-string/jumbo v5, "setTemporarySliderValue: displayId:"

    const-string v6, "DisplayManagerServiceImpl"

    iget-object v0, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    const-string v8, "Permission required to control display brightness"

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const-string v0, "android.view.android.hardware.display.IDisplayManager"

    move-object/from16 v7, p1

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1072
    .local v8, "token":J
    const/4 v10, 0x0

    .line 1073
    .local v10, "displayId":I
    const/4 v11, 0x0

    .line 1074
    .local v11, "sliderVal":F
    const/4 v12, 0x0

    .line 1076
    .local v12, "logicalNit":F
    :try_start_24
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move v10, v0

    .line 1077
    invoke-virtual {v7}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    move v11, v0

    .line 1078
    invoke-static {v11}, Lcom/android/server/display/RefactorBrightnessUtil;->sliderToLogicalBrightness(F)F

    move-result v0

    move v12, v0

    .line 1079
    iget-object v0, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    iget-object v13, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 1080
    invoke-virtual {v13}, Lcom/android/server/display/DisplayPowerControllerImpl;->getCurrentAmbientLux()F

    move-result v13

    .line 1079
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v0, v13, v12, v15, v14}, Lcom/android/server/display/DisplayPowerControllerImpl;->getTargetBrightness(FFZZ)F

    move-result v0

    .line 1082
    .local v0, "brightness":F
    iget-object v13, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v13, :cond_54

    .line 1083
    iget-object v13, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    move/from16 v16, v14

    const-string v14, "display"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/display/DisplayManager;

    iput-object v13, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    goto :goto_56

    .line 1082
    :cond_54
    move/from16 v16, v14

    .line 1085
    :goto_56
    iget-object v13, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v13}, Lcom/android/server/display/DisplayPowerControllerImpl;->isRearScreenDevice()Z

    move-result v13

    if-eqz v13, :cond_64

    .line 1086
    iget-object v13, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v13, v15, v0}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IF)V

    goto :goto_69

    .line 1088
    :cond_64
    iget-object v13, v1, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v13, v10, v0}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IF)V
    :try_end_69
    .catchall {:try_start_24 .. :try_end_69} :catchall_9e

    .line 1091
    .end local v0  # "brightness":F
    :goto_69
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1094
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1092
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    nop

    .line 1096
    return v16

    .line 1091
    :catchall_9e
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1092
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1094
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1092
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    throw v0
.end method

.method public setUpDisplayPowerControllerImpl(Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 2
    .param p1, "impl"  # Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 335
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 336
    return-void
.end method

.method public setUpSubDisplayPowerControllerImpl(Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 2
    .param p1, "impl"  # Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 342
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mSubDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 343
    return-void
.end method

.method public shouldDeviceBeSleep(Landroid/util/SparseBooleanArray;IIZ)Z
    .registers 9
    .param p1, "deviceStatesOnWhichToSleep"  # Landroid/util/SparseBooleanArray;
    .param p2, "pendingState"  # I
    .param p3, "currentState"  # I
    .param p4, "sleepDevice"  # Z

    .line 1962
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1964
    .local v0, "shouldDeviceBeSleep":Z
    if-eqz v0, :cond_16

    iget v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mWakeOrSleepDevice:I

    if-nez v1, :cond_16

    .line 1965
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerServiceImpl;->updateWakingOrSleepingDeviceLocked(I)V

    .line 1966
    const-string v1, "DisplayManagerServiceImpl"

    const-string/jumbo v2, "shouldDeviceBeSleep by fast device state transition"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    :cond_16
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p4, :cond_23

    if-eqz v0, :cond_21

    iget v3, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mWakeOrSleepDevice:I

    if-nez v3, :cond_21

    goto :goto_23

    :cond_21
    move v3, v1

    goto :goto_24

    :cond_23
    :goto_23
    move v3, v2

    .line 1970
    .end local v0  # "shouldDeviceBeSleep":Z
    .local v3, "shouldDeviceBeSleep":Z
    :goto_24
    invoke-virtual {p0, p3}, Lcom/android/server/display/DisplayManagerServiceImpl;->shouldDeviceKeepWake(I)Z

    move-result v0

    xor-int/2addr v0, v2

    and-int/2addr v0, v3

    .line 1971
    .end local v3  # "shouldDeviceBeSleep":Z
    .restart local v0  # "shouldDeviceBeSleep":Z
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFlipPolicy:Lcom/android/server/display/MiuiFlipPolicy;

    if-eqz v2, :cond_36

    if-eqz v0, :cond_36

    .line 1972
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mMiuiFlipPolicy:Lcom/android/server/display/MiuiFlipPolicy;

    invoke-virtual {v2}, Lcom/android/server/display/MiuiFlipPolicy;->shouldDeviceBeSleep()Z

    move-result v0

    .line 1974
    :cond_36
    if-eqz v0, :cond_3b

    .line 1975
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerServiceImpl;->updateWakingOrSleepingDeviceLocked(I)V

    .line 1977
    :cond_3b
    return v0
.end method

.method public shouldDeviceBeWake(Landroid/util/SparseBooleanArray;I)Z
    .registers 6
    .param p1, "deviceStatesOnWhichToWakeUp"  # Landroid/util/SparseBooleanArray;
    .param p2, "pendingState"  # I

    .line 1949
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mWakeOrSleepDevice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 1951
    .local v1, "shouldDeviceBeWake":Z
    :goto_d
    if-eqz v1, :cond_1b

    .line 1952
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerServiceImpl;->updateWakingOrSleepingDeviceLocked(I)V

    .line 1953
    const-string v0, "DisplayManagerServiceImpl"

    const-string/jumbo v2, "shouldDeviceBeWoken by fast device state transition"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_1b
    return v1
.end method

.method public shouldDeviceKeepWake(I)Z
    .registers 4
    .param p1, "deviceState"  # I

    .line 1900
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mOpenedReverseDeviceStates:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mOpenedReversePresentationDeviceStates:[I

    if-nez v0, :cond_26

    .line 1901
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11030047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mOpenedReverseDeviceStates:[I

    .line 1903
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11030048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mOpenedReversePresentationDeviceStates:[I

    .line 1907
    :cond_26
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mOpenedReverseDeviceStates:[I

    .line 1908
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mOpenedReversePresentationDeviceStates:[I

    .line 1909
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_3c

    :cond_3a
    const/4 v0, 0x0

    goto :goto_3d

    :cond_3c
    :goto_3c
    const/4 v0, 0x1

    .line 1907
    :goto_3d
    return v0
.end method

.method public shouldUpdateDisplayModeSpecs(Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V
    .registers 10
    .param p1, "modeSpecs"  # Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 1340
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    if-nez v0, :cond_9

    goto :goto_3f

    .line 1344
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->setDesiredDisplayModeSpecsAsync(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V

    .line 1346
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1347
    :try_start_13
    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v3, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    iget-boolean v4, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    iget-object v5, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v6, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v7, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->idleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    .line 1355
    .local v2, "desired":Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-virtual {v0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 1358
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplay;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 1361
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1362
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v3

    .line 1361
    const/4 v4, 0x0

    invoke-interface {v0, v3, v2, v4}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->onDesiredDisplayModeSpecsChanged(ILcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;Landroid/util/SparseArray;)V

    .line 1363
    .end local v2  # "desired":Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    monitor-exit v1

    .line 1364
    return-void

    .line 1363
    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_13 .. :try_end_3e} :catchall_3c

    throw v0

    .line 1341
    :cond_3f
    :goto_3f
    return-void
.end method

.method public startCbmStatsJob()V
    .registers 2

    .line 1742
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_9

    .line 1743
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->startCbmStatsJob()V

    .line 1745
    :cond_9
    return-void
.end method

.method public temporaryBrightnessStartChange(F)V
    .registers 3
    .param p1, "brightness"  # F

    .line 1565
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_9

    .line 1566
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl;->temporaryBrightnessStartChange(F)V

    .line 1568
    :cond_9
    return-void
.end method

.method protected unregisterDeathCallbackLocked(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;

    .line 1431
    if-eqz p1, :cond_10

    .line 1432
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mClientDeathCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerServiceImpl$ClientDeathCallback;

    .line 1433
    .local v0, "deathCallback":Lcom/android/server/display/DisplayManagerServiceImpl$ClientDeathCallback;
    if-eqz v0, :cond_10

    .line 1434
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1437
    .end local v0  # "deathCallback":Lcom/android/server/display/DisplayManagerServiceImpl$ClientDeathCallback;
    :cond_10
    return-void
.end method

.method public updateDefaultDisplaySupportMode()Landroid/view/SurfaceControl$DynamicDisplayInfo;
    .registers 6

    .line 1309
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1310
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    if-nez v1, :cond_e

    .line 1311
    :cond_b
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerServiceImpl;->updateDefaultDisplayLocked()V

    .line 1313
    :cond_e
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-nez v1, :cond_15

    .line 1314
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1316
    :cond_15
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 1317
    .local v1, "address":Landroid/view/DisplayAddress;
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2a

    .line 1318
    move-object v0, v1

    check-cast v0, Landroid/view/DisplayAddress$Physical;

    .line 1319
    .local v0, "physicalAddress":Landroid/view/DisplayAddress$Physical;
    invoke-virtual {v0}, Landroid/view/DisplayAddress$Physical;->getPhysicalDisplayId()J

    move-result-wide v2

    .line 1320
    .local v2, "physicalDisplayId":J
    invoke-static {v2, v3}, Landroid/view/SurfaceControl;->getDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object v4

    return-object v4

    .line 1317
    .end local v0  # "physicalAddress":Landroid/view/DisplayAddress$Physical;
    .end local v1  # "address":Landroid/view/DisplayAddress;
    .end local v2  # "physicalDisplayId":J
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public updateDeviceDisplayChanged(Lcom/android/server/display/DisplayDevice;I)V
    .registers 8
    .param p1, "device"  # Lcom/android/server/display/DisplayDevice;
    .param p2, "event"  # I

    .line 347
    instance-of v0, p1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v0, :cond_46

    .line 348
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_7
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 351
    .local v1, "info":Lcom/android/server/display/DisplayDeviceInfo;
    const/4 v2, 0x2

    packed-switch p2, :pswitch_data_8a

    :pswitch_f  #0x2
    goto :goto_41

    .line 361
    :pswitch_10  #0x3
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 362
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 363
    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v3, v2, :cond_25

    .line 364
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerServiceImpl;->sendHotplugBroadcast(Z)V

    .line 365
    :cond_25
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerServiceImpl;->updateScreenEffectDisplayIndexLocked()[I

    goto :goto_41

    .line 353
    :pswitch_29  #0x1
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 354
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayDevices:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v3, v2, :cond_3e

    .line 356
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerServiceImpl;->sendHotplugBroadcast(Z)V

    .line 357
    :cond_3e
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerServiceImpl;->updateScreenEffectDisplayIndexLocked()[I

    .line 371
    .end local v1  # "info":Lcom/android/server/display/DisplayDeviceInfo;
    :cond_41
    :goto_41
    monitor-exit v0

    goto :goto_89

    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_43

    throw v1

    .line 372
    :cond_46
    instance-of v0, p1, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    if-eqz v0, :cond_89

    .line 373
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 374
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    if-eqz v0, :cond_89

    .line 375
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mSecurityManager:Lmiui/security/SecurityManagerInternal;

    if-nez v1, :cond_5e

    .line 376
    const-class v1, Lmiui/security/SecurityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/SecurityManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mSecurityManager:Lmiui/security/SecurityManagerInternal;

    .line 378
    :cond_5e
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mSecurityManager:Lmiui/security/SecurityManagerInternal;

    if-eqz v1, :cond_6f

    .line 379
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mSecurityManager:Lmiui/security/SecurityManagerInternal;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, p2}, Lmiui/security/SecurityManagerInternal;->onDisplayDeviceEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;I)V

    .line 382
    :cond_6f
    iget-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_82

    iget-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    const-string/jumbo v2, "screen-mirror-ScreenRecorder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_89

    .line 383
    :cond_82
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerServiceStub;->updateScreenShareProjectFlag()V

    .line 388
    .end local v0  # "info":Lcom/android/server/display/DisplayDeviceInfo;
    :cond_89
    :goto_89
    return-void

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_29  #00000001
        :pswitch_f  #00000002
        :pswitch_10  #00000003
    .end packed-switch
.end method

.method public updateDisplayState(Lcom/android/server/display/DisplayDevice;IF)I
    .registers 5
    .param p1, "device"  # Lcom/android/server/display/DisplayDevice;
    .param p2, "state"  # I
    .param p3, "brightnessState"  # F

    .line 2008
    const/high16 v0, -0x40800000  # -1.0f

    cmpl-float v0, p3, v0

    if-nez v0, :cond_19

    .line 2009
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceStub;->get()Lcom/android/server/power/PowerManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerServiceStub;->isInHangUpState()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2010
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/DisplayManagerServiceImpl;->isInPowerGroup(ILcom/android/server/display/DisplayDevice;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2011
    const/4 v0, 0x1

    return v0

    .line 2014
    :cond_19
    return p2
.end method

.method public updateInputScene(IILjava/lang/String;)Z
    .registers 6
    .param p1, "cookie"  # I
    .param p2, "status"  # I
    .param p3, "targetPkg"  # Ljava/lang/String;

    .line 704
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    if-nez v0, :cond_b

    .line 705
    :cond_8
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerServiceImpl;->updateDefaultDisplayLocked()V

    .line 707
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_49

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateInputScene: , status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetPkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultLocalDisplayDevice:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDefaultDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->setMiRefreshRateInfoFlags(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 712
    const/4 v0, 0x1

    return v0

    .line 714
    :cond_49
    const/4 v0, 0x0

    return v0
.end method

.method public updateResolutionSwitchList(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1237
    .local p1, "resolutionSwitchProtectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "resolutionSwitchBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DisplayManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/DisplayManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayManagerServiceImpl;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1243
    return-void
.end method

.method public updateRhythmicAppCategoryList(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1231
    .local p1, "imageAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "readAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mDisplayFeatureManagerServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->updateRhythmicAppCategoryList(Ljava/util/List;Ljava/util/List;)V

    .line 1232
    return-void
.end method

.method public updateWakingOrSleepingDeviceLocked(I)V
    .registers 3
    .param p1, "isSleepingOrWakingDevice"  # I

    .line 1993
    iget v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mWakeOrSleepDevice:I

    if-eq v0, p1, :cond_6

    .line 1994
    iput p1, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mWakeOrSleepDevice:I

    .line 1996
    :cond_6
    return-void
.end method

.method public waitingToSleepDevice(ZZZ)Z
    .registers 5
    .param p1, "waitingToSleepDevice"  # Z
    .param p2, "interactive"  # Z
    .param p3, "bootCompleted"  # Z

    .line 1989
    iget v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mWakeOrSleepDevice:I

    if-nez v0, :cond_c

    if-eqz p2, :cond_c

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mBootCompleted:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public waitingToWakeDevice(ZZZ)Z
    .registers 6
    .param p1, "waitingToWakeDevice"  # Z
    .param p2, "interactive"  # Z
    .param p3, "bootCompleted"  # Z

    .line 1983
    iget v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mWakeOrSleepDevice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    if-nez p2, :cond_c

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl;->mBootCompleted:Z

    if-eqz v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method
