# classes.dex

.class Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider14$1;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider14;-><init>(Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider14;


# direct methods
.method constructor <init>(Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider14;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider14;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider14$1;->this$0:Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider14$1;->this$0:Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider14;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    .line 231
    iget-object v0, p0, Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider14$1;->this$0:Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider14;

    iget-object v0, v0, Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider14;->mDispatcher:Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-virtual {v0}, Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;->dispatchAnimationFrame()V

    .line 232
    return-void
.end method
