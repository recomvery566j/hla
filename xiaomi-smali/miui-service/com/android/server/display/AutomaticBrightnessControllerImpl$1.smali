# classes.dex

.class Lcom/android/server/display/AutomaticBrightnessControllerImpl$1;
.super Ljava/lang/Object;
.source "AutomaticBrightnessControllerImpl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessControllerImpl;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/AutomaticBrightnessControllerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 471
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl$1;->this$0:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"  # Landroid/hardware/Sensor;
    .param p2, "accuracy"  # I

    .line 489
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 474
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_18

    goto :goto_16

    .line 479
    :sswitch_a
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl$1;->this$0:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-static {v0, p1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->-$$Nest$monNonUiSensorChanged(Lcom/android/server/display/AutomaticBrightnessControllerImpl;Landroid/hardware/SensorEvent;)V

    .line 480
    goto :goto_16

    .line 476
    :sswitch_10
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl$1;->this$0:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-static {v0, p1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->-$$Nest$monProximitySensorChanged(Lcom/android/server/display/AutomaticBrightnessControllerImpl;Landroid/hardware/SensorEvent;)V

    .line 477
    nop

    .line 484
    :goto_16
    return-void

    nop

    :sswitch_data_18
    .sparse-switch
        0x8 -> :sswitch_10
        0x1fa2653 -> :sswitch_a
    .end sparse-switch
.end method
