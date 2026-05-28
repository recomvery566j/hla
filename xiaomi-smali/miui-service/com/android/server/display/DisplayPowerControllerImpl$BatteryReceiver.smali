# classes.dex

.class final Lcom/android/server/display/DisplayPowerControllerImpl$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisplayPowerControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2841
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$BatteryReceiver;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayPowerControllerImpl;Lcom/android/server/display/DisplayPowerControllerImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl$BatteryReceiver;-><init>(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 2845
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2846
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    .line 2847
    invoke-static {}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$sfgetmLimitBrightnessByBatteryPluggedAndLevel()Z

    move-result v1

    const-string/jumbo v3, "level"

    if-eqz v1, :cond_27

    .line 2848
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$BatteryReceiver;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2849
    const-string/jumbo v4, "plugged"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2848
    invoke-static {v1, v3, v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$mupdateBrightnessByBatteryLevelAndPlugged(Lcom/android/server/display/DisplayPowerControllerImpl;II)V

    goto :goto_6c

    .line 2852
    :cond_27
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$BatteryReceiver;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$mupdateBatteryBrightness(Lcom/android/server/display/DisplayPowerControllerImpl;I)V

    goto :goto_6c

    .line 2854
    :cond_31
    const-string v1, "com.miui.powerkeeper.TEMP_MODE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 2855
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$BatteryReceiver;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    const-string v2, "bcas_level"

    const/16 v3, 0x9

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$mupdateBatteryThermalBrightness(Lcom/android/server/display/DisplayPowerControllerImpl;I)V

    goto :goto_6c

    .line 2856
    :cond_47
    const-string v1, "com.android.camera.action.camera_status"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 2857
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$BatteryReceiver;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmAutomaticBrightnessControllerImpl(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    move-result-object v1

    if-eqz v1, :cond_6c

    const-string v1, "displayId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 2858
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl$BatteryReceiver;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmAutomaticBrightnessControllerImpl(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    move-result-object v3

    .line 2859
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2858
    invoke-virtual {v3, v1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->updateCameraStatus(I)V

    .line 2862
    :cond_6c
    :goto_6c
    return-void
.end method
