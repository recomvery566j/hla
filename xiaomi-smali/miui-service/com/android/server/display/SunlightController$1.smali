# classes.dex

.class Lcom/android/server/display/SunlightController$1;
.super Ljava/lang/Object;
.source "SunlightController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SunlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/SunlightController;


# direct methods
.method constructor <init>(Lcom/android/server/display/SunlightController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/SunlightController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 301
    iput-object p1, p0, Lcom/android/server/display/SunlightController$1;->this$0:Lcom/android/server/display/SunlightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"  # Landroid/hardware/Sensor;
    .param p2, "accuracy"  # I

    .line 314
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 304
    iget-object v0, p0, Lcom/android/server/display/SunlightController$1;->this$0:Lcom/android/server/display/SunlightController;

    invoke-static {v0}, Lcom/android/server/display/SunlightController;->-$$Nest$fgetmSunlightSensorEnabled(Lcom/android/server/display/SunlightController;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 306
    .local v0, "time":J
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 307
    .local v2, "lux":F
    iget-object v3, p0, Lcom/android/server/display/SunlightController$1;->this$0:Lcom/android/server/display/SunlightController;

    invoke-static {v3, v0, v1, v2}, Lcom/android/server/display/SunlightController;->-$$Nest$mhandleLightSensorEvent(Lcom/android/server/display/SunlightController;JF)V

    .line 309
    .end local v0  # "time":J
    .end local v2  # "lux":F
    :cond_16
    return-void
.end method
