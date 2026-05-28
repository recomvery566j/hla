# classes.dex

.class Lcom/android/server/display/SunlightController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SunlightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SunlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/SunlightController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/SunlightController;Landroid/os/Handler;)V
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

    .line 519
    iput-object p1, p0, Lcom/android/server/display/SunlightController$SettingsObserver;->this$0:Lcom/android/server/display/SunlightController;

    .line 520
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 521
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 525
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "lastPathSegment":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_4a

    :cond_b
    goto :goto_38

    :sswitch_c
    const-string/jumbo v1, "screen_brightness"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x2

    goto :goto_39

    :sswitch_17
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_39

    :sswitch_22
    const-string/jumbo v1, "low_power_level_state"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x3

    goto :goto_39

    :sswitch_2d
    const-string/jumbo v1, "sunlight_mode"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_39

    :goto_38
    const/4 v1, -0x1

    :goto_39
    packed-switch v1, :pswitch_data_5c

    goto :goto_49

    .line 533
    :pswitch_3d  #0x3
    iget-object v1, p0, Lcom/android/server/display/SunlightController$SettingsObserver;->this$0:Lcom/android/server/display/SunlightController;

    invoke-static {v1}, Lcom/android/server/display/SunlightController;->-$$Nest$mupdateLowPowerState(Lcom/android/server/display/SunlightController;)V

    .line 534
    goto :goto_49

    .line 530
    :pswitch_43  #0x0, 0x1, 0x2
    iget-object v1, p0, Lcom/android/server/display/SunlightController$SettingsObserver;->this$0:Lcom/android/server/display/SunlightController;

    invoke-static {v1}, Lcom/android/server/display/SunlightController;->-$$Nest$mupdateSunlightModeSettings(Lcom/android/server/display/SunlightController;)V

    .line 531
    nop

    .line 539
    :goto_49
    return-void

    :sswitch_data_4a
    .sparse-switch
        -0x69203588 -> :sswitch_2d
        -0x2a02884f -> :sswitch_22
        -0x294f7102 -> :sswitch_17
        0x67748604 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_43  #00000000
        :pswitch_43  #00000001
        :pswitch_43  #00000002
        :pswitch_3d  #00000003
    .end packed-switch
.end method
