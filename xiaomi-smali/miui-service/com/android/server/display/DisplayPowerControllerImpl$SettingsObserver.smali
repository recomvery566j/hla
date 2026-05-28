# classes.dex

.class final Lcom/android/server/display/DisplayPowerControllerImpl$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayPowerControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerControllerImpl;Landroid/os/Handler;)V
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

    .line 1862
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 1863
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1864
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 1868
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_5e

    :cond_b
    goto :goto_40

    :sswitch_c
    const-string v1, "animator_duration_scale"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    goto :goto_41

    :sswitch_16
    const-string/jumbo v1, "is_dynamic_lockscreen_shown"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    goto :goto_41

    :sswitch_21
    const-string v1, "curtain_anim_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    goto :goto_41

    :sswitch_2b
    const-string v1, "accessibility_display_inversion_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_41

    :sswitch_35
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_41

    :goto_40
    const/4 v0, -0x1

    :goto_41
    packed-switch v0, :pswitch_data_74

    goto :goto_5d

    .line 1880
    :pswitch_45  #0x4
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$mupdateAnimatorDurationScale(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    .line 1881
    goto :goto_5d

    .line 1877
    :pswitch_4b  #0x2, 0x3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$mupdateCurtainAnimationEnabled(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    .line 1878
    goto :goto_5d

    .line 1873
    :pswitch_51  #0x1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$mupdateAutoBrightnessMode(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    .line 1874
    goto :goto_5d

    .line 1870
    :pswitch_57  #0x0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$mupdateColorInversionEnabled(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    .line 1871
    nop

    .line 1885
    :goto_5d
    return-void

    :sswitch_data_5e
    .sparse-switch
        -0x294f7102 -> :sswitch_35
        -0x20db1ad9 -> :sswitch_2b
        -0xff61c60 -> :sswitch_21
        0x4211759e -> :sswitch_16
        0x7d687337 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_57  #00000000
        :pswitch_51  #00000001
        :pswitch_4b  #00000002
        :pswitch_4b  #00000003
        :pswitch_45  #00000004
    .end packed-switch
.end method
