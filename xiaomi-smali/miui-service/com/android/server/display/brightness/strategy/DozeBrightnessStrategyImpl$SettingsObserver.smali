# classes.dex

.class final Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DozeBrightnessStrategyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;Landroid/os/Handler;)V
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

    .line 239
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl$SettingsObserver;->this$0:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;

    .line 240
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 241
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 245
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3e

    :cond_b
    goto :goto_2b

    :sswitch_c
    const-string/jumbo v1, "rear_doze_always_on"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    goto :goto_2c

    :sswitch_17
    const-string v1, "full_screen_aod_on"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_2c

    :sswitch_21
    const-string v1, "doze_always_on"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_2c

    :goto_2b
    const/4 v0, -0x1

    :goto_2c
    packed-switch v0, :pswitch_data_4c

    goto :goto_3c

    .line 249
    :pswitch_30  #0x0, 0x1, 0x2
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl$SettingsObserver;->this$0:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;

    iget-object v1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl$SettingsObserver;->this$0:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;

    invoke-static {v1}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->-$$Nest$fgetmDisplayId(Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->updateAodMode(I)V

    .line 250
    nop

    .line 254
    :goto_3c
    return-void

    nop

    :sswitch_data_3e
    .sparse-switch
        -0x611a9fa -> :sswitch_21
        0x4f8d264b -> :sswitch_17
        0x791a6e01 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_30  #00000000
        :pswitch_30  #00000001
        :pswitch_30  #00000002
    .end packed-switch
.end method
