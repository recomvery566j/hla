# classes.dex

.class final Lcom/android/server/display/statistics/DisplayUsageStates$DisplayUsageStatesHandler;
.super Landroid/os/Handler;
.source "DisplayUsageStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/DisplayUsageStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayUsageStatesHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/statistics/DisplayUsageStates;


# direct methods
.method public constructor <init>(Lcom/android/server/display/statistics/DisplayUsageStates;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;
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

    .line 189
    iput-object p1, p0, Lcom/android/server/display/statistics/DisplayUsageStates$DisplayUsageStatesHandler;->this$0:Lcom/android/server/display/statistics/DisplayUsageStates;

    .line 190
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 191
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 194
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_32

    goto :goto_30

    .line 205
    :pswitch_6  #0x3
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates$DisplayUsageStatesHandler;->this$0:Lcom/android/server/display/statistics/DisplayUsageStates;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/display/statistics/DisplayUsageStates;->-$$Nest$mhandleScreenStateEvent(Lcom/android/server/display/statistics/DisplayUsageStates;I)V

    .line 206
    goto :goto_30

    .line 202
    :pswitch_d  #0x2
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates$DisplayUsageStatesHandler;->this$0:Lcom/android/server/display/statistics/DisplayUsageStates;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/display/statistics/DisplayUsageStates;->-$$Nest$mhandleScreenStateEvent(Lcom/android/server/display/statistics/DisplayUsageStates;I)V

    .line 203
    goto :goto_30

    .line 199
    :pswitch_14  #0x1
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates$DisplayUsageStatesHandler;->this$0:Lcom/android/server/display/statistics/DisplayUsageStates;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/statistics/DisplayUsageStates;->-$$Nest$mhandleFoldEvent(Lcom/android/server/display/statistics/DisplayUsageStates;Z)V

    .line 200
    goto :goto_30

    .line 196
    :pswitch_22  #0x0
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates$DisplayUsageStatesHandler;->this$0:Lcom/android/server/display/statistics/DisplayUsageStates;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/statistics/DisplayUsageStates;->-$$Nest$mhandleRotationEvent(Lcom/android/server/display/statistics/DisplayUsageStates;I)V

    .line 197
    nop

    .line 210
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_14  #00000001
        :pswitch_d  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
