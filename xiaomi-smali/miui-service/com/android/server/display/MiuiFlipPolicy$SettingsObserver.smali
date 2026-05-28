# classes.dex

.class final Lcom/android/server/display/MiuiFlipPolicy$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MiuiFlipPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MiuiFlipPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MiuiFlipPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/display/MiuiFlipPolicy;Landroid/os/Handler;)V
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

    .line 121
    iput-object p1, p0, Lcom/android/server/display/MiuiFlipPolicy$SettingsObserver;->this$0:Lcom/android/server/display/MiuiFlipPolicy;

    .line 122
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 127
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_44

    :cond_b
    goto :goto_2b

    :sswitch_c
    const-string v1, "flip_continuity_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_2c

    :sswitch_16
    const-string v1, "flip_continuity_default"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_2c

    :sswitch_20
    const-string/jumbo v1, "power_supersave_mode_open"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    goto :goto_2c

    :goto_2b
    const/4 v0, -0x1

    :goto_2c
    packed-switch v0, :pswitch_data_52

    goto :goto_42

    .line 135
    :pswitch_30  #0x2
    iget-object v0, p0, Lcom/android/server/display/MiuiFlipPolicy$SettingsObserver;->this$0:Lcom/android/server/display/MiuiFlipPolicy;

    invoke-static {v0}, Lcom/android/server/display/MiuiFlipPolicy;->-$$Nest$mupdateSuperPowerMode(Lcom/android/server/display/MiuiFlipPolicy;)V

    .line 136
    goto :goto_42

    .line 132
    :pswitch_36  #0x1
    iget-object v0, p0, Lcom/android/server/display/MiuiFlipPolicy$SettingsObserver;->this$0:Lcom/android/server/display/MiuiFlipPolicy;

    invoke-static {v0}, Lcom/android/server/display/MiuiFlipPolicy;->-$$Nest$mupdateContinueStateFromSettings(Lcom/android/server/display/MiuiFlipPolicy;)V

    .line 133
    goto :goto_42

    .line 129
    :pswitch_3c  #0x0
    iget-object v0, p0, Lcom/android/server/display/MiuiFlipPolicy$SettingsObserver;->this$0:Lcom/android/server/display/MiuiFlipPolicy;

    invoke-static {v0}, Lcom/android/server/display/MiuiFlipPolicy;->-$$Nest$mupdateLockStateFromSettings(Lcom/android/server/display/MiuiFlipPolicy;)V

    .line 130
    nop

    .line 140
    :goto_42
    return-void

    nop

    :sswitch_data_44
    .sparse-switch
        0x10b69525 -> :sswitch_20
        0x2aa35684 -> :sswitch_16
        0x6e9f0b84 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_3c  #00000000
        :pswitch_36  #00000001
        :pswitch_30  #00000002
    .end packed-switch
.end method
