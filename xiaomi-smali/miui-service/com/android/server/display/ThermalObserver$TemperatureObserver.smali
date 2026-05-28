# classes.dex

.class Lcom/android/server/display/ThermalObserver$TemperatureObserver;
.super Landroid/os/FileObserver;
.source "ThermalObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ThermalObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TemperatureObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ThermalObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ThermalObserver;Ljava/io/File;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/display/ThermalObserver;
    .param p2, "file"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/android/server/display/ThermalObserver$TemperatureObserver;->this$0:Lcom/android/server/display/ThermalObserver;

    .line 49
    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/io/File;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 6
    .param p1, "event"  # I
    .param p2, "path"  # Ljava/lang/String;

    .line 54
    and-int/lit16 v0, p1, 0xfff

    .line 55
    .local v0, "type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 56
    iget-object v1, p0, Lcom/android/server/display/ThermalObserver$TemperatureObserver;->this$0:Lcom/android/server/display/ThermalObserver;

    invoke-static {v1}, Lcom/android/server/display/ThermalObserver;->-$$Nest$fgetmHandler(Lcom/android/server/display/ThermalObserver;)Lcom/android/server/display/ThermalObserver$TemperatureControllerHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/display/ThermalObserver$TemperatureControllerHandler;->removeMessages(I)V

    .line 57
    iget-object v1, p0, Lcom/android/server/display/ThermalObserver$TemperatureObserver;->this$0:Lcom/android/server/display/ThermalObserver;

    invoke-static {v1}, Lcom/android/server/display/ThermalObserver;->-$$Nest$fgetmHandler(Lcom/android/server/display/ThermalObserver;)Lcom/android/server/display/ThermalObserver$TemperatureControllerHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/display/ThermalObserver$TemperatureControllerHandler;->sendEmptyMessage(I)Z

    .line 59
    :cond_18
    return-void
.end method
