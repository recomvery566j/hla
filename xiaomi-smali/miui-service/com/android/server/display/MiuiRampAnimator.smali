# classes.dex

.class final Lcom/android/server/display/MiuiRampAnimator;
.super Ljava/lang/Object;
.source "MiuiRampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MiuiRampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:I

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/MiuiRampAnimator$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mTargetValue:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnimatedValue(Lcom/android/server/display/MiuiRampAnimator;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimatedValue:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmChoreographer(Lcom/android/server/display/MiuiRampAnimator;)Landroid/view/Choreographer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/MiuiRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentValue(Lcom/android/server/display/MiuiRampAnimator;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastFrameTimeNanos(Lcom/android/server/display/MiuiRampAnimator;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/display/MiuiRampAnimator;)Lcom/android/server/display/MiuiRampAnimator$Listener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/MiuiRampAnimator;->mListener:Lcom/android/server/display/MiuiRampAnimator$Listener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmObject(Lcom/android/server/display/MiuiRampAnimator;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/MiuiRampAnimator;->mObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProperty(Lcom/android/server/display/MiuiRampAnimator;)Landroid/util/IntProperty;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/MiuiRampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRate(Lcom/android/server/display/MiuiRampAnimator;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/MiuiRampAnimator;->mRate:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetValue(Lcom/android/server/display/MiuiRampAnimator;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/MiuiRampAnimator;->mTargetValue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAnimatedValue(Lcom/android/server/display/MiuiRampAnimator;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimatedValue:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnimating(Lcom/android/server/display/MiuiRampAnimator;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimating:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentValue(Lcom/android/server/display/MiuiRampAnimator;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastFrameTimeNanos(Lcom/android/server/display/MiuiRampAnimator;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mLastFrameTimeNanos:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostAnimationCallback(Lcom/android/server/display/MiuiRampAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MiuiRampAnimator;->postAnimationCallback()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/android/server/display/MiuiRampAnimator;, "Lcom/android/server/display/MiuiRampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mFirstTime:Z

    .line 136
    new-instance v0, Lcom/android/server/display/MiuiRampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/MiuiRampAnimator$1;-><init>(Lcom/android/server/display/MiuiRampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    .line 45
    iput-object p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mObject:Ljava/lang/Object;

    .line 46
    iput-object p2, p0, Lcom/android/server/display/MiuiRampAnimator;->mProperty:Landroid/util/IntProperty;

    .line 47
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 48
    return-void
.end method

.method private cancelAnimationCallback()V
    .registers 5

    .line 133
    .local p0, "this":Lcom/android/server/display/MiuiRampAnimator;, "Lcom/android/server/display/MiuiRampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method private postAnimationCallback()V
    .registers 5

    .line 129
    .local p0, "this":Lcom/android/server/display/MiuiRampAnimator;, "Lcom/android/server/display/MiuiRampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 130
    return-void
.end method


# virtual methods
.method public animateTo(II)Z
    .registers 7
    .param p1, "target"  # I
    .param p2, "rate"  # I

    .line 62
    .local p0, "this":Lcom/android/server/display/MiuiRampAnimator;, "Lcom/android/server/display/MiuiRampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mFirstTime:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_47

    if-gtz p2, :cond_9

    goto :goto_47

    .line 88
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimating:Z

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mRate:I

    if-gt p2, v0, :cond_25

    iget v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    if-gt p1, v0, :cond_1b

    iget v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    iget v3, p0, Lcom/android/server/display/MiuiRampAnimator;->mTargetValue:I

    if-le v0, v3, :cond_25

    :cond_1b
    iget v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mTargetValue:I

    iget v3, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    if-gt v0, v3, :cond_27

    iget v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    if-gt v0, p1, :cond_27

    .line 92
    :cond_25
    iput p2, p0, Lcom/android/server/display/MiuiRampAnimator;->mRate:I

    .line 95
    :cond_27
    iget v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mTargetValue:I

    if-eq v0, p1, :cond_2c

    move v2, v1

    .line 96
    .local v2, "changed":Z
    :cond_2c
    iput p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mTargetValue:I

    .line 99
    iget-boolean v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimating:Z

    if-nez v0, :cond_46

    iget v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    if-eq p1, v0, :cond_46

    .line 100
    iput-boolean v1, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimating:Z

    .line 101
    iget v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimatedValue:F

    .line 102
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mLastFrameTimeNanos:J

    .line 103
    invoke-direct {p0}, Lcom/android/server/display/MiuiRampAnimator;->postAnimationCallback()V

    .line 106
    :cond_46
    return v2

    .line 63
    .end local v2  # "changed":Z
    :cond_47
    :goto_47
    iget-boolean v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mFirstTime:Z

    if-nez v0, :cond_51

    iget v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    if-eq p1, v0, :cond_50

    goto :goto_51

    .line 78
    :cond_50
    return v2

    .line 64
    :cond_51
    :goto_51
    iput-boolean v2, p0, Lcom/android/server/display/MiuiRampAnimator;->mFirstTime:Z

    .line 65
    iput v2, p0, Lcom/android/server/display/MiuiRampAnimator;->mRate:I

    .line 66
    iput p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mTargetValue:I

    .line 67
    iput p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    .line 68
    iget-object v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/display/MiuiRampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 69
    iget-boolean v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimating:Z

    if-eqz v0, :cond_69

    .line 70
    iput-boolean v2, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimating:Z

    .line 71
    invoke-direct {p0}, Lcom/android/server/display/MiuiRampAnimator;->cancelAnimationCallback()V

    .line 73
    :cond_69
    iget-object v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mListener:Lcom/android/server/display/MiuiRampAnimator$Listener;

    if-eqz v0, :cond_72

    .line 74
    iget-object v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mListener:Lcom/android/server/display/MiuiRampAnimator$Listener;

    invoke-interface {v0}, Lcom/android/server/display/MiuiRampAnimator$Listener;->onAnimationEnd()V

    .line 76
    :cond_72
    return v1
.end method

.method public isAnimating()Z
    .registers 2

    .line 118
    .local p0, "this":Lcom/android/server/display/MiuiRampAnimator;, "Lcom/android/server/display/MiuiRampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/MiuiRampAnimator;->mAnimating:Z

    return v0
.end method

.method public setListener(Lcom/android/server/display/MiuiRampAnimator$Listener;)V
    .registers 2
    .param p1, "listener"  # Lcom/android/server/display/MiuiRampAnimator$Listener;

    .line 125
    .local p0, "this":Lcom/android/server/display/MiuiRampAnimator;, "Lcom/android/server/display/MiuiRampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mListener:Lcom/android/server/display/MiuiRampAnimator$Listener;

    .line 126
    return-void
.end method

.method public updateTargetValue(I)V
    .registers 2
    .param p1, "value"  # I

    .line 110
    .local p0, "this":Lcom/android/server/display/MiuiRampAnimator;, "Lcom/android/server/display/MiuiRampAnimator<TT;>;"
    iput p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mTargetValue:I

    .line 111
    iput p1, p0, Lcom/android/server/display/MiuiRampAnimator;->mCurrentValue:I

    .line 112
    return-void
.end method
