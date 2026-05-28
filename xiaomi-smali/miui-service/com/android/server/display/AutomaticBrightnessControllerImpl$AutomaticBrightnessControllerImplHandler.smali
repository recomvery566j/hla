# classes.dex

.class final Lcom/android/server/display/AutomaticBrightnessControllerImpl$AutomaticBrightnessControllerImplHandler;
.super Landroid/os/Handler;
.source "AutomaticBrightnessControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutomaticBrightnessControllerImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessControllerImpl;Landroid/os/Looper;)V
    .registers 4
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

    .line 801
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl$AutomaticBrightnessControllerImplHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    .line 802
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 803
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"  # Landroid/os/Message;

    .line 807
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "AutomaticBrightnessControllerImpl"

    packed-switch v0, :pswitch_data_84

    goto/16 :goto_83

    .line 825
    :pswitch_9  #0x3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 826
    .local v0, "isStepMode":Z
    if-eqz v0, :cond_24

    .line 827
    const-string v2, "Enter step mode!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl$AutomaticBrightnessControllerImplHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl$AutomaticBrightnessControllerImplHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->-$$Nest$fgetmStepModeDarkenDebounceConfig(Lcom/android/server/display/AutomaticBrightnessControllerImpl;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->-$$Nest$mupdateStepModeDarkenDebounceTime(Lcom/android/server/display/AutomaticBrightnessControllerImpl;J)V

    goto :goto_83

    .line 830
    :cond_24
    const-string v2, "Quit step mode!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl$AutomaticBrightnessControllerImplHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->-$$Nest$mupdateStepModeDarkenDebounceTime(Lcom/android/server/display/AutomaticBrightnessControllerImpl;J)V

    .line 833
    goto :goto_83

    .line 813
    .end local v0  # "isStepMode":Z
    :pswitch_31  #0x2
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl$AutomaticBrightnessControllerImplHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->-$$Nest$fgetmApplyingFastRates(Lcom/android/server/display/AutomaticBrightnessControllerImpl;)[Z

    move-result-object v0

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    const/4 v3, 0x0

    if-eqz v0, :cond_52

    .line 814
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl$AutomaticBrightnessControllerImplHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->-$$Nest$fgetmApplyingFastRates(Lcom/android/server/display/AutomaticBrightnessControllerImpl;)[Z

    move-result-object v0

    aput-boolean v2, v0, v2

    .line 815
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl$AutomaticBrightnessControllerImplHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->-$$Nest$fgetmNeedUseFastRateBrightness(Lcom/android/server/display/AutomaticBrightnessControllerImpl;)[F

    move-result-object v0

    aput v3, v0, v2

    .line 816
    const-string v0, "Reset apply fast rate. type:SDR"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_52
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl$AutomaticBrightnessControllerImplHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->-$$Nest$fgetmApplyingFastRates(Lcom/android/server/display/AutomaticBrightnessControllerImpl;)[Z

    move-result-object v0

    const/4 v4, 0x1

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_83

    .line 819
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl$AutomaticBrightnessControllerImplHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->-$$Nest$fgetmApplyingFastRates(Lcom/android/server/display/AutomaticBrightnessControllerImpl;)[Z

    move-result-object v0

    aput-boolean v2, v0, v4

    .line 820
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl$AutomaticBrightnessControllerImplHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->-$$Nest$fgetmNeedUseFastRateBrightness(Lcom/android/server/display/AutomaticBrightnessControllerImpl;)[F

    move-result-object v0

    aput v3, v0, v4

    .line 821
    const-string v0, "Reset apply fast rate. type:HDR"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 809
    :pswitch_73  #0x1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessControllerImpl$AutomaticBrightnessControllerImplHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessControllerImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/display/AutomaticBrightnessControllerImpl;->-$$Nest$fputmNotInPocketTime(Lcom/android/server/display/AutomaticBrightnessControllerImpl;J)V

    .line 810
    const-string/jumbo v0, "take phone out of pocket at the current time!"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    nop

    .line 837
    :cond_83
    :goto_83
    return-void

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_73  #00000001
        :pswitch_31  #00000002
        :pswitch_9  #00000003
    .end packed-switch
.end method
