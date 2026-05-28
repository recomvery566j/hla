.class public Lmiui/hardware/display/DisplayFeatureManager;
.super Ljava/lang/Object;
.source "DisplayFeatureManager.java"


# static fields
.field public static final blacklist DEFALUT_SCREEN_COLOR:I = 0x2

.field public static final blacklist DISPLAY_INFO_GRAY:I = 0x0

.field public static final blacklist DOZE_BRIGHTNESS_STATE:I = 0x19

.field public static final blacklist EXT_COLOR_PROC_STATE:I = 0xf

.field public static final blacklist HDR_STATE:I = 0xc350

.field public static final blacklist ID_UPDATE_CURRENT_GRAY_SCALE:I = 0x5

.field public static final blacklist ID_UPDATE_CURRENT_GRAY_SCALE_FOR_IPA:I = 0x7

.field public static final blacklist ID_UPDATE_DOLBY_STATE:I = 0x3

.field public static final blacklist ID_UPDATE_GRAY_SCALE:I = 0x1

.field public static final blacklist MODE_SCREEN_FPS_DYNAMIC_ACCOMMODATION:I = 0x18

.field public static final blacklist NOTICE_CURRENT_GRAY_SCALE:Ljava/lang/String; = "current_gray_scale"

.field public static final blacklist NOTICE_CURRENT_GRAY_SCALE_FOR_IPA:Ljava/lang/String; = "current_gray_scale_for_ipa"

.field public static final blacklist NOTICE_DOLBY_VERSION_STATE:Ljava/lang/String; = "dolby_version_state"

.field public static final blacklist NOTICE_GRAY_SCALE:Ljava/lang/String; = "gray_scale"

.field public static final blacklist NOTIFY_HDR_LUTID:I = 0x17700

.field public static final blacklist SCREEN_ADAPT:I = 0x0

.field public static final blacklist SCREEN_BCBC_STATE:I = 0x12

.field public static final blacklist SCREEN_Dimming_MODE:I = 0x14

.field public static final blacklist SCREEN_ENHANCE:I = 0x1

.field public static final blacklist SCREEN_EXPERT:I = 0x1a

.field public static final blacklist SCREEN_EYECARE:I = 0x3

.field public static final blacklist SCREEN_GAME_HDR:I = 0x13

.field public static final blacklist SCREEN_GRAYSCALE_STATE:I = 0x38

.field public static final blacklist SCREEN_HIGHLIGHT:I = 0xb

.field public static final blacklist SCREEN_MONOCHROME:I = 0x4

.field public static final blacklist SCREEN_NIGHTLIGHT:I = 0x9

.field public static final blacklist SCREEN_RHYTHMIC:I = 0x36

.field public static final blacklist SCREEN_STANDARD:I = 0x2

.field public static final blacklist SCREEN_SUNLIGHT:I = 0x8

.field public static final blacklist SCREEN_TEXTURE_COLOR:I = 0x1f

.field public static final blacklist SCREEN_UNLIMITED_COLOR:I = 0x17

.field public static final blacklist SDR_TO_HDR:I = 0x7531

.field public static final blacklist SEND_HBM_STATE:I = 0xea60

.field public static final blacklist SEND_MURA_STATE:I = 0x11170

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "displayfeature"

.field public static final blacklist SET_COLOR_MODE:I = 0x7530

.field public static final blacklist SET_DC_PARSE_STATE:I = 0x9c40

.field public static final blacklist SOCKET_FPS_SWITCH_SMART:I = 0x100

.field private static blacklist TAG:Ljava/lang/String; = null

.field public static final blacklist TRUE_TONE:I = 0x20

.field public static final blacklist UPDATE_DFPS_MODE:I = 0x2733

.field public static final blacklist UPDATE_GRAYSCALE_INFO:I = 0x17318

.field public static final blacklist UPDATE_GRAYSCALE_INFO_FOR_IPA:I = 0x17ae9

.field public static final blacklist UPDATE_PCC_LEVEL:I = 0x4e20

.field public static final blacklist UPDATE_SECONDARY_FRAME_RATE:I = 0x2734

.field public static final blacklist UPDATE_SMART_DFPS_MODE:I = 0x2735

.field public static final blacklist UPDATE_WCG_STATE:I = 0x2710

