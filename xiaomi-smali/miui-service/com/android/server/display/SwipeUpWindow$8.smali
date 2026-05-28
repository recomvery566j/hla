# classes.dex

.class Lcom/android/server/display/SwipeUpWindow$8;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "SwipeUpWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/SwipeUpWindow;->playIconAnimation()V
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

    .line 714
    iput-object p1, p0, Lcom/android/server/display/SwipeUpWindow$8;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawable"  # Landroid/graphics/drawable/Drawable;

    .line 717
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 719
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$8;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v0}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$fgetmHandler(Lcom/android/server/display/SwipeUpWindow;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 720
    return-void
.end method
