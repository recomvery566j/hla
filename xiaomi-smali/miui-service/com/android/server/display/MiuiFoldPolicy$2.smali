# classes.dex

.class Lcom/android/server/display/MiuiFoldPolicy$2;
.super Ljava/lang/Object;
.source "MiuiFoldPolicy.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MiuiFoldPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MiuiFoldPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/display/MiuiFoldPolicy;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/MiuiFoldPolicy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 486
    iput-object p1, p0, Lcom/android/server/display/MiuiFoldPolicy$2;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"  # Landroid/hardware/Sensor;
    .param p2, "accuracy"  # I

    .line 499
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 489
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy$2;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/MiuiFoldPolicy;->-$$Nest$fputmNeedOffDueToFoldGesture(Lcom/android/server/display/MiuiFoldPolicy;Z)V

    .line 490
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_27

    .line 491
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v1, 0xb

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy$2;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-static {v1}, Lcom/android/server/display/MiuiFoldPolicy;->-$$Nest$fgetmFoldGestureAngleThreshold(Lcom/android/server/display/MiuiFoldPolicy;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_27

    .line 492
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy$2;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/MiuiFoldPolicy;->-$$Nest$fputmNeedOffDueToFoldGesture(Lcom/android/server/display/MiuiFoldPolicy;Z)V

    .line 495
    :cond_27
    return-void
.end method
