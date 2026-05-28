# classes.dex

.class Lcom/android/server/display/ManualMaxBrightnessController$1;
.super Ljava/lang/Object;
.source "ManualMaxBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ManualMaxBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ManualMaxBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/ManualMaxBrightnessController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/ManualMaxBrightnessController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 350
    iput-object p1, p0, Lcom/android/server/display/ManualMaxBrightnessController$1;->this$0:Lcom/android/server/display/ManualMaxBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"  # Landroid/hardware/Sensor;
    .param p2, "accuracy"  # I

    .line 365
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 353
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController$1;->this$0:Lcom/android/server/display/ManualMaxBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/ManualMaxBrightnessController;->-$$Nest$fgetmLightSensorEnabled(Lcom/android/server/display/ManualMaxBrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 354
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 356
    .local v0, "time":J
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const/high16 v4, 0x42c80000  # 100.0f

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_23

    .line 357
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/server/display/ManualMaxBrightnessController$1;->this$0:Lcom/android/server/display/ManualMaxBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/ManualMaxBrightnessController;->-$$Nest$fgetmLuxFactor(Lcom/android/server/display/ManualMaxBrightnessController;)F

    move-result v3

    mul-float/2addr v2, v3

    goto :goto_27

    :cond_23
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    .line 358
    .local v2, "lux":F
    :goto_27
    iget-object v3, p0, Lcom/android/server/display/ManualMaxBrightnessController$1;->this$0:Lcom/android/server/display/ManualMaxBrightnessController;

    invoke-static {v3, v0, v1, v2}, Lcom/android/server/display/ManualMaxBrightnessController;->-$$Nest$mhandleLightSensorEvent(Lcom/android/server/display/ManualMaxBrightnessController;JF)V

    .line 360
    .end local v0  # "time":J
    .end local v2  # "lux":F
    :cond_2c
    return-void
.end method
