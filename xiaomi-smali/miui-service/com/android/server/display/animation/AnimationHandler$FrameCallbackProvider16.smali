# classes.dex

.class Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16;
.super Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallbackProvider;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameCallbackProvider16"
.end annotation


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method constructor <init>(Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;)V
    .registers 3
    .param p1, "dispatcher"  # Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallbackProvider;-><init>(Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;)V

    .line 196
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16;->mChoreographer:Landroid/view/Choreographer;

    .line 201
    new-instance v0, Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16$1;-><init>(Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16;)V

    iput-object v0, p0, Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    .line 207
    return-void
.end method


# virtual methods
.method postFrameCallback()V
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/animation/AnimationHandler$FrameCallbackProvider16;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 212
    return-void
.end method
