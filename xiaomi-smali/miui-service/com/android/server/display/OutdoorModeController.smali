# classes.dex

.class public Lcom/android/server/display/OutdoorModeController;
.super Ljava/lang/Object;
.source "OutdoorModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OutdoorModeController$OutdoorModeHandler;,
        Lcom/android/server/display/OutdoorModeController$SettingsObserver;,
        Lcom/android/server/display/OutdoorModeController$Callback;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MSG_INITIALIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OutdoorModeController"


# instance fields
.field private mAutoBrightnessSettingsEnable:Z

.field private mCallback:Lcom/android/server/display/OutdoorModeController$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrentScreenBrightnessSettings:I

.field private mHandler:Lcom/android/server/display/OutdoorModeController$OutdoorModeHandler;

.field private mOutdoorSettingsEnable:Z

.field private mSettingsObserver:Lcom/android/server/display/OutdoorModeController$SettingsObserver;


# direct methods
.method static bridge synthetic -$$Nest$mregisterSettingsObserver(Lcom/android/server/display/OutdoorModeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/OutdoorModeController;->registerSettingsObserver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLowPowerState(Lcom/android/server/display/OutdoorModeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/OutdoorModeController;->updateLowPowerState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateOutdoorModeSettings(Lcom/android/server/display/OutdoorModeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/OutdoorModeController;->updateOutdoorModeSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/OutdoorModeController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/OutdoorModeController$Callback;Landroid/os/Looper;I)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "callback"  # Lcom/android/server/display/OutdoorModeController$Callback;
    .param p3, "looper"  # Landroid/os/Looper;
    .param p4, "displayId"  # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p4, :cond_20

    .line 38
    iput-object p1, p0, Lcom/android/server/display/OutdoorModeController;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/android/server/display/OutdoorModeController$OutdoorModeHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/display/OutdoorModeController$OutdoorModeHandler;-><init>(Lcom/android/server/display/OutdoorModeController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/OutdoorModeController;->mHandler:Lcom/android/server/display/OutdoorModeController$OutdoorModeHandler;

    .line 40
    new-instance v0, Lcom/android/server/display/OutdoorModeController$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/display/OutdoorModeController;->mHandler:Lcom/android/server/display/OutdoorModeController$OutdoorModeHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/OutdoorModeController$SettingsObserver;-><init>(Lcom/android/server/display/OutdoorModeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/OutdoorModeController;->mSettingsObserver:Lcom/android/server/display/OutdoorModeController$SettingsObserver;

    .line 41
    iput-object p2, p0, Lcom/android/server/display/OutdoorModeController;->mCallback:Lcom/android/server/display/OutdoorModeController$Callback;

    .line 42
    iget-object v0, p0, Lcom/android/server/display/OutdoorModeController;->mHandler:Lcom/android/server/display/OutdoorModeController$OutdoorModeHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/OutdoorModeController$OutdoorModeHandler;->sendEmptyMessage(I)Z

    .line 43
    return-void

    .line 36
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OutdoorModeControllercan only be used on the default display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerSettingsObserver()V
    .registers 6

    .line 46
    iget-object v0, p0, Lcom/android/server/display/OutdoorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    const-string/jumbo v1, "outdoor_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/OutdoorModeController;->mSettingsObserver:Lcom/android/server/display/OutdoorModeController$SettingsObserver;

    .line 46
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 50
    iget-object v0, p0, Lcom/android/server/display/OutdoorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/OutdoorModeController;->mSettingsObserver:Lcom/android/server/display/OutdoorModeController$SettingsObserver;

    .line 50
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 54
    iget-object v0, p0, Lcom/android/server/display/OutdoorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/OutdoorModeController;->mSettingsObserver:Lcom/android/server/display/OutdoorModeController$SettingsObserver;

    .line 54
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 58
    iget-object v0, p0, Lcom/android/server/display/OutdoorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    const-string/jumbo v1, "low_power_level_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/OutdoorModeController;->mSettingsObserver:Lcom/android/server/display/OutdoorModeController$SettingsObserver;

    .line 58
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 62
    return-void
.end method

.method private updateLowPowerState()V
    .registers 6

    .line 112
    iget-object v0, p0, Lcom/android/server/display/OutdoorModeController;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power_level_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    move v0, v2

    .line 115
    .local v0, "lowPowerState":Z
    :goto_13
    if-eqz v0, :cond_22

    .line 116
    iget-object v1, p0, Lcom/android/server/display/OutdoorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "outdoor_mode"

    const/4 v4, -0x2

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 120
    :cond_22
    return-void
.end method

.method private updateOutdoorModeSettings()V
    .registers 9

    .line 65
    iget-object v0, p0, Lcom/android/server/display/OutdoorModeController;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "outdoor_mode"

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

    .line 70
    .local v0, "outdoorSettingsEnabled":Z
    :goto_15
    iget-object v4, p0, Lcom/android/server/display/OutdoorModeController;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_brightness_mode"

    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_25

    move v2, v1

    .line 75
    .local v2, "autoBrightnessSettingsEnable":Z
    :cond_25
    iget-object v1, p0, Lcom/android/server/display/OutdoorModeController;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "screen_brightness"

    const/4 v5, -0x1

    invoke-static {v1, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 81
    .local v1, "currentScreenBrightnessSettings":I
    sget-boolean v4, Lcom/android/server/display/OutdoorModeController;->DEBUG:Z

    if-eqz v4, :cond_64

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateOutdoorModeSettings: outdoorSettingsEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", autoBrightnessSettingsEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currentScreenBrightnessSettings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OutdoorModeController"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_64
    iget-object v4, p0, Lcom/android/server/display/OutdoorModeController;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "brt_before_outdoor_mode"

    const/high16 v6, 0x7fc00000  # Float.NaN

    invoke-static {v4, v5, v6, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v4

    .line 96
    .local v4, "brightnessBeforeOutdoorMode":F
    iget-boolean v7, p0, Lcom/android/server/display/OutdoorModeController;->mOutdoorSettingsEnable:Z

    if-eqz v7, :cond_89

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_89

    const/16 v7, 0xff

    if-eq v1, v7, :cond_89

    .line 98
    iget-object v7, p0, Lcom/android/server/display/OutdoorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v5, v6, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 104
    :cond_89
    iput-boolean v0, p0, Lcom/android/server/display/OutdoorModeController;->mOutdoorSettingsEnable:Z

    .line 105
    iget-object v3, p0, Lcom/android/server/display/OutdoorModeController;->mCallback:Lcom/android/server/display/OutdoorModeController$Callback;

    iget-boolean v5, p0, Lcom/android/server/display/OutdoorModeController;->mOutdoorSettingsEnable:Z

    invoke-interface {v3, v5, v2}, Lcom/android/server/display/OutdoorModeController$Callback;->notifyOutdoorModeChanged(ZZ)V

    .line 106
    return-void
.end method


# virtual methods
.method public dump()V
    .registers 2

    .line 164
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_DPC:Z

    sput-boolean v0, Lcom/android/server/display/OutdoorModeController;->DEBUG:Z

    .line 165
    return-void
.end method
