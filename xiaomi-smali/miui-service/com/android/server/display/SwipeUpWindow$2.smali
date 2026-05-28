# classes.dex

.class Lcom/android/server/display/SwipeUpWindow$2;
.super Ljava/lang/Object;
.source "SwipeUpWindow.java"

# interfaces
.implements Lcom/android/server/display/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/SwipeUpWindow;->initGradientShadowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/SwipeUpWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/SwipeUpWindow;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/SwipeUpWindow;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lcom/android/server/display/SwipeUpWindow$2;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/server/display/animation/DynamicAnimation;FF)V
    .registers 5
    .param p1, "animation"  # Lcom/android/server/display/animation/DynamicAnimation;
    .param p2, "value"  # F
    .param p3, "velocity"  # F

    .line 313
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$2;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v0}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$mupdateBlackView(Lcom/android/server/display/SwipeUpWindow;)V

    .line 314
    return-void
.end method
