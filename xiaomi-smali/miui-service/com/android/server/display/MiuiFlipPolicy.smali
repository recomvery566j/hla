# classes.dex

.class public Lcom/android/server/display/MiuiFlipPolicy;
.super Ljava/lang/Object;
.source "MiuiFlipPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MiuiFlipPolicy$MiuiFlipPolicyHandler;,
        Lcom/android/server/display/MiuiFlipPolicy$SettingsObserver;,
        Lcom/android/server/display/MiuiFlipPolicy$UserSwitchReceiver;
    }
.end annotation


# static fields
.field private static final CLOSE_FLIP_CONTINUITY_ENABLE:Ljava/lang/String; = "flip_continuity_enabled"

.field private static final CLOSE_FLIP_LOCK_DEFAULT:Ljava/lang/String; = "flip_continuity_default"

.field private static final DEBUG:Ljava/lang/Boolean;

.field private static final KEY_SETTINGS_SUPERSAVE_MODE:Ljava/lang/String; = "power_supersave_mode_open"

.field private static final MSG_USER_SWITCH:I = 0x1

.field private static final SETTING_FLAG_CONTINE_DISABLE:I = 0x0

.field private static final SETTING_FLAG_CONTINE_ENABLE:I = 0x1

.field private static final SETTING_FLAG_INVALID:I = -0x1

.field private static final SETTING_FLAG_LOCK_ENABLE:I = 0x1

.field private static final SETTING_FLAG_SLEEP_ENABEL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MiuiFlipPolicy"

.field private static final WAKE_REASON_FLIPPED:I = 0xff


# instance fields
.field private defaultScreenState:Z

.field private isSupuerSaveMode:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNeedContinueShowAPP:Z

.field private mNeedPocketMode:Ljava/lang/Boolean;

.field private mNeedShowKeyguardWindow:Z

.field private mSettingsObserver:Lcom/android/server/display/MiuiFlipPolicy$SettingsObserver;

.field private mStateFromeSettings:I

