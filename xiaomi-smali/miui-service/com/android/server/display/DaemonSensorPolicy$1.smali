# classes.dex

.class Lcom/android/server/display/DaemonSensorPolicy$1;
.super Ljava/lang/Object;
.source "DaemonSensorPolicy.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DaemonSensorPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DaemonSensorPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/display/DaemonSensorPolicy;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/DaemonSensorPolicy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/android/server/display/DaemonSensorPolicy$1;->this$0:Lcom/android/server/display/DaemonSensorPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"  # Landroid/hardware/Sensor;
    .param p2, "accuracy"  # I

    .line 166
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 151
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 152
    .local v0, "sensorType":I
    const/4 v1, 0x5

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    if-ne v0, v1, :cond_39

    iget-object v1, p0, Lcom/android/server/display/DaemonSensorPolicy$1;->this$0:Lcom/android/server/display/DaemonSensorPolicy;

    invoke-static {v1}, Lcom/android/server/display/DaemonSensorPolicy;->-$$Nest$fgetmFovAmplifyFactor(Lcom/android/server/display/DaemonSensorPolicy;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_39

    .line 153
    iget-object v1, p0, Lcom/android/server/display/DaemonSensorPolicy$1;->this$0:Lcom/android/server/display/DaemonSensorPolicy;

    invoke-static {v1}, Lcom/android/server/display/DaemonSensorPolicy;->-$$Nest$fgetmDaemonSensorValues(Lcom/android/server/display/DaemonSensorPolicy;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v3

    iget-object v4, p0, Lcom/android/server/display/DaemonSensorPolicy$1;->this$0:Lcom/android/server/display/DaemonSensorPolicy;

    invoke-static {v4}, Lcom/android/server/display/DaemonSensorPolicy;->-$$Nest$fgetmFovAmplifyFactor(Lcom/android/server/display/DaemonSensorPolicy;)F

    move-result v4

    mul-float/2addr v3, v4

    .line 154
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 153
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_86

    .line 155
    :cond_39
    const v1, 0x1fa266f

    if-ne v0, v1, :cond_6b

    iget-object v1, p0, Lcom/android/server/display/DaemonSensorPolicy$1;->this$0:Lcom/android/server/display/DaemonSensorPolicy;

    invoke-static {v1}, Lcom/android/server/display/DaemonSensorPolicy;->-$$Nest$fgetmAssistFovAmplifyFactor(Lcom/android/server/display/DaemonSensorPolicy;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6b

    .line 156
    iget-object v1, p0, Lcom/android/server/display/DaemonSensorPolicy$1;->this$0:Lcom/android/server/display/DaemonSensorPolicy;

    invoke-static {v1}, Lcom/android/server/display/DaemonSensorPolicy;->-$$Nest$fgetmDaemonSensorValues(Lcom/android/server/display/DaemonSensorPolicy;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v3

    iget-object v4, p0, Lcom/android/server/display/DaemonSensorPolicy$1;->this$0:Lcom/android/server/display/DaemonSensorPolicy;

    invoke-static {v4}, Lcom/android/server/display/DaemonSensorPolicy;->-$$Nest$fgetmAssistFovAmplifyFactor(Lcom/android/server/display/DaemonSensorPolicy;)F

    move-result v4

    mul-float/2addr v3, v4

    .line 157
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 156
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_86

    .line 159
    :cond_6b
    iget-object v1, p0, Lcom/android/server/display/DaemonSensorPolicy$1;->this$0:Lcom/android/server/display/DaemonSensorPolicy;

    invoke-static {v1}, Lcom/android/server/display/DaemonSensorPolicy;->-$$Nest$fgetmDaemonSensorValues(Lcom/android/server/display/DaemonSensorPolicy;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :goto_86
    return-void
.end method
