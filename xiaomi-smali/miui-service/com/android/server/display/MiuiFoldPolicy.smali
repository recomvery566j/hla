# classes.dex

.class public Lcom/android/server/display/MiuiFoldPolicy;
.super Ljava/lang/Object;
.source "MiuiFoldPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MiuiFoldPolicy$MiuiFoldPolicyHandler;,
        Lcom/android/server/display/MiuiFoldPolicy$SettingsObserver;,
        Lcom/android/server/display/MiuiFoldPolicy$UserSwitchReceiver;
    }
.end annotation


# static fields
.field private static final CLOSE_LID_DISPLAY_SETTING:Ljava/lang/String; = "close_lid_display_setting"

.field private static final DEBUG:Ljava/lang/Boolean;

.field private static final FOLD_GESTURE_ANGLE_THRESHOLD:I = 0x52

.field private static final MIUI_OPTIMIZATION:Ljava/lang/String; = "miui_optimization"

.field private static final MSG_RELEASE_WINDOW_BY_SCREEN_OFF:I = 0x2

.field private static final MSG_SCREEN_TURNING_OFF:I = 0x6

.field private static final MSG_SCREEN_TURNING_ON:I = 0x5

.field private static final MSG_SHOW_OR_RELEASE_SWIPE_UP_WINDOW:I = 0x1

.field private static final MSG_UPDATE_DEVICE_STATE:I = 0x3

.field private static final MSG_USER_SWITCH:I = 0x4

.field private static final SETTING_EVENT_INVALID:I = -0x1

.field private static final SETTING_EVENT_KEEP_ON:I = 0x2

.field private static final SETTING_EVENT_SCREEN_OFF:I = 0x0

.field private static final SETTING_EVENT_SMART:I = 0x3

.field private static final SETTING_EVENT_SWIPE_UP:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MiuiFoldPolicy"

.field public static final TYPE_HINGE_STATE:I = 0x1fa268f

.field private static final VIRTUAL_CAMERA_BOUNDARY:I = 0x64


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mContext:Landroid/content/Context;

.field private mFoldGestureAngleThreshold:I

.field private mHandler:Landroid/os/Handler;

.field private mIsCtsMode:Z

.field private mIsDeviceProvisioned:Z

.field private mMiHingeAngleSensor:Landroid/hardware/Sensor;

.field private mMiHingeAngleSensorEnabled:Z

.field private final mMiHingeAngleSensorListener:Landroid/hardware/SensorEventListener;

.field private mNeedOffDueToFoldGesture:Z

.field private mNeedReleaseByScreenTurningOn:Z

.field private mNeedReleaseSwipeUpWindow:Z

.field private mNeedShowSwipeUpWindow:Z

.field private final mOpeningCameraID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreState:I

.field private mScreenStateAfterFold:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Lcom/android/server/display/MiuiFoldPolicy$SettingsObserver;

.field private mState:I

