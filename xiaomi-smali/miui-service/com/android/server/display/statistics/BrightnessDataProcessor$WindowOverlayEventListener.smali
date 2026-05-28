# classes.dex

.class Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;
.super Ljava/lang/Object;
.source "BrightnessDataProcessor.java"

# interfaces
.implements Lcom/miui/server/input/gesture/MiuiGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/BrightnessDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WindowOverlayEventListener"
.end annotation


# instance fields
.field distance_x:I

.field distance_y:I

.field eventXDown:F

.field eventXUp:F

.field eventYDown:F

.field eventYUp:F

.field final synthetic this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

.field userDragging:Z


# direct methods
.method constructor <init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/display/statistics/BrightnessDataProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1795
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1797
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->eventXDown:F

    .line 1798
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->eventYDown:F

    .line 1799
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->eventXUp:F

    .line 1800
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->eventYUp:F

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 1807
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_ce

    goto :goto_29

    .line 1813
    :pswitch_8  #0x2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->userDragging:Z

    .line 1814
    goto :goto_29

    .line 1816
    :pswitch_c  #0x1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->eventXUp:F

    .line 1817
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->eventYUp:F

    .line 1818
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->userDragging:Z

    .line 1819
    goto :goto_29

    .line 1809
    :pswitch_1c  #0x0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->eventXDown:F

    .line 1810
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->eventYDown:F

    .line 1811
    nop

    .line 1824
    :goto_29
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->userDragging:Z

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fgetmUserDragging(Lcom/android/server/display/statistics/BrightnessDataProcessor;)Z

    move-result v1

    if-eq v0, v1, :cond_cd

    .line 1825
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fgetmBackgroundHandler(Lcom/android/server/display/statistics/BrightnessDataProcessor;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1826
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->userDragging:Z

    if-nez v0, :cond_b6

    .line 1827
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->eventXUp:F

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->eventXDown:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->distance_x:I

    .line 1828
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->eventYUp:F

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->eventYDown:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->distance_y:I

    .line 1829
    invoke-static {}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 1830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPointerEvent: x_down: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->eventXDown:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", y_down: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->eventYDown:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", x_up: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->eventXUp:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", y_up: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->eventYUp:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", distance_x: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->distance_x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", distance_y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->distance_y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BrightnessDataProcessor"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :cond_b6
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fgetmBackgroundHandler(Lcom/android/server/display/statistics/BrightnessDataProcessor;)Landroid/os/Handler;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->distance_x:I

    iget v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->distance_y:I

    iget-boolean v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$WindowOverlayEventListener;->userDragging:Z

    .line 1838
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1837
    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1839
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1841
    .end local v0  # "message":Landroid/os/Message;
    :cond_cd
    return-void

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_1c  #00000000
        :pswitch_c  #00000001
        :pswitch_8  #00000002
    .end packed-switch
.end method
