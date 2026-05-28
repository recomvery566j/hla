# classes.dex

.class public Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;
.super Ljava/lang/Object;
.source "IndividualBrightnessEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;,
        Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;
    }
.end annotation


# static fields
.field private static final ACTION_CLIENT_SERVICE:Ljava/lang/String; = "com.miui.aiautobrt.service.AiService"

.field protected static final MODEL_STATE_BEST_INDICATOR:Ljava/lang/String; = "best_indicator"

.field protected static final MODEL_STATE_REASON_BACKUP:Ljava/lang/String; = "backup"

.field protected static final MODEL_STATE_REASON_DEFAULT:Ljava/lang/String; = "default"

.field protected static final MODEL_STATE_REASON_FORCED:Ljava/lang/String; = "forced_operate"

.field protected static final MODEL_STATE_REASON_TRAIN_FINISHED:Ljava/lang/String; = "train_finished"

.field protected static final MODEL_STATE_REASON_USER:Ljava/lang/String; = "user_operate"

.field private static final TAG:Ljava/lang/String; = "CbmController-IndividualEngine"

.field private static sDebug:Z


# instance fields
.field private final mBgHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mDataStore:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

.field private final mEngineCallback:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mIndividualCallback:Lcom/xiaomi/aiautobrt/IIndividualCallback;

.field private final mIndividualEventNormalizer:Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;

.field private final mModelBindRecord:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;

.field private final mModelComponent:Landroid/content/ComponentName;

.field private volatile mModelService:Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;

.field private mModelValid:Z

.field private mModelValidStateReason:Ljava/lang/String;

.field private volatile mModelValidationInProgress:Z