.field private final mStrictFoldedDeviceStates:[I

.field private mSwipeUpWindow:Lcom/android/server/display/SwipeUpWindow;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mTentDeviceStates:[I

.field private mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFoldGestureAngleThreshold(Lcom/android/server/display/MiuiFoldPolicy;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mFoldGestureAngleThreshold:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/MiuiFoldPolicy;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpeningCameraID(Lcom/android/server/display/MiuiFoldPolicy;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mOpeningCameraID:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmNeedOffDueToFoldGesture(Lcom/android/server/display/MiuiFoldPolicy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mNeedOffDueToFoldGesture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseSwipeUpWindow(Lcom/android/server/display/MiuiFoldPolicy;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/MiuiFoldPolicy;->releaseSwipeUpWindow(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowOrReleaseSwipeUpWindow(Lcom/android/server/display/MiuiFoldPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MiuiFoldPolicy;->showOrReleaseSwipeUpWindow()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCtsMode(Lcom/android/server/display/MiuiFoldPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MiuiFoldPolicy;->updateCtsMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDeviceProVisioned(Lcom/android/server/display/MiuiFoldPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MiuiFoldPolicy;->updateDeviceProVisioned()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFoldGestureAngleThreshold(Lcom/android/server/display/MiuiFoldPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MiuiFoldPolicy;->updateFoldGestureAngleThreshold()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateScreenStateAfterFold(Lcom/android/server/display/MiuiFoldPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MiuiFoldPolicy;->updateScreenStateAfterFold()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSettings(Lcom/android/server/display/MiuiFoldPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MiuiFoldPolicy;->updateSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/MiuiFoldPolicy;->DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mPreState:I

    .line 68
    iput v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mState:I

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mOpeningCameraID:Ljava/util/Set;

    .line 87
    const/16 v0, 0x52

    iput v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mFoldGestureAngleThreshold:I

    .line 342
    new-instance v0, Lcom/android/server/display/MiuiFoldPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/MiuiFoldPolicy$1;-><init>(Lcom/android/server/display/MiuiFoldPolicy;)V

    iput-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 486
    new-instance v0, Lcom/android/server/display/MiuiFoldPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/MiuiFoldPolicy$2;-><init>(Lcom/android/server/display/MiuiFoldPolicy;)V

    iput-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mMiHingeAngleSensorListener:Landroid/hardware/SensorEventListener;

    .line 95
    iput-object p1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mStrictFoldedDeviceStates:[I

    .line 98
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11030056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mTentDeviceStates:[I

    .line 100
    return-void
.end method

.method private isCtsScene()Z
    .registers 4

    .line 451
    iget-boolean v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mIsCtsMode:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mScreenStateAfterFold:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mScreenStateAfterFold:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_f

    :cond_e
    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 453
    .local v1, "isCtsScene":Z
    :goto_10
    if-eqz v1, :cond_1a

    .line 454
    const-string v0, "MiuiFoldPolicy"

    const-string/jumbo v2, "running cts, skip fold policy."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_1a
    return v1
.end method

.method private isFolded(I)Z
    .registers 3
    .param p1, "state"  # I

    .line 209
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mStrictFoldedDeviceStates:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method private isFoldedOrTent(I)Z
    .registers 3
    .param p1, "state"  # I

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/display/MiuiFoldPolicy;->isFolded(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/server/display/MiuiFoldPolicy;->isTent(I)Z

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
    return v0
.end method

.method private isHoldScreenOn()Z
    .registers 5

    .line 317
    const-string v0, ""

    .line 318
    .local v0, "reason":Ljava/lang/String;
    const/4 v1, 0x0

    .line 321
    .local v1, "isHoldScreenOn":Z
    iget-object v2, p0, Lcom/android/server/display/MiuiFoldPolicy;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 322
    const/4 v1, 0x1

    .line 323
    const-string/jumbo v0, "in call"

    goto :goto_31

    .line 325
    :cond_10
    iget-object v2, p0, Lcom/android/server/display/MiuiFoldPolicy;->mOpeningCameraID:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 326
    const/4 v1, 0x1

    .line 327
    const-string v0, "camera using"

    goto :goto_31

    .line 329
    :cond_1c
    iget-object v2, p0, Lcom/android/server/display/MiuiFoldPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2e

    iget-object v2, p0, Lcom/android/server/display/MiuiFoldPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 330
    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_31

    .line 331
    :cond_2e
    const/4 v1, 0x1

    .line 332
    const-string v0, "audio using"

    .line 335
    :cond_31
    :goto_31
    if-eqz v1, :cond_4c

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hold screen on reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiFoldPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_4c
    return v1
.end method

.method private isKeepScreenOnAfterFolded()Z
    .registers 3

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "isKeepScreenOn":Z
    iget v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mScreenStateAfterFold:I

    packed-switch v1, :pswitch_data_24

    goto :goto_22

    .line 193
    :pswitch_7  #0x2
    const/4 v0, 0x1

    .line 194
    goto :goto_22

    .line 199
    :pswitch_9  #0x1
    invoke-direct {p0}, Lcom/android/server/display/MiuiFoldPolicy;->isHoldScreenOn()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 200
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v1, 0x1

    :goto_1b
    move v0, v1

    .line 201
    goto :goto_22

    .line 196
    :pswitch_1d  #0x0
    invoke-direct {p0}, Lcom/android/server/display/MiuiFoldPolicy;->isHoldScreenOn()Z

    move-result v0

    .line 197
    nop

    .line 205
    :goto_22
    return v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1d  #00000000
        :pswitch_9  #00000001
        :pswitch_7  #00000002
    .end packed-switch
.end method

.method private isTent(I)Z
    .registers 3
    .param p1, "state"  # I

    .line 213
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mTentDeviceStates:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method private registerContentObserver()V
    .registers 6

    .line 400
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 401
    const-string v1, "close_lid_display_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/MiuiFoldPolicy;->mSettingsObserver:Lcom/android/server/display/MiuiFoldPolicy$SettingsObserver;

    .line 400
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 404
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 405
    const-string v1, "fold_gesture_angle_threshold"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/MiuiFoldPolicy;->mSettingsObserver:Lcom/android/server/display/MiuiFoldPolicy$SettingsObserver;

    .line 404
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 408
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 409
    const-string/jumbo v1, "miui_optimization"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/MiuiFoldPolicy;->mSettingsObserver:Lcom/android/server/display/MiuiFoldPolicy$SettingsObserver;

    .line 408
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 412
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 413
    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/MiuiFoldPolicy;->mSettingsObserver:Lcom/android/server/display/MiuiFoldPolicy$SettingsObserver;

    .line 412
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 416
    invoke-direct {p0}, Lcom/android/server/display/MiuiFoldPolicy;->updateSettings()V

    .line 417
    return-void
.end method

.method private registerMiHingeAngleSensorListener(Z)V
    .registers 6
    .param p1, "enable"  # Z

    .line 472
    const/4 v0, 0x0

    if-eqz p1, :cond_14

    .line 473
    iget-boolean v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mMiHingeAngleSensorEnabled:Z

    if-nez v1, :cond_21

    .line 474
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mMiHingeAngleSensorEnabled:Z

    .line 475
    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/MiuiFoldPolicy;->mMiHingeAngleSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/display/MiuiFoldPolicy;->mMiHingeAngleSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_21

    .line 479
    :cond_14
    iget-boolean v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mMiHingeAngleSensorEnabled:Z

    if-eqz v1, :cond_21

    .line 480
    iput-boolean v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mMiHingeAngleSensorEnabled:Z

    .line 481
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mMiHingeAngleSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 484
    :cond_21
    :goto_21
    return-void
.end method

.method private releaseSwipeUpWindow(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"  # Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mSwipeUpWindow:Lcom/android/server/display/SwipeUpWindow;

    invoke-virtual {v0, p1}, Lcom/android/server/display/SwipeUpWindow;->releaseSwipeWindow(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method private screenTurnOff()V
    .registers 6

    .line 312
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 314
    return-void
.end method

.method private showOrReleaseSwipeUpWindow()V
    .registers 3

    .line 221
    sget-object v0, Lcom/android/server/display/MiuiFoldPolicy;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showOrReleaseSwipeUpWindow: fold?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mState:I

    invoke-direct {p0, v1}, Lcom/android/server/display/MiuiFoldPolicy;->isFoldedOrTent(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNeedShowSwipeUpWindow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mNeedShowSwipeUpWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiFoldPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mNeedReleaseByScreenTurningOn:Z

    .line 227
    iget-boolean v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mNeedReleaseSwipeUpWindow:Z

    if-nez v1, :cond_59

    iget v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mState:I

    invoke-direct {p0, v1}, Lcom/android/server/display/MiuiFoldPolicy;->isFoldedOrTent(I)Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_59

    .line 234
    :cond_45
    iget-boolean v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mNeedShowSwipeUpWindow:Z

    if-eqz v1, :cond_58

    .line 235
    iput-boolean v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mNeedShowSwipeUpWindow:Z

    .line 236
    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager;->isInteractive(I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 237
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mSwipeUpWindow:Lcom/android/server/display/SwipeUpWindow;

    invoke-virtual {v0}, Lcom/android/server/display/SwipeUpWindow;->showSwipeUpWindow()V

    .line 240
    :cond_58
    return-void

    .line 228
    :cond_59
    :goto_59
    iput-boolean v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mNeedReleaseSwipeUpWindow:Z

    .line 229
    const-string v0, "device state"

    invoke-direct {p0, v0}, Lcom/android/server/display/MiuiFoldPolicy;->releaseSwipeUpWindow(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method private updateCtsMode()V
    .registers 3

    .line 446
    nop

    .line 447
    const-string/jumbo v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 446
    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mIsCtsMode:Z

    .line 448
    return-void
.end method

.method private updateDeviceProVisioned()V
    .registers 4

    .line 460
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    iput-boolean v2, p0, Lcom/android/server/display/MiuiFoldPolicy;->mIsDeviceProvisioned:Z

    .line 462
    return-void
.end method

.method private updateFoldGestureAngleThreshold()V
    .registers 5

    .line 420
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x52

    const/4 v2, -0x2

    const-string v3, "fold_gesture_angle_threshold"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mFoldGestureAngleThreshold:I

    .line 423
    return-void
.end method

.method private updateScreenStateAfterFold()V
    .registers 6

    .line 426
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "close_lid_display_setting"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mScreenStateAfterFold:I

    .line 429
    iget v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mScreenStateAfterFold:I

    const/4 v4, 0x1

    if-ne v0, v2, :cond_30

    .line 431
    const-string v0, "cetus"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 432
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mScreenStateAfterFold:I

    goto :goto_25

    .line 434
    :cond_23
    iput v4, p0, Lcom/android/server/display/MiuiFoldPolicy;->mScreenStateAfterFold:I

    .line 437
    :goto_25
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/MiuiFoldPolicy;->mScreenStateAfterFold:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 442
    :cond_30
    iget v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mScreenStateAfterFold:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v4, 0x0

    :goto_37
    invoke-direct {p0, v4}, Lcom/android/server/display/MiuiFoldPolicy;->registerMiHingeAngleSensorListener(Z)V

    .line 443
    return-void
.end method

.method private updateSettings()V
    .registers 1

    .line 393
    invoke-direct {p0}, Lcom/android/server/display/MiuiFoldPolicy;->updateScreenStateAfterFold()V

    .line 394
    invoke-direct {p0}, Lcom/android/server/display/MiuiFoldPolicy;->updateFoldGestureAngleThreshold()V

    .line 395
    invoke-direct {p0}, Lcom/android/server/display/MiuiFoldPolicy;->updateCtsMode()V

    .line 396
    invoke-direct {p0}, Lcom/android/server/display/MiuiFoldPolicy;->updateDeviceProVisioned()V

    .line 397
    return-void
.end method


# virtual methods
.method public dealDisplayTransition()V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 134
    return-void

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 139
    return-void
.end method

.method public handleDeviceStateChanged(I)V
    .registers 6
    .param p1, "state"  # I

    .line 157
    iget v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mState:I

    if-ne p1, v0, :cond_26

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "the new state is equal the old("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") skip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiFoldPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    .line 162
    :cond_26
    iget v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mState:I

    iput v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mPreState:I

    .line 163
    iput p1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mState:I

    .line 165
    iget v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mState:I

    invoke-direct {p0, v0}, Lcom/android/server/display/MiuiFoldPolicy;->isFoldedOrTent(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7a

    invoke-direct {p0}, Lcom/android/server/display/MiuiFoldPolicy;->isKeepScreenOnAfterFolded()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 166
    invoke-direct {p0}, Lcom/android/server/display/MiuiFoldPolicy;->isCtsScene()Z

    move-result v0

    if-nez v0, :cond_7a

    iget-boolean v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mIsDeviceProvisioned:Z

    if-nez v0, :cond_47

    goto :goto_7a

    .line 174
    :cond_47
    iget v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mState:I

    invoke-direct {p0, v0}, Lcom/android/server/display/MiuiFoldPolicy;->isFolded(I)Z

    move-result v0

    if-eqz v0, :cond_79

    iget v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mPreState:I

    invoke-direct {p0, v0}, Lcom/android/server/display/MiuiFoldPolicy;->isTent(I)Z

    move-result v0

    if-nez v0, :cond_79

    .line 175
    iget v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mScreenStateAfterFold:I

    if-nez v0, :cond_64

    iget v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mPreState:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_64

    .line 177
    invoke-direct {p0}, Lcom/android/server/display/MiuiFoldPolicy;->screenTurnOff()V

    goto :goto_79

    .line 178
    :cond_64
    iget v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mScreenStateAfterFold:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_71

    .line 179
    iget-boolean v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mNeedOffDueToFoldGesture:Z

    if-eqz v0, :cond_79

    .line 180
    invoke-direct {p0}, Lcom/android/server/display/MiuiFoldPolicy;->screenTurnOff()V

    goto :goto_79

    .line 182
    :cond_71
    iget v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mScreenStateAfterFold:I

    if-ne v0, v2, :cond_79

    .line 183
    iput-boolean v2, p0, Lcom/android/server/display/MiuiFoldPolicy;->mNeedShowSwipeUpWindow:Z

    .line 184
    iput-boolean v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mNeedReleaseSwipeUpWindow:Z

    .line 187
    :cond_79
    :goto_79
    return-void

    .line 167
    :cond_7a
    :goto_7a
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mSwipeUpWindow:Lcom/android/server/display/SwipeUpWindow;

    invoke-virtual {v0}, Lcom/android/server/display/SwipeUpWindow;->cancelScreenOffDelay()V

    .line 168
    iput-boolean v2, p0, Lcom/android/server/display/MiuiFoldPolicy;->mNeedReleaseSwipeUpWindow:Z

    .line 169
    iput-boolean v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mNeedShowSwipeUpWindow:Z

    .line 170
    return-void
.end method

.method public handleScreenTurningOff()V
    .registers 2

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mNeedReleaseByScreenTurningOn:Z

    .line 309
    return-void
.end method

.method public handleScreenTurningOn()V
    .registers 2

    .line 301
    iget-boolean v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mNeedReleaseByScreenTurningOn:Z

    if-eqz v0, :cond_d

    .line 302
    const-string/jumbo v0, "screen on"

    invoke-direct {p0, v0}, Lcom/android/server/display/MiuiFoldPolicy;->releaseSwipeUpWindow(Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mNeedReleaseByScreenTurningOn:Z

    .line 305
    :cond_d
    return-void
.end method

.method public initMiuiFoldPolicy()V
    .registers 6

    .line 103
    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v1, -0x4

    const/4 v2, 0x0

    const-string v3, "MiuiFoldPolicy"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 104
    .local v0, "handlerThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 105
    new-instance v1, Lcom/android/server/display/MiuiFoldPolicy$MiuiFoldPolicyHandler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/MiuiFoldPolicy$MiuiFoldPolicyHandler;-><init>(Lcom/android/server/display/MiuiFoldPolicy;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mHandler:Landroid/os/Handler;

    .line 106
    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    iput-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 107
    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 108
    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mContext:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    iput-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 109
    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    .line 110
    const-class v1, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 111
    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mPowerManager:Landroid/os/PowerManager;

    .line 113
    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/server/display/MiuiFoldPolicy;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v3, p0, Lcom/android/server/display/MiuiFoldPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 115
    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x1fa268f

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mMiHingeAngleSensor:Landroid/hardware/Sensor;

    .line 117
    new-instance v1, Lcom/android/server/display/MiuiFoldPolicy$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/display/MiuiFoldPolicy;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/MiuiFoldPolicy$SettingsObserver;-><init>(Lcom/android/server/display/MiuiFoldPolicy;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mSettingsObserver:Lcom/android/server/display/MiuiFoldPolicy$SettingsObserver;

    .line 118
    new-instance v1, Lcom/android/server/display/SwipeUpWindow;

    iget-object v2, p0, Lcom/android/server/display/MiuiFoldPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/display/SwipeUpWindow;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mSwipeUpWindow:Lcom/android/server/display/SwipeUpWindow;

    .line 120
    invoke-direct {p0}, Lcom/android/server/display/MiuiFoldPolicy;->registerContentObserver()V

    .line 122
    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/display/MiuiFoldPolicy$UserSwitchReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/MiuiFoldPolicy$UserSwitchReceiver;-><init>(Lcom/android/server/display/MiuiFoldPolicy;Lcom/android/server/display/MiuiFoldPolicy-IA;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method public notifyFinishedGoingToSleep()V
    .registers 3

    .line 294
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 295
    return-void

    .line 297
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 298
    return-void
.end method

.method public screenTurningOff()V
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 288
    return-void

    .line 290
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 291
    return-void
.end method

.method public screenTurningOn()V
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 281
    return-void

    .line 283
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 284
    return-void
.end method

.method public setDeviceStateLocked(I)V
    .registers 5
    .param p1, "state"  # I

    .line 142
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 143
    return-void

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 147
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 148
    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    sget-object v1, Lcom/android/server/display/MiuiFoldPolicy;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceStateLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFoldPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_34
    return-void
.end method
