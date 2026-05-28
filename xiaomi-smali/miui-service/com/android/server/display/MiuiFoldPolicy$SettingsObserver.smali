# classes.dex

.class final Lcom/android/server/display/MiuiFoldPolicy$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MiuiFoldPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MiuiFoldPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MiuiFoldPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/display/MiuiFoldPolicy;Landroid/os/Handler;)V
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

    .line 366
    iput-object p1, p0, Lcom/android/server/display/MiuiFoldPolicy$SettingsObserver;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    .line 367
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 368
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 372
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "lastPathSegment":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_54

    :cond_b
    goto :goto_35

    :sswitch_c
    const-string v1, "device_provisioned"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x3

    goto :goto_36

    :sswitch_16
    const-string v1, "close_lid_display_setting"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_36

    :sswitch_20
    const-string/jumbo v1, "miui_optimization"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x2

    goto :goto_36

    :sswitch_2b
    const-string v1, "fold_gesture_angle_threshold"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_36

    :goto_35
    const/4 v1, -0x1

    :goto_36
    packed-switch v1, :pswitch_data_66

    goto :goto_52

    .line 384
    :pswitch_3a  #0x3
    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy$SettingsObserver;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-static {v1}, Lcom/android/server/display/MiuiFoldPolicy;->-$$Nest$mupdateDeviceProVisioned(Lcom/android/server/display/MiuiFoldPolicy;)V

    .line 385
    goto :goto_52

    .line 381
    :pswitch_40  #0x2
    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy$SettingsObserver;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-static {v1}, Lcom/android/server/display/MiuiFoldPolicy;->-$$Nest$mupdateCtsMode(Lcom/android/server/display/MiuiFoldPolicy;)V

    .line 382
    goto :goto_52

    .line 378
    :pswitch_46  #0x1
    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy$SettingsObserver;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-static {v1}, Lcom/android/server/display/MiuiFoldPolicy;->-$$Nest$mupdateScreenStateAfterFold(Lcom/android/server/display/MiuiFoldPolicy;)V

    .line 379
    goto :goto_52

    .line 375
    :pswitch_4c  #0x0
    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy$SettingsObserver;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-static {v1}, Lcom/android/server/display/MiuiFoldPolicy;->-$$Nest$mupdateFoldGestureAngleThreshold(Lcom/android/server/display/MiuiFoldPolicy;)V

    .line 376
    nop

    .line 389
    :goto_52
    return-void

    nop

    :sswitch_data_54
    .sparse-switch
        -0x503af535 -> :sswitch_2b
        -0x2c813be4 -> :sswitch_20
        0x495cb554 -> :sswitch_16
        0x527f6fcb -> :sswitch_c
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_4c  #00000000
        :pswitch_46  #00000001
        :pswitch_40  #00000002
        :pswitch_3a  #00000003
    .end packed-switch
.end method
