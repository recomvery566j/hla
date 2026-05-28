# classes.dex

.class Lcom/android/server/display/SwipeUpWindow$3;
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

    .line 530
    iput-object p1, p0, Lcom/android/server/display/SwipeUpWindow$3;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/server/display/animation/DynamicAnimation;ZFF)V
    .registers 9
    .param p1, "animation"  # Lcom/android/server/display/animation/DynamicAnimation;
    .param p2, "canceled"  # Z
    .param p3, "value"  # F
    .param p4, "velocity"  # F

    .line 533
    if-eqz p2, :cond_3

    .line 534
    return-void

    .line 537
    :cond_3
    const-string v0, "SwipeUpWindow"

    const-string/jumbo v1, "wake state animation end"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$3;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v0}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmHandler(Lcom/android/server/display/SwipeUpWindow;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 540
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/SwipeUpWindow$3;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v1}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmHandler(Lcom/android/server/display/SwipeUpWindow;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 541
    return-void
.end method
