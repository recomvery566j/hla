# classes.dex

.class final Lcom/android/server/display/statistics/BrightnessDataProcessor$SensorListener;
.super Ljava/lang/Object;
.source "BrightnessDataProcessor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/BrightnessDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;


# direct methods
.method private constructor <init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2686
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$SensorListener;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;Lcom/android/server/display/statistics/BrightnessDataProcessor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor$SensorListener;-><init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"  # Landroid/hardware/Sensor;
    .param p2, "accuracy"  # I

    .line 2708
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 2690
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_1e

    goto :goto_1c

    .line 2698
    :sswitch_a
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$SensorListener;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mhandleLightFovSensor(Lcom/android/server/display/statistics/BrightnessDataProcessor;Landroid/hardware/SensorEvent;)V

    .line 2699
    goto :goto_1c

    .line 2692
    :sswitch_10
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$SensorListener;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mhandleLightSensor(Lcom/android/server/display/statistics/BrightnessDataProcessor;Landroid/hardware/SensorEvent;)V

    .line 2693
    goto :goto_1c

    .line 2695
    :sswitch_16
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$SensorListener;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0, p1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mhandleAccSensor(Lcom/android/server/display/statistics/BrightnessDataProcessor;Landroid/hardware/SensorEvent;)V

    .line 2696
    nop

    .line 2703
    :goto_1c
    return-void

    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_16
        0x5 -> :sswitch_10
        0x1fa2a8f -> :sswitch_a
    .end sparse-switch
.end method
