# classes.dex

.class Lcom/android/server/display/SwipeUpWindow$1;
.super Lcom/android/server/display/animation/FloatPropertyCompat;
.source "SwipeUpWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/SwipeUpWindow;->initGradientShadowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/display/animation/FloatPropertyCompat<",
        "Lcom/android/server/display/SwipeUpWindow$AnimationState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/server/display/SwipeUpWindow;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/display/SwipeUpWindow;
    .param p2, "name"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 290
    invoke-direct {p0, p2}, Lcom/android/server/display/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/android/server/display/SwipeUpWindow$AnimationState;)F
    .registers 3
    .param p1, "object"  # Lcom/android/server/display/SwipeUpWindow$AnimationState;

    .line 293
    invoke-virtual {p1}, Lcom/android/server/display/SwipeUpWindow$AnimationState;->getPerState()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 290
    check-cast p1, Lcom/android/server/display/SwipeUpWindow$AnimationState;

    invoke-virtual {p0, p1}, Lcom/android/server/display/SwipeUpWindow$1;->getValue(Lcom/android/server/display/SwipeUpWindow$AnimationState;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/android/server/display/SwipeUpWindow$AnimationState;F)V
    .registers 3
    .param p1, "object"  # Lcom/android/server/display/SwipeUpWindow$AnimationState;
    .param p2, "value"  # F

    .line 298
    invoke-virtual {p1, p2}, Lcom/android/server/display/SwipeUpWindow$AnimationState;->setPerState(F)V

    .line 299
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 290
    check-cast p1, Lcom/android/server/display/SwipeUpWindow$AnimationState;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/SwipeUpWindow$1;->setValue(Lcom/android/server/display/SwipeUpWindow$AnimationState;F)V

    return-void
.end method
