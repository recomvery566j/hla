# classes.dex

.class Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;
.super Ljava/lang/Object;
.source "DisplayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchHintTimer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer$EventListener;
    }
.end annotation


# instance fields
.field private currentTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public isTiming:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field final synthetic this$0:Lcom/android/server/display/DisplayManagerServiceImpl;


# direct methods
.method public static synthetic $r8$lambda$uevyEJ3n25e5U8tELuwygTcIhPo(Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->restoreSettings()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/display/DisplayManagerServiceImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->isTiming:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 272
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 273
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->currentTask:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerServiceImpl;Lcom/android/server/display/DisplayManagerServiceImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;-><init>(Lcom/android/server/display/DisplayManagerServiceImpl;)V

    return-void
.end method

.method private restoreSettings()V
    .registers 5

    .line 288
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmLastVideoFps(Lcom/android/server/display/DisplayManagerServiceImpl;)I

    move-result v0

    if-eqz v0, :cond_2d

    .line 289
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmVideoHighFpsScene(Lcom/android/server/display/DisplayManagerServiceImpl;)Z

    move-result v0

    const/high16 v1, 0x42700000  # 60.0f

    if-eqz v0, :cond_26

    .line 290
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmLastVideoFps(Lcom/android/server/display/DisplayManagerServiceImpl;)I

    move-result v2

    const/16 v3, 0x6e

    if-lt v2, v3, :cond_22

    const/high16 v1, 0x42f00000  # 120.0f

    :cond_22
    invoke-interface {v0, v1}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setVideoMaxRefreshRate(F)V

    goto :goto_2d

    .line 292
    :cond_26
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setVideoMaxRefreshRate(F)V

    .line 295
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->isTiming:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->currentTask:Ljava/util/concurrent/ScheduledFuture;

    .line 297
    return-void
.end method


# virtual methods
.method public handleEvent()V
    .registers 6

    .line 280
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->currentTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_a

    .line 281
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->currentTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 283
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->isTiming:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 284
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;)V

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->currentTask:Ljava/util/concurrent/ScheduledFuture;

    .line 285
    return-void
.end method

.method public shutdown()V
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->currentTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_a

    .line 301
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->currentTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 303
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 304
    return-void
.end method
