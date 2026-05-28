# classes.dex

.class Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationCallbackDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/animation/AnimationHandler;


# direct methods
.method constructor <init>(Lcom/android/server/display/animation/AnimationHandler;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/animation/AnimationHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/android/server/display/animation/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchAnimationFrame()V
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/android/server/display/animation/AnimationHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/display/animation/AnimationHandler;->mCurrentFrameTime:J

    .line 59
    iget-object v0, p0, Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/android/server/display/animation/AnimationHandler;

    iget-object v1, p0, Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/android/server/display/animation/AnimationHandler;

    iget-wide v1, v1, Lcom/android/server/display/animation/AnimationHandler;->mCurrentFrameTime:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/animation/AnimationHandler;->doAnimationFrame(J)V

    .line 60
    iget-object v0, p0, Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/android/server/display/animation/AnimationHandler;

    iget-object v0, v0, Lcom/android/server/display/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 61
    iget-object v0, p0, Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/android/server/display/animation/AnimationHandler;

    invoke-virtual {v0}, Lcom/android/server/display/animation/AnimationHandler;->getProvider()Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    .line 63
    :cond_24
    return-void
.end method
