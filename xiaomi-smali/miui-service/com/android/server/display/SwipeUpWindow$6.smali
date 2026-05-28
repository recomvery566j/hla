# classes.dex

.class Lcom/android/server/display/SwipeUpWindow$6;
.super Ljava/lang/Object;
.source "SwipeUpWindow.java"

# interfaces
.implements Lcom/android/server/display/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SwipeUpWindow;
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

    .line 572
    iput-object p1, p0, Lcom/android/server/display/SwipeUpWindow$6;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/server/display/animation/DynamicAnimation;ZFF)V
    .registers 7
    .param p1, "animation"  # Lcom/android/server/display/animation/DynamicAnimation;
    .param p2, "canceled"  # Z
    .param p3, "value"  # F
    .param p4, "velocity"  # F

    .line 576
    if-eqz p2, :cond_3

    .line 577
    return-void

    .line 579
    :cond_3
    const-string v0, "SwipeUpWindow"

    const-string/jumbo v1, "unlock state animation end"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$6;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v0}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmHandler(Lcom/android/server/display/SwipeUpWindow;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 581
    return-void
.end method
