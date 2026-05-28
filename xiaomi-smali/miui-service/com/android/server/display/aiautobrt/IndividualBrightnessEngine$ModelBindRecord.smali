# classes.dex

.class final Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;
.super Ljava/lang/Object;
.source "IndividualBrightnessEngine.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ModelBindRecord"
.end annotation


# instance fields
.field private volatile mIsBound:Z

.field final synthetic this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;


# direct methods
.method public static synthetic $r8$lambda$2SjTiiWlZKgMzaT1CLd-WdImNKY(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;->lambda$onServiceConnected$0(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AOo5Ewdw5dw8S5HB-UVs14A4OxE(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->-$$Nest$mdetach(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsBound(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;->mIsBound:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsBound(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;->mIsBound:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;->this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;-><init>(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)V

    return-void
.end method

.method private synthetic lambda$onServiceConnected$0(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"  # Landroid/os/IBinder;

    .line 229
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;->this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-static {v0, p1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->-$$Nest$mattach(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;->this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->-$$Nest$fgetmHandler(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;->this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    new-instance v2, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "service"  # Landroid/os/IBinder;

    .line 228
    if-eqz p2, :cond_10

    .line 229
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;->this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->-$$Nest$fgetmHandler(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$ModelBindRecord;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    :cond_10
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"  # Landroid/content/ComponentName;

    .line 235
    const-string v0, "CbmController-IndividualEngine"

    const-string v1, "Service disconnected."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method