.field public static final blacklist VALUE_DISABLE_FPS_DYNAMIC_ACCOMMODATION:I = 0xff

.field private static volatile blacklist sInstance:Lmiui/hardware/display/DisplayFeatureManager;


# instance fields
.field private final blacklist mService:Lmiui/hardware/display/IDisplayFeatureManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    const-string v0, "DisplayFeatureManager"

    sput-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Lmiui/hardware/display/IDisplayFeatureManager;)V
    .registers 2
    .param p1, "service"  # Lmiui/hardware/display/IDisplayFeatureManager;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mService:Lmiui/hardware/display/IDisplayFeatureManager;

    .line 126
    return-void
.end method

.method public static blacklist getInstance()Lmiui/hardware/display/DisplayFeatureManager;
    .registers 5

    .line 109
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    if-nez v0, :cond_3f

    .line 110
    const-class v0, Lmiui/hardware/display/DisplayFeatureManager;

    monitor-enter v0

    .line 111
    :try_start_7
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_3c

    if-nez v1, :cond_3a

    .line 113
    :try_start_b
    new-instance v1, Lmiui/hardware/display/DisplayFeatureManager;

    const-string v2, "displayfeature"

    .line 114
    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 113
    invoke-static {v2}, Lmiui/hardware/display/IDisplayFeatureManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/hardware/display/IDisplayFeatureManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/hardware/display/DisplayFeatureManager;-><init>(Lmiui/hardware/display/IDisplayFeatureManager;)V

    sput-object v1, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;
    :try_end_1c
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_b .. :try_end_1c} :catch_1d
    .catchall {:try_start_b .. :try_end_1c} :catchall_3c

    .line 117
    goto :goto_3a

    .line 115
    :catch_1d
    move-exception v1

    .line 116
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_1e
    sget-object v2, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstance error! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v1  # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_3a
    :goto_3a
    monitor-exit v0

    goto :goto_3f

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_1e .. :try_end_3e} :catchall_3c

    throw v1

    .line 121
    :cond_3f
    :goto_3f
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    return-object v0
.end method


