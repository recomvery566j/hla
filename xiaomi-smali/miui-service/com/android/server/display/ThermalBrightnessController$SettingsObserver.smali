# classes.dex

.class final Lcom/android/server/display/ThermalBrightnessController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ThermalBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ThermalBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ThermalBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/ThermalBrightnessController;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"  # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 948
    iput-object p1, p0, Lcom/android/server/display/ThermalBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/ThermalBrightnessController;

    .line 949
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 950
    return-void
.end method

.method private updateScreenBrightnessMode()V
    .registers 5

    .line 965
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/ThermalBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/ThermalBrightnessController;->-$$Nest$fgetmContext(Lcom/android/server/display/ThermalBrightnessController;)Landroid/content/Context;

    move-result-object v0

    .line 966
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 965
    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 968
    .local v0, "screenBrightnessModeSetting":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    move v2, v1

    .line 970
    .local v2, "useAutoBrightness":Z
    :cond_17
    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/ThermalBrightnessController;

    invoke-static {v1}, Lcom/android/server/display/ThermalBrightnessController;->-$$Nest$fgetmUseAutoBrightness(Lcom/android/server/display/ThermalBrightnessController;)Z

    move-result v1

    if-eq v2, v1, :cond_29

    .line 971
    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/ThermalBrightnessController;

    invoke-static {v1, v2}, Lcom/android/server/display/ThermalBrightnessController;->-$$Nest$fputmUseAutoBrightness(Lcom/android/server/display/ThermalBrightnessController;Z)V

    .line 972
    iget-object v1, p0, Lcom/android/server/display/ThermalBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/ThermalBrightnessController;

    invoke-static {v1}, Lcom/android/server/display/ThermalBrightnessController;->-$$Nest$mresetDefaultAmbientLux(Lcom/android/server/display/ThermalBrightnessController;)V

    .line 974
    :cond_29
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 954
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, "lastPathSegment":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_22

    :cond_b
    goto :goto_17

    :pswitch_c  #0xd6b08efe
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_18

    :goto_17
    const/4 v1, -0x1

    :goto_18
    packed-switch v1, :pswitch_data_28

    goto :goto_20

    .line 957
    :pswitch_1c  #0x0
    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController$SettingsObserver;->updateScreenBrightnessMode()V

    .line 958
    nop

    .line 962
    :goto_20
    return-void

    nop

    :pswitch_data_22
    .packed-switch -0x294f7102
        :pswitch_c  #d6b08efe
    .end packed-switch

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1c  #00000000
    .end packed-switch
.end method
