# classes.dex

.class abstract Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallbackProvider;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AnimationFrameCallbackProvider"
.end annotation


# instance fields
.field final mDispatcher:Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;


# direct methods
.method constructor <init>(Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;)V
    .registers 2
    .param p1, "dispatcher"  # Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/android/server/display/animation/AnimationHandler$AnimationFrameCallbackProvider;->mDispatcher:Lcom/android/server/display/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 255
    return-void
.end method


# virtual methods
.method abstract postFrameCallback()V
.end method