# virtual methods
.method public blacklist getReadAppList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    :try_start_0
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mService:Lmiui/hardware/display/IDisplayFeatureManager;

    if-eqz v0, :cond_b

    .line 193
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mService:Lmiui/hardware/display/IDisplayFeatureManager;

    invoke-interface {v0}, Lmiui/hardware/display/IDisplayFeatureManager;->getReadAppList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 195
    :cond_b
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v1, "getReadAppList error! mService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_15

    .line 199
    nop

    .line 200
    const/4 v0, 0x0

    return-object v0

    .line 197
    :catch_15
    move-exception v0

    .line 198
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerDFCallback(Lmiui/hardware/display/IDisplayFeatureCallback;I)V
    .registers 5
    .param p1, "callback"  # Lmiui/hardware/display/IDisplayFeatureCallback;
    .param p2, "calllingId"  # I

    .line 224
    :try_start_0
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mService:Lmiui/hardware/display/IDisplayFeatureManager;

    if-nez v0, :cond_c

    .line 225
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v1, "registerDFCallback error! mService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void

    .line 229
    :cond_c
    if-nez p1, :cond_16

    .line 230
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v1, "registerDFCallback error! listener is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void

    .line 234
    :cond_16
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mService:Lmiui/hardware/display/IDisplayFeatureManager;

    invoke-interface {v0, p1, p2}, Lmiui/hardware/display/IDisplayFeatureManager;->registerDFCallback(Lmiui/hardware/display/IDisplayFeatureCallback;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1d

    .line 237
    nop

    .line 238
    return-void

    .line 235
    :catch_1d
    move-exception v0

    .line 236
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerReadAppOperationListener(Lmiui/hardware/display/IReadAppOperationListener;)V
    .registers 5
    .param p1, "listener"  # Lmiui/hardware/display/IReadAppOperationListener;

    .line 160
    :try_start_0
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mService:Lmiui/hardware/display/IDisplayFeatureManager;

    if-nez v0, :cond_c

    .line 161
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v1, "registerReadAppOperationListener error! mService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 165
    :cond_c
    if-nez p1, :cond_16

    .line 166
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v1, "registerReadAppOperationListener error! listener is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 170
    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const v1, 0x186a0

    div-int/2addr v0, v1

    .line 171
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 172
    .local v1, "userPid":I
    iget-object v2, p0, Lmiui/hardware/display/DisplayFeatureManager;->mService:Lmiui/hardware/display/IDisplayFeatureManager;

    invoke-interface {v2, p1, v0, v1}, Lmiui/hardware/display/IDisplayFeatureManager;->registerReadAppOperationListener(Lmiui/hardware/display/IReadAppOperationListener;II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_29

    .line 175
    .end local v0  # "userId":I
    .end local v1  # "userPid":I
    nop

    .line 176
    return-void

    .line 173
    :catch_29
    move-exception v0

    .line 174
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setEyeCareSwitch(Z)V
    .registers 4
    .param p1, "enable"  # Z

    .line 180
    :try_start_0
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mService:Lmiui/hardware/display/IDisplayFeatureManager;

    if-eqz v0, :cond_a

    .line 181
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mService:Lmiui/hardware/display/IDisplayFeatureManager;

    invoke-interface {v0, p1}, Lmiui/hardware/display/IDisplayFeatureManager;->setEyeCareSwitch(Z)V

    goto :goto_11

    .line 183
    :cond_a
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v1, "setEyeCareSwitch error! mService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    .line 187
    :goto_11
    nop

    .line 188
    return-void

    .line 185
    :catch_13
    move-exception v0

    .line 186
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setScreenEffect(II)V
    .registers 4
    .param p1, "mode"  # I
    .param p2, "value"  # I

    .line 129
    const/16 v0, 0xff

    invoke-virtual {p0, p1, p2, v0}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    .line 130
    return-void
.end method

.method public blacklist setScreenEffect(III)V
    .registers 5
    .param p1, "mode"  # I
    .param p2, "value"  # I
    .param p3, "cookie"  # I

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(IIILandroid/os/IBinder;)V

    .line 138
    return-void
.end method

.method public blacklist setScreenEffect(IIILandroid/os/IBinder;)V
    .registers 7
    .param p1, "mode"  # I
    .param p2, "value"  # I
    .param p3, "cookie"  # I
    .param p4, "token"  # Landroid/os/IBinder;

    .line 150
    :try_start_0
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mService:Lmiui/hardware/display/IDisplayFeatureManager;

    if-eqz v0, :cond_9

    .line 151
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mService:Lmiui/hardware/display/IDisplayFeatureManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lmiui/hardware/display/IDisplayFeatureManager;->setScreenEffect(IIILandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 155
    :cond_9
    nop

    .line 156
    return-void

    .line 153
    :catch_b
    move-exception v0

    .line 154
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterDFCallback(I)V
    .registers 4
    .param p1, "calllingId"  # I

    .line 242
    :try_start_0
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mService:Lmiui/hardware/display/IDisplayFeatureManager;

    if-nez v0, :cond_d

    .line 243
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterDFCallback error! mService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 247
    :cond_d
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mService:Lmiui/hardware/display/IDisplayFeatureManager;

    invoke-interface {v0, p1}, Lmiui/hardware/display/IDisplayFeatureManager;->unregisterDFCallback(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 250
    nop

    .line 251
    return-void

    .line 248
    :catch_14
    move-exception v0

    .line 249
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterReadAppOperationListener(Lmiui/hardware/display/IReadAppOperationListener;)V
    .registers 4
    .param p1, "listener"  # Lmiui/hardware/display/IReadAppOperationListener;

    .line 205
    :try_start_0
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mService:Lmiui/hardware/display/IDisplayFeatureManager;

    if-nez v0, :cond_d

    .line 206
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterReadAppOperationListener error! mService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    .line 210
    :cond_d
    if-nez p1, :cond_18

    .line 211
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterReadAppOperationListener error! listener is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void

    .line 215
    :cond_18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const v1, 0x186a0

    div-int/2addr v0, v1

    .line 216
    .local v0, "userId":I
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mService:Lmiui/hardware/display/IDisplayFeatureManager;

    invoke-interface {v1, p1, v0}, Lmiui/hardware/display/IDisplayFeatureManager;->unregisterReadAppOperationListener(Lmiui/hardware/display/IReadAppOperationListener;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_27

    .line 219
    .end local v0  # "userId":I
    nop

    .line 220
    return-void

    .line 217
    :catch_27
    move-exception v0

    .line 218
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
