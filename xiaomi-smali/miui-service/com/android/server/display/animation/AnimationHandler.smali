# classes.dex

.class Lcom/android/server/display/animation/AnimationHandler;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;,
        Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallbackProvider;,
        Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16;,
        Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider14;,
        Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallback;
    }
.end annotation


# static fields
.field private static final FRAME_DELAY_MS:J = 0xaL

.field public static final sAnimatorHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/server/display/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackDispatcher:Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;

.field mCurrentFrameTime:J

.field private final mDelayedCallbackStartTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mListDirty:Z

.field private mProvider:Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallbackProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/server/display/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, p0}, Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;-><init>(Lcom/android/server/display/animation/AnimationHandler;)V

    iput-object v0, p0, Lcom/android/server/display/animation/AnimationHandler;->mCallbackDispatcher:Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/animation/AnimationHandler;->mCurrentFrameTime:J

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/animation/AnimationHandler;->mListDirty:Z

    return-void
.end method

.method private cleanUpList()V
    .registers 3

    .line 181
    iget-boolean v0, p0, Lcom/android/server/display/animation/AnimationHandler;->mListDirty:Z

    if-eqz v0, :cond_21

    .line 182
    iget-object v0, p0, Lcom/android/server/display/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_1e

    .line 183
    iget-object v1, p0, Lcom/android/server/display/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 184
    iget-object v1, p0, Lcom/android/server/display/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 182
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 187
    .end local v0  # "i":I
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/animation/AnimationHandler;->mListDirty:Z

    .line 189
    :cond_21
    return-void
.end method

.method public static getFrameTime()J
    .registers 2

    .line 93
    sget-object v0, Lcom/android/server/display/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    .line 94
    const-wide/16 v0, 0x0

    return-wide v0

    .line 96
    :cond_b
    sget-object v0, Lcom/android/server/display/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/animation/AnimationHandler;

    iget-wide v0, v0, Lcom/android/server/display/animation/AnimationHandler;->mCurrentFrameTime:J

    return-wide v0
.end method

.method public static getInstance()Lcom/android/server/display/animation/AnimationHandler;
    .registers 2

    .line 86
    sget-object v0, Lcom/android/server/display/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 87
    sget-object v0, Lcom/android/server/display/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/android/server/display/animation/AnimationHandler;

    invoke-direct {v1}, Lcom/android/server/display/animation/AnimationHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 89
    :cond_12
    sget-object v0, Lcom/android/server/display/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/animation/AnimationHandler;

    return-object v0
.end method

.method private isCallbackDue(Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallback;J)Z
    .registers 8
    .param p1, "callback"  # Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallback;
    .param p2, "currentTime"  # J

    .line 169
    iget-object v0, p0, Lcom/android/server/display/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 170
    .local v0, "startTime":Ljava/lang/Long;
    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 171
    return v1

    .line 173
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-gez v2, :cond_1a

    .line 174
    iget-object v2, p0, Lcom/android/server/display/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return v1

    .line 177
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public addAnimationFrameCallback(Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallback;J)V
    .registers 7
    .param p1, "callback"  # Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallback;
    .param p2, "delay"  # J

    .line 123
    iget-object v0, p0, Lcom/android/server/display/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 124
    invoke-virtual {p0}, Lcom/android/server/display/animation/AnimationHandler;->getProvider()Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    .line 126
    :cond_f
    iget-object v0, p0, Lcom/android/server/display/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 127
    iget-object v0, p0, Lcom/android/server/display/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_1c
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_30

    .line 131
    iget-object v0, p0, Lcom/android/server/display/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_30
    return-void
.end method

.method doAnimationFrame(J)V
    .registers 8
    .param p1, "frameTime"  # J

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 150
    .local v0, "currentTime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    iget-object v3, p0, Lcom/android/server/display/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 151
    iget-object v3, p0, Lcom/android/server/display/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallback;

    .line 152
    .local v3, "callback":Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallback;
    if-nez v3, :cond_18

    .line 153
    goto :goto_21

    .line 155
    :cond_18
    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/display/animation/AnimationHandler;->isCallbackDue(Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallback;J)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 156
    invoke-interface {v3, p1, p2}, Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    .line 150
    .end local v3  # "callback":Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallback;
    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 159
    .end local v2  # "i":I
    :cond_24
    invoke-direct {p0}, Lcom/android/server/display/animation/AnimationHandler;->cleanUpList()V

    .line 160
    return-void
.end method

.method getProvider()Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/android/server/display/animation/AnimationHandler;->mProvider:Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallbackProvider;

    if-nez v0, :cond_e

    .line 110
    nop

    .line 111
    new-instance v0, Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16;

    iget-object v1, p0, Lcom/android/server/display/animation/AnimationHandler;->mCallbackDispatcher:Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, v1}, Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16;-><init>(Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;)V

    iput-object v0, p0, Lcom/android/server/display/animation/AnimationHandler;->mProvider:Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 116
    :cond_e
    iget-object v0, p0, Lcom/android/server/display/animation/AnimationHandler;->mProvider:Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallbackProvider;

    return-object v0
.end method

.method public removeCallback(Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallback;)V
    .registers 5
    .param p1, "callback"  # Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallback;

    .line 139
    iget-object v0, p0, Lcom/android/server/display/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/android/server/display/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 141
    .local v0, "id":I
    if-ltz v0, :cond_16

    .line 142
    iget-object v1, p0, Lcom/android/server/display/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/animation/AnimationHandler;->mListDirty:Z

    .line 145
    :cond_16
    return-void
.end method

.method public setProvider(Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallbackProvider;)V
    .registers 2
    .param p1, "provider"  # Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 104
    iput-object p1, p0, Lcom/android/server/display/animation/AnimationHandler;->mProvider:Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 105
    return-void
.end method
