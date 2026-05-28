# classes.dex

.class final Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;
.super Ljava/lang/Object;
.source "SwipeUpWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SwipeUpWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DualSpringAnimation"
.end annotation


# instance fields
.field private mSpringAnimationAlpha:Lcom/android/server/display/animation/SpringAnimation;

.field private mSpringAnimationY:Lcom/android/server/display/animation/SpringAnimation;


# direct methods
.method public constructor <init>(Lcom/android/server/display/SwipeUpWindow;Lcom/android/server/display/animation/SpringAnimation;Lcom/android/server/display/animation/SpringAnimation;)V
    .registers 4
    .param p2, "springAnimationY"  # Lcom/android/server/display/animation/SpringAnimation;
    .param p3, "springAnimationAlpha"  # Lcom/android/server/display/animation/SpringAnimation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    iput-object p2, p0, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->mSpringAnimationY:Lcom/android/server/display/animation/SpringAnimation;

    .line 876
    iput-object p3, p0, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->mSpringAnimationAlpha:Lcom/android/server/display/animation/SpringAnimation;

    .line 877
    return-void
.end method


# virtual methods
.method public animateToFinalPosition(FF)V
    .registers 4
    .param p1, "y"  # F
    .param p2, "alpha"  # F

    .line 895
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->mSpringAnimationY:Lcom/android/server/display/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Lcom/android/server/display/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 896
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->mSpringAnimationAlpha:Lcom/android/server/display/animation/SpringAnimation;

    invoke-virtual {v0, p2}, Lcom/android/server/display/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 897
    return-void
.end method

.method public cancel()V
    .registers 2

    .line 885
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->mSpringAnimationY:Lcom/android/server/display/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/server/display/animation/SpringAnimation;->cancel()V

    .line 886
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->mSpringAnimationAlpha:Lcom/android/server/display/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/server/display/animation/SpringAnimation;->cancel()V

    .line 887
    return-void
.end method

.method public skipToEnd()V
    .registers 2

    .line 890
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->mSpringAnimationY:Lcom/android/server/display/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/server/display/animation/SpringAnimation;->skipToEnd()V

    .line 891
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->mSpringAnimationAlpha:Lcom/android/server/display/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/server/display/animation/SpringAnimation;->skipToEnd()V

    .line 892
    return-void
.end method

.method public start()V
    .registers 2

    .line 880
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->mSpringAnimationY:Lcom/android/server/display/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/server/display/animation/SpringAnimation;->start()V

    .line 881
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$DualSpringAnimation;->mSpringAnimationAlpha:Lcom/android/server/display/animation/SpringAnimation;

    invoke-virtual {v0}, Lcom/android/server/display/animation/SpringAnimation;->start()V

    .line 882
    return-void
.end method
