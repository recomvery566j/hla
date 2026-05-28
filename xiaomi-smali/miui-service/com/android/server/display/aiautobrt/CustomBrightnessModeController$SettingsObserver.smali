# classes.dex

.class final Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "CustomBrightnessModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;Landroid/os/Handler;)V
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

    .line 1075
    iput-object p1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    .line 1076
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1077
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 1080
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 1081
    .local v0, "lastPathSegment":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_34

    :cond_b
    goto :goto_21

    :sswitch_c
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_22

    :sswitch_17
    const-string v1, "custom_brightness_mode"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_22

    :goto_21
    const/4 v1, -0x1

    :goto_22
    packed-switch v1, :pswitch_data_3e

    goto :goto_32

    .line 1086
    :pswitch_26  #0x1
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    invoke-static {v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->-$$Nest$mupdateScreenBrightnessMode(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;)V

    .line 1087
    goto :goto_32

    .line 1083
    :pswitch_2c  #0x0
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    invoke-static {v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->-$$Nest$mupdateCustomBrightnessEnabled(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;)V

    .line 1084
    nop

    .line 1091
    :goto_32
    return-void

    nop

    :sswitch_data_34
    .sparse-switch
        -0x5d434ffd -> :sswitch_17
        -0x294f7102 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2c  #00000000
        :pswitch_26  #00000001
    .end packed-switch
.end method