.field private mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/MiuiFlipPolicy;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/MiuiFlipPolicy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateContinueStateFromSettings(Lcom/android/server/display/MiuiFlipPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MiuiFlipPolicy;->updateContinueStateFromSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLockStateFromSettings(Lcom/android/server/display/MiuiFlipPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MiuiFlipPolicy;->updateLockStateFromSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSettings(Lcom/android/server/display/MiuiFlipPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MiuiFlipPolicy;->updateSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSuperPowerMode(Lcom/android/server/display/MiuiFlipPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MiuiFlipPolicy;->updateSuperPowerMode()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/MiuiFlipPolicy;->DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/MiuiFlipPolicy;->mNeedShowKeyguardWindow:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/server/display/MiuiFlipPolicy;->defaultScreenState:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/server/display/MiuiFlipPolicy;->mNeedContinueShowAPP:Z

    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MiuiFlipPolicy;->mNeedPocketMode:Ljava/lang/Boolean;

    .line 73
    iput-object p1, p0, Lcom/android/server/display/MiuiFlipPolicy;->mContext:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/android/server/display/MiuiFlipPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110500a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/MiuiFlipPolicy;->defaultScreenState:Z

    .line 76
    iget-boolean v0, p0, Lcom/android/server/display/MiuiFlipPolicy;->defaultScreenState:Z

    iput-boolean v0, p0, Lcom/android/server/display/MiuiFlipPolicy;->mNeedShowKeyguardWindow:Z

    .line 77
    return-void
.end method

.method private registerContentObserver()V
    .registers 6

    .line 201
    iget-object v0, p0, Lcom/android/server/display/MiuiFlipPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 202
    const-string v1, "flip_continuity_default"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/MiuiFlipPolicy;->mSettingsObserver:Lcom/android/server/display/MiuiFlipPolicy$SettingsObserver;

    .line 201
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 205
    iget-object v0, p0, Lcom/android/server/display/MiuiFlipPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 206
    const-string v1, "flip_continuity_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/MiuiFlipPolicy;->mSettingsObserver:Lcom/android/server/display/MiuiFlipPolicy$SettingsObserver;

    .line 205
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 209
    iget-object v0, p0, Lcom/android/server/display/MiuiFlipPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    const-string/jumbo v1, "power_supersave_mode_open"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/MiuiFlipPolicy;->mSettingsObserver:Lcom/android/server/display/MiuiFlipPolicy$SettingsObserver;

    .line 209
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 213
    invoke-direct {p0}, Lcom/android/server/display/MiuiFlipPolicy;->updateSettings()V

    .line 214
    return-void
.end method

.method private updateContinueStateFromSettings()V
    .registers 5

    .line 183
    iget-object v0, p0, Lcom/android/server/display/MiuiFlipPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    const-string v3, "flip_continuity_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 186
    .local v0, "mFlagFromeSettings":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 187
    iput-boolean v1, p0, Lcom/android/server/display/MiuiFlipPolicy;->mNeedContinueShowAPP:Z

    goto :goto_35

    .line 188
    :cond_14
    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 189
    iput-boolean v1, p0, Lcom/android/server/display/MiuiFlipPolicy;->mNeedContinueShowAPP:Z

    goto :goto_35

    .line 191
    :cond_1a
    iput-boolean v1, p0, Lcom/android/server/display/MiuiFlipPolicy;->mNeedContinueShowAPP:Z

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update: mNeedContinueShowAPP is invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFlipPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_35
    return-void
.end method

.method private updateLockStateFromSettings()V
    .registers 5

    .line 168
    iget-object v0, p0, Lcom/android/server/display/MiuiFlipPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    const-string v3, "flip_continuity_default"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 171
    .local v0, "mFlagFromeSettings":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 172
    iput-boolean v1, p0, Lcom/android/server/display/MiuiFlipPolicy;->mNeedShowKeyguardWindow:Z

    goto :goto_37

    .line 173
    :cond_14
    if-nez v0, :cond_1a

    .line 174
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/MiuiFlipPolicy;->mNeedShowKeyguardWindow:Z

    goto :goto_37

    .line 176
    :cond_1a
    iget-boolean v1, p0, Lcom/android/server/display/MiuiFlipPolicy;->defaultScreenState:Z

    iput-boolean v1, p0, Lcom/android/server/display/MiuiFlipPolicy;->mNeedShowKeyguardWindow:Z

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update: mNeedShowKeyguardWindow is invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFlipPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_37
    return-void
.end method

.method private updateSettings()V
    .registers 1

    .line 161
    invoke-direct {p0}, Lcom/android/server/display/MiuiFlipPolicy;->updateLockStateFromSettings()V

    .line 162
    invoke-direct {p0}, Lcom/android/server/display/MiuiFlipPolicy;->updateContinueStateFromSettings()V

    .line 163
    invoke-direct {p0}, Lcom/android/server/display/MiuiFlipPolicy;->updateSuperPowerMode()V

    .line 164
    return-void
.end method

.method private updateSuperPowerMode()V
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/android/server/display/MiuiFlipPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "power_supersave_mode_open"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v2, v1

    :cond_12
    iput-boolean v2, p0, Lcom/android/server/display/MiuiFlipPolicy;->isSupuerSaveMode:Z

    .line 198
    return-void
.end method


# virtual methods
.method public enablePocketMode()V
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/android/server/display/MiuiFlipPolicy;->mNeedPocketMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 95
    const-string v0, "MiuiFlipPolicy"

    const-string v1, "enablePocketMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/server/display/MiuiFlipPolicy;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/server/policy/WindowManagerPolicy;->startedWakingUp(II)V

    .line 97
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MiuiFlipPolicy;->mNeedPocketMode:Ljava/lang/Boolean;

    .line 99
    :cond_1d
    return-void
.end method

.method public initMiuiFlipPolicy()V
    .registers 6

    .line 80
    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v1, -0x4

    const/4 v2, 0x0

    const-string v3, "MiuiFlipPolicy"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 81
    .local v0, "handlerThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 82
    new-instance v1, Lcom/android/server/display/MiuiFlipPolicy$MiuiFlipPolicyHandler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/MiuiFlipPolicy$MiuiFlipPolicyHandler;-><init>(Lcom/android/server/display/MiuiFlipPolicy;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/MiuiFlipPolicy;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v1, Lcom/android/server/display/MiuiFlipPolicy$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/display/MiuiFlipPolicy;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/MiuiFlipPolicy$SettingsObserver;-><init>(Lcom/android/server/display/MiuiFlipPolicy;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/display/MiuiFlipPolicy;->mSettingsObserver:Lcom/android/server/display/MiuiFlipPolicy$SettingsObserver;

    .line 85
    const-class v1, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, p0, Lcom/android/server/display/MiuiFlipPolicy;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 87
    invoke-direct {p0}, Lcom/android/server/display/MiuiFlipPolicy;->registerContentObserver()V

    .line 88
    iget-object v1, p0, Lcom/android/server/display/MiuiFlipPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/display/MiuiFlipPolicy$UserSwitchReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/MiuiFlipPolicy$UserSwitchReceiver;-><init>(Lcom/android/server/display/MiuiFlipPolicy;Lcom/android/server/display/MiuiFlipPolicy-IA;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    return-void
.end method

.method public shouldDeviceBeSleep()Z
    .registers 4

    .line 103
    const/4 v0, 0x1

    .line 106
    .local v0, "shouldDeviceBeSleep":Z
    iget-boolean v1, p0, Lcom/android/server/display/MiuiFlipPolicy;->mNeedContinueShowAPP:Z

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/android/server/wm/AppContinuityRouterStub;->get()Lcom/android/server/wm/AppContinuityRouterStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/AppContinuityRouterStub;->isKeepContinuityInFold()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 107
    const/4 v0, 0x0

    goto :goto_39

    .line 108
    :cond_11
    iget-boolean v1, p0, Lcom/android/server/display/MiuiFlipPolicy;->mNeedShowKeyguardWindow:Z

    if-eqz v1, :cond_39

    .line 109
    invoke-static {}, Lcom/android/server/wm/AppContinuityRouterStub;->get()Lcom/android/server/wm/AppContinuityRouterStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/AppContinuityRouterStub;->isInSuperPowerProcessingState()Z

    move-result v1

    if-nez v1, :cond_39

    iget-boolean v1, p0, Lcom/android/server/display/MiuiFlipPolicy;->isSupuerSaveMode:Z

    if-nez v1, :cond_39

    .line 111
    iget-object v1, p0, Lcom/android/server/display/MiuiFlipPolicy;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->lockNow(Landroid/os/Bundle;)V

    .line 112
    const/4 v0, 0x0

    .line 113
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/MiuiFlipPolicy;->mNeedPocketMode:Ljava/lang/Boolean;

    .line 114
    const-string v1, "MiuiFlipPolicy"

    const-string/jumbo v2, "lockNow: Continuity\'s isInSuperPowerProcessingState is false"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_39
    :goto_39
    return v0
.end method
