# classes.dex

.class final Lcom/android/server/display/mode/SocThermalStatusObserver;
.super Landroid/os/IThermalEventListener$Stub;
.source "SocThermalStatusObserver.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/server/display/mode/SocThermalStatusObserverStub;


# static fields
.field private static SOC_LOW_TEMP_HIGHT_LEVEL:I = 0x0

.field private static SOC_LOW_TEMP_LOW_LEVEL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SocThermalStatusObserver"


# instance fields
.field private mDisplayId:I

.field private mDisplayModeDirectorStub:Lcom/android/server/display/mode/DisplayModeDirectorStub;

.field private mHandler:Landroid/os/Handler;

.field private mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field private mIsSocLowTemp:Z

.field private mLoggingEnabled:Z

.field private mSocLowTemp:I

.field private final mThermalObserverLock:Ljava/lang/Object;

.field private final mThermalThrottlingByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/view/SurfaceControl$RefreshRateRange;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method public static synthetic $r8$lambda$F6Eeo0stshfD2gjx6DifhDqIQ_g(Lcom/android/server/display/mode/SocThermalStatusObserver;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/mode/SocThermalStatusObserver;->lambda$onDisplayRemoved$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$b_HcR1gM4ANGT6G0iSjTCzXsvFE(Lcom/android/server/display/mode/SocThermalStatusObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/mode/SocThermalStatusObserver;->updateVotes()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 56
    const/4 v0, 0x5

    sput v0, Lcom/android/server/display/mode/SocThermalStatusObserver;->SOC_LOW_TEMP_LOW_LEVEL:I

    .line 57
    const/16 v0, 0xa

    sput v0, Lcom/android/server/display/mode/SocThermalStatusObserver;->SOC_LOW_TEMP_HIGHT_LEVEL:I

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mSocLowTemp:I

    .line 60
    iput-boolean v0, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mIsSocLowTemp:Z

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mThermalThrottlingByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method private getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;
    .registers 7
    .param p1, "type"  # I

    .line 118
    invoke-direct {p0}, Lcom/android/server/display/mode/SocThermalStatusObserver;->getThermalService()Landroid/os/IThermalService;

    move-result-object v0

    .line 119
    .local v0, "thermalService":Landroid/os/IThermalService;
    const/4 v1, 0x0

    .line 120
    .local v1, "temperatures":[Landroid/os/Temperature;
    const-string v2, "SocThermalStatusObserver"

    if-nez v0, :cond_e

    .line 121
    const-string v3, "Could not getCurrentTemperatures. Service not available"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_e
    :try_start_e
    invoke-interface {v0, p1}, Landroid/os/IThermalService;->getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;

    move-result-object v2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_14

    move-object v1, v2

    .line 127
    goto :goto_1a

    .line 125
    :catch_14
    move-exception v3

    .line 126
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to getCurrentTemperatures"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_1a
    return-object v1
.end method

.method private getThermalService()Landroid/os/IThermalService;
    .registers 2

    .line 132
    nop

    .line 133
    const-string/jumbo v0, "thermalservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 132
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$onDisplayRemoved$0(I)V
    .registers 5
    .param p1, "displayId"  # I

    .line 181
    iget-object v0, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method

.method private registerThermalServiceListener(Landroid/os/IThermalEventListener;)Z
    .registers 7
    .param p1, "listener"  # Landroid/os/IThermalEventListener;

    .line 90
    invoke-direct {p0}, Lcom/android/server/display/mode/SocThermalStatusObserver;->getThermalService()Landroid/os/IThermalService;

    move-result-object v0

    .line 91
    .local v0, "thermalService":Landroid/os/IThermalService;
    const/4 v1, 0x0

    const-string v2, "SocThermalStatusObserver"

    if-nez v0, :cond_f

    .line 92
    const-string v3, "Could not observe thermal status. Service not available"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return v1

    .line 96
    :cond_f
    const/16 v3, 0xd

    :try_start_11
    invoke-interface {v0, p1, v3}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_17

    .line 101
    nop

    .line 102
    const/4 v1, 0x1

    return v1

    .line 98
    :catch_17
    move-exception v3

    .line 99
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to register thermal status listener"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    return v1
.end method

.method private reportThrottlingIfNeeded(Z)V
    .registers 6
    .param p1, "currentStatus"  # Z

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "vote":Lcom/android/server/display/mode/Vote;
    const/4 v1, 0x2

    if-eqz p1, :cond_17

    .line 218
    const/4 v2, 0x0

    const/high16 v3, 0x42f00000  # 120.0f

    invoke-static {v2, v3}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    .line 219
    iget-object v2, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mDisplayModeDirectorStub:Lcom/android/server/display/mode/DisplayModeDirectorStub;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->shouldSkipCoreScenarioPolicy(ZI)V

    .line 220
    iget-object v1, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mDisplayModeDirectorStub:Lcom/android/server/display/mode/DisplayModeDirectorStub;

    invoke-interface {v1}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setSmartDisplayPolicyEnd()V

    goto :goto_1d

    .line 222
    :cond_17
    iget-object v2, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mDisplayModeDirectorStub:Lcom/android/server/display/mode/DisplayModeDirectorStub;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->shouldSkipCoreScenarioPolicy(ZI)V

    .line 224
    :goto_1d
    iget-object v1, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    iget v2, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mDisplayId:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 225
    iget-boolean v1, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mLoggingEnabled:Z

    if-eqz v1, :cond_42

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Voted(fallback): vote="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SocThermalStatusObserver"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_42
    return-void
.end method

.method private unregisterThermalServiceListener(Landroid/os/IThermalEventListener;)V
    .registers 6
    .param p1, "listener"  # Landroid/os/IThermalEventListener;

    .line 106
    invoke-direct {p0}, Lcom/android/server/display/mode/SocThermalStatusObserver;->getThermalService()Landroid/os/IThermalService;

    move-result-object v0

    .line 107
    .local v0, "thermalService":Landroid/os/IThermalService;
    const-string v1, "SocThermalStatusObserver"

    if-nez v0, :cond_d

    .line 108
    const-string v2, "Could not unregister thermal status. Service not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_d
    :try_start_d
    invoke-interface {v0, p1}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    .line 114
    goto :goto_17

    .line 112
    :catch_11
    move-exception v2

    .line 113
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to unregister thermal status listener"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method

.method private updateVotes()V
    .registers 5

    .line 205
    iget-object v0, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mIsSocLowTemp:Z

    .line 207
    .local v1, "localStatus":Z
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_26

    .line 208
    iget-boolean v0, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mLoggingEnabled:Z

    if-eqz v0, :cond_22

    .line 209
    const-string v0, "SocThermalStatusObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating votes for status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_22
    invoke-direct {p0, v1}, Lcom/android/server/display/mode/SocThermalStatusObserver;->reportThrottlingIfNeeded(Z)V

    .line 213
    return-void

    .line 207
    .end local v1  # "localStatus":Z
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "writer"  # Ljava/io/PrintWriter;

    .line 235
    iget-object v0, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mIsSocLowTemp:Z

    .line 237
    .local v1, "localStatus":Z
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_22

    .line 239
    const-string v0, "  SocThermalStatusObserver:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    return-void

    .line 237
    .end local v1  # "localStatus":Z
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public init(Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;)V
    .registers 4
    .param p1, "injector"  # Lcom/android/server/display/mode/DisplayModeDirector$Injector;
    .param p2, "votesStorage"  # Lcom/android/server/display/mode/VotesStorage;

    .line 67
    iput-object p1, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 68
    iput-object p2, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 69
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mHandler:Landroid/os/Handler;

    .line 70
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mDisplayModeDirectorStub:Lcom/android/server/display/mode/DisplayModeDirectorStub;

    .line 71
    return-void
.end method

.method public notifyThrottling(Landroid/os/Temperature;)V
    .registers 6
    .param p1, "temp"  # Landroid/os/Temperature;

    .line 143
    invoke-virtual {p1}, Landroid/os/Temperature;->getValue()F

    move-result v0

    float-to-int v0, v0

    .line 144
    .local v0, "currentStatus":I
    iget-object v1, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Temperature;->getValue()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mSocLowTemp:I

    .line 146
    iget-boolean v2, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mIsSocLowTemp:Z

    if-eqz v2, :cond_27

    .line 147
    iget v2, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mSocLowTemp:I

    sget v3, Lcom/android/server/display/mode/SocThermalStatusObserver;->SOC_LOW_TEMP_HIGHT_LEVEL:I

    if-lt v2, v3, :cond_3a

    .line 148
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mIsSocLowTemp:Z

    .line 149
    iget-object v2, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/display/mode/SocThermalStatusObserver$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/display/mode/SocThermalStatusObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/SocThermalStatusObserver;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3a

    .line 152
    :cond_27
    iget v2, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mSocLowTemp:I

    sget v3, Lcom/android/server/display/mode/SocThermalStatusObserver;->SOC_LOW_TEMP_HIGHT_LEVEL:I

    if-ge v2, v3, :cond_3a

    .line 153
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mIsSocLowTemp:Z

    .line 154
    iget-object v2, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/display/mode/SocThermalStatusObserver$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/display/mode/SocThermalStatusObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/SocThermalStatusObserver;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    :cond_3a
    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_58

    .line 159
    iget-boolean v1, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mLoggingEnabled:Z

    if-eqz v1, :cond_57

    .line 160
    const-string v1, "SocThermalStatusObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New thermal throttling status , current thermal status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_57
    return-void

    .line 157
    :catchall_58
    move-exception v2

    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v2
.end method

.method public observe()V
    .registers 5

    .line 76
    invoke-direct {p0, p0}, Lcom/android/server/display/mode/SocThermalStatusObserver;->registerThermalServiceListener(Landroid/os/IThermalEventListener;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 77
    return-void

    .line 80
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    iget-object v1, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/mode/SocThermalStatusObserver;->reportThrottlingIfNeeded(Z)V

    .line 86
    iput-boolean v0, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mIsSocLowTemp:Z

    .line 87
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 5
    .param p1, "displayId"  # I

    .line 168
    iput p1, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mDisplayId:I

    .line 169
    iget-boolean v0, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mLoggingEnabled:Z

    if-eqz v0, :cond_1e

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display added:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocThermalStatusObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1e
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/server/display/mode/SocThermalStatusObserver;->getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;

    move-result-object v0

    .line 173
    .local v0, "temperatures":[Landroid/os/Temperature;
    if-eqz v0, :cond_30

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_30

    .line 174
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/SocThermalStatusObserver;->notifyThrottling(Landroid/os/Temperature;)V

    .line 176
    :cond_30
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 5
    .param p1, "displayId"  # I

    .line 191
    iput p1, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mDisplayId:I

    .line 192
    iget-boolean v0, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mLoggingEnabled:Z

    if-eqz v0, :cond_1e

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display changed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocThermalStatusObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1e
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/server/display/mode/SocThermalStatusObserver;->getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;

    move-result-object v0

    .line 196
    .local v0, "temperatures":[Landroid/os/Temperature;
    if-eqz v0, :cond_30

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_30

    .line 197
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/SocThermalStatusObserver;->notifyThrottling(Landroid/os/Temperature;)V

    .line 199
    :cond_30
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 5
    .param p1, "displayId"  # I

    .line 180
    iget-object v0, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mThermalObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/mode/SocThermalStatusObserver$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/display/mode/SocThermalStatusObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/mode/SocThermalStatusObserver;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2b

    .line 184
    iget-boolean v0, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mLoggingEnabled:Z

    if-eqz v0, :cond_2a

    .line 185
    const-string v0, "SocThermalStatusObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display removed and voted: displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_2a
    return-void

    .line 183
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public setLoggingEnabled(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 138
    iput-boolean p1, p0, Lcom/android/server/display/mode/SocThermalStatusObserver;->mLoggingEnabled:Z

    .line 139
    return-void
.end method