.field private volatile mNeedBindService:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmBgHandler(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mBgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEngineCallback(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mEngineCallback:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModelValidationInProgress(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValidationInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmModelValidationInProgress(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValidationInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mattach(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->attach(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdetach(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->detach()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;Landroid/os/Looper;Landroid/content/ComponentName;Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;Landroid/os/Handler;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "normalizer"  # Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;
    .param p3, "looper"  # Landroid/os/Looper;
    .param p4, "component"  # Landroid/content/ComponentName;
    .param p5, "callback"  # Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;
    .param p6, "bgHandler"  # Landroid/os/Handler;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValidStateReason:Ljava/lang/String;

    .line 173
    new-instance v0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;-><init>(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)V

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mIndividualCallback:Lcom/xiaomi/aiautobrt/IIndividualCallback;

    .line 70
    iput-object p1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mIndividualEventNormalizer:Lcom/android/server/display/aiautobrt/IndividualEventNormalizer;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mHandler:Landroid/os/Handler;

    .line 73
    iput-object p6, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mBgHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;-><init>(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine-IA;)V

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelBindRecord:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;

    .line 75
    iput-object p4, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelComponent:Landroid/content/ComponentName;

    .line 76
    iput-object p5, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mEngineCallback:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;

    .line 77
    return-void
.end method

.method private attach(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "service"  # Landroid/os/IBinder;

    .line 141
    const-string v0, "CbmController-IndividualEngine"

    :try_start_2
    invoke-static {p1}, Lcom/xiaomi/aiautobrt/IIndividualBrightnessService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelService:Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;

    .line 142
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelService:Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;

    invoke-interface {v1}, Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelBindRecord:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 143
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelService:Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;

    iget-object v2, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mIndividualCallback:Lcom/xiaomi/aiautobrt/IIndividualCallback;

    invoke-interface {v1, v2}, Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;->attach(Lcom/xiaomi/aiautobrt/IIndividualCallback;)V

    .line 144
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelService:Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;->provideInterfaceVersion(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_21} :catch_22

    .line 147
    goto :goto_28

    .line 145
    :catch_22
    move-exception v1

    .line 146
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to bind service bound!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_28
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelBindRecord:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;->-$$Nest$fputmIsBound(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;Z)V

    .line 149
    const-string v1, "Service has bound successfully."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method private detach()V
    .registers 6

    .line 153
    const-string v0, "Process of service has died, detach from it."

    const-string v1, "CbmController-IndividualEngine"

    iget-object v2, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelService:Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;

    if-eqz v2, :cond_32

    .line 155
    const/4 v2, 0x0

    :try_start_9
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelService:Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;

    invoke-interface {v3}, Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelBindRecord:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;

    invoke-interface {v3, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 156
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelService:Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;

    invoke-interface {v3}, Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;->detach()V
    :try_end_19
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_19} :catch_1a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1a

    .line 159
    goto :goto_1e

    .line 157
    :catch_1a
    move-exception v3

    .line 158
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_1e
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelBindRecord:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 162
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelBindRecord:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;

    invoke-static {v3, v2}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;->-$$Nest$fputmIsBound(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;Z)V

    .line 163
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelService:Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;

    .line 164
    iput-boolean v2, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mNeedBindService:Z

    .line 165
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_32
    return-void
.end method

.method private tryToBindModelService()V
    .registers 8

    .line 119
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_5c

    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mNeedBindService:Z

    if-nez v0, :cond_9

    goto :goto_5c

    .line 123
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelBindRecord:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;->-$$Nest$fgetmIsBound(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelService:Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;

    if-eqz v0, :cond_16

    .line 125
    return-void

    .line 127
    :cond_16
    const-string/jumbo v0, "tryToBindModelService: try to bind model service."

    const-string v1, "CbmController-IndividualEngine"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 129
    .local v0, "userId":I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.aiautobrt.service.AiService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelBindRecord:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    const v6, 0x4000001

    invoke-virtual {v3, v2, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind service: bindService failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_5b
    return-void

    .line 121
    .end local v0  # "userId":I
    .end local v2  # "intent":Landroid/content/Intent;
    :cond_5c
    :goto_5c
    return-void
.end method


# virtual methods
.method protected bindServiceDueToBrightnessAdjust(Z)V
    .registers 4
    .param p1, "needBindService"  # Z

    .line 302
    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mNeedBindService:Z

    if-eq v0, p1, :cond_10

    .line 303
    iput-boolean p1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mNeedBindService:Z

    .line 304
    const-string v0, "CbmController-IndividualEngine"

    const-string v1, "Try to bind service due to brightness adjust."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->tryToBindModelService()V

    .line 307
    :cond_10
    return-void
.end method

.method protected completeModelValidation()V
    .registers 2

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValidationInProgress:Z

    .line 295
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 310
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_CBM:Z

    sput-boolean v0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->sDebug:Z

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mModelService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelService:Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelBindRecord:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;

    invoke-static {v1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;->-$$Nest$fgetmIsBound(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mModelValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mModelValidStateReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValidStateReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mModelValidationInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValidationInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method protected isModelValid()Z
    .registers 2

    .line 245
    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValid:Z

    return v0
.end method

.method protected isVerificationInProgress()Z
    .registers 2

    .line 298
    iget-boolean v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValidationInProgress:Z

    return v0
.end method

.method public onBootCompleted()V
    .registers 3

    .line 170
    const-string v0, "CbmController-IndividualEngine"

    const-string/jumbo v1, "onBootCompleted: boot completed."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method public preparePredictBrightness(Lcom/xiaomi/aiautobrt/IndividualModelEvent;)V
    .registers 5
    .param p1, "event"  # Lcom/xiaomi/aiautobrt/IndividualModelEvent;

    .line 104
    const-string v0, "CbmController-IndividualEngine"

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelService:Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelBindRecord:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;

    invoke-static {v1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;->-$$Nest$fgetmIsBound(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_39

    .line 109
    :cond_f
    :try_start_f
    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValidationInProgress:Z

    if-nez v1, :cond_2a

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preparePredictBrightness: event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_2a
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelService:Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;

    invoke-interface {v1, p1}, Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;->predictBrightness(Lcom/xiaomi/aiautobrt/IndividualModelEvent;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2f} :catch_30

    .line 115
    goto :goto_38

    .line 113
    :catch_30
    move-exception v1

    .line 114
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_38
    return-void

    .line 105
    :cond_39
    :goto_39
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->tryToBindModelService()V

    .line 106
    return-void
.end method

.method protected setDataStore(Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;)V
    .registers 2
    .param p1, "dataStore"  # Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    .line 281
    iput-object p1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mDataStore:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    .line 282
    return-void
.end method

.method protected setModeValidFromXml(Z)V
    .registers 5
    .param p1, "enabled"  # Z

    .line 273
    iput-boolean p1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValid:Z

    .line 274
    const-string v0, "backup"

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValidStateReason:Ljava/lang/String;

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setModeValidFromXml: model is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 276
    iget-boolean v2, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValid:Z

    if-eqz v2, :cond_19

    const-string v2, " valid"

    goto :goto_1b

    :cond_19
    const-string v2, " invalid"

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    const-string v1, "CbmController-IndividualEngine"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method

.method protected setModelValid(ZLjava/lang/String;)V
    .registers 6
    .param p1, "valid"  # Z
    .param p2, "reason"  # Ljava/lang/String;

    .line 255
    const-string v0, "CbmController-IndividualEngine"

    if-eqz p1, :cond_2e

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValid:Z

    if-nez v1, :cond_2e

    .line 256
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValid:Z

    .line 257
    iput-object p2, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValidStateReason:Ljava/lang/String;

    .line 258
    iget-object v2, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mDataStore:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    if-eqz v2, :cond_16

    .line 259
    iget-object v2, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mDataStore:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    invoke-virtual {v2, v1}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->storeIndividualModelEnabled(Z)V

    .line 261
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setModelValid: model is valid due to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 262
    :cond_2e
    if-nez p1, :cond_59

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValid:Z

    if-eqz v1, :cond_59

    .line 263
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValid:Z

    .line 264
    iput-object p2, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelValidStateReason:Ljava/lang/String;

    .line 265
    iget-object v2, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mDataStore:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    if-eqz v2, :cond_42

    .line 266
    iget-object v2, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mDataStore:Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;

    invoke-virtual {v2, v1}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->storeIndividualModelEnabled(Z)V

    .line 268
    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setModelInvalid: model is invalid due to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_59
    :goto_59
    return-void
.end method

.method public uploadBrightnessModelEvent(Lcom/xiaomi/aiautobrt/IndividualModelEvent;Z)V
    .registers 6
    .param p1, "event"  # Lcom/xiaomi/aiautobrt/IndividualModelEvent;
    .param p2, "enable"  # Z

    .line 84
    const-string v0, "CbmController-IndividualEngine"

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelService:Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelBindRecord:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;

    invoke-static {v1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;->-$$Nest$fgetmIsBound(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_3d

    .line 89
    :cond_f
    if-eqz p2, :cond_3b

    .line 90
    :try_start_11
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->mModelService:Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;

    invoke-interface {v1, p1}, Lcom/xiaomi/aiautobrt/IIndividualBrightnessService;->onEventChanged(Lcom/xiaomi/aiautobrt/IndividualModelEvent;)V

    .line 91
    sget-boolean v1, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->sDebug:Z

    if-eqz v1, :cond_3b

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploadBrightnessModelEvent: event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_31} :catch_32

    goto :goto_3b

    .line 95
    :catch_32
    move-exception v1

    .line 96
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 97
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_3b
    :goto_3b
    nop

    .line 98
    :goto_3c
    return-void

    .line 85
    :cond_3d
    :goto_3d
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->tryToBindModelService()V

    .line 86
    return-void
.end method
