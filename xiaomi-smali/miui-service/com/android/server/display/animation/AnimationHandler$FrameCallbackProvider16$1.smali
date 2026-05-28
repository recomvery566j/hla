# classes.dex

.class Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16$1;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16;-><init>(Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16;


# direct methods
.method constructor <init>(Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16$1;->this$0:Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 4
    .param p1, "frameTimeNanos"  # J

    .line 204
    iget-object v0, p0, Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16$1;->this$0:Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16;

    iget-object v0, v0, Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16;->mDispatcher:Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-virtual {v0}, Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;->dispatchAnimationFrame()V

    .line 205
    return-void
.end method
