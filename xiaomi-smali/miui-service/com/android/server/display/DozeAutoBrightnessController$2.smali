# classes.dex

.class Lcom/android/server/display/DozeAutoBrightnessController$2;
.super Ljava/lang/Object;
.source "DozeAutoBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DozeAutoBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DozeAutoBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DozeAutoBrightnessController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/DozeAutoBrightnessController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 539
    iput-object p1, p0, Lcom/android/server/display/DozeAutoBrightnessController$2;->this$0:Lcom/android/server/display/DozeAutoBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"  # Landroid/hardware/Sensor;
    .param p2, "accuracy"  # I

    .line 553
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 542
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController$2;->this$0:Lcom/android/server/display/DozeAutoBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/DozeAutoBrightnessController;->-$$Nest$fgetmLightSensorEnabled(Lcom/android/server/display/DozeAutoBrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 543
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController$2;->this$0:Lcom/android/server/display/DozeAutoBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/DozeAutoBrightnessController;->-$$Nest$fgetmTag(Lcom/android/server/display/DozeAutoBrightnessController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSensorChanged value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 545
    .local v0, "time":J
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    .line 546
    .local v2, "lux":F
    iget-object v3, p0, Lcom/android/server/display/DozeAutoBrightnessController$2;->this$0:Lcom/android/server/display/DozeAutoBrightnessController;

    invoke-static {v3, v0, v1, v2}, Lcom/android/server/display/DozeAutoBrightnessController;->-$$Nest$mhandleLightSensorEvent(Lcom/android/server/display/DozeAutoBrightnessController;JF)V

    .line 548
    .end local v0  # "time":J
    .end local v2  # "lux":F
    :cond_37
    return-void
.end method
