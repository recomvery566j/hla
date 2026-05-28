# classes.dex

.class final Lcom/android/server/display/SwipeUpWindow$AnimationState;
.super Ljava/lang/Object;
.source "SwipeUpWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SwipeUpWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AnimationState"
.end annotation


# static fields
.field public static final STATE_LOCK:F = 1.0f

.field public static final STATE_UNLOCK:F = -1.0f

.field public static final STATE_WAKE:F


# instance fields
.field private perState:F


# direct methods
.method public constructor <init>(Lcom/android/server/display/SwipeUpWindow;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/server/display/SwipeUpWindow$AnimationState;->perState:F

    .line 845
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/SwipeUpWindow;F)V
    .registers 3
    .param p2, "curState"  # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    iput p2, p0, Lcom/android/server/display/SwipeUpWindow$AnimationState;->perState:F

    .line 849
    return-void
.end method


# virtual methods
.method public getCurrentState()F
    .registers 4

    .line 860
    const/4 v0, 0x0

    .line 861
    .local v0, "state":F
    iget v1, p0, Lcom/android/server/display/SwipeUpWindow$AnimationState;->perState:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_c

    .line 862
    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_16

    .line 863
    :cond_c
    iget v1, p0, Lcom/android/server/display/SwipeUpWindow$AnimationState;->perState:F

    const/high16 v2, -0x40800000  # -1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_16

    .line 864
    const/high16 v0, -0x40800000  # -1.0f

    .line 866
    :cond_16
    :goto_16
    return v0
.end method

.method public getPerState()F
    .registers 2

    .line 852
    iget v0, p0, Lcom/android/server/display/SwipeUpWindow$AnimationState;->perState:F

    return v0
.end method

.method public setPerState(F)V
    .registers 2
    .param p1, "perState"  # F

    .line 856
    iput p1, p0, Lcom/android/server/display/SwipeUpWindow$AnimationState;->perState:F

    .line 857
    return-void
.end method
