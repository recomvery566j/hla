# classes.dex

.class Lcom/android/server/display/MiuiFoldPolicy$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "MiuiFoldPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MiuiFoldPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MiuiFoldPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/display/MiuiFoldPolicy;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/MiuiFoldPolicy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lcom/android/server/display/MiuiFoldPolicy$1;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "cameraId"  # Ljava/lang/String;

    .line 346
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 348
    .local v0, "id":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_c

    .line 349
    return-void

    .line 351
    :cond_c
    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy$1;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-static {v1}, Lcom/android/server/display/MiuiFoldPolicy;->-$$Nest$fgetmOpeningCameraID(Lcom/android/server/display/MiuiFoldPolicy;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "cameraId"  # Ljava/lang/String;

    .line 356
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    .line 357
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 358
    .local v0, "id":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_c

    .line 359
    return-void

    .line 361
    :cond_c
    iget-object v1, p0, Lcom/android/server/display/MiuiFoldPolicy$1;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-static {v1}, Lcom/android/server/display/MiuiFoldPolicy;->-$$Nest$fgetmOpeningCameraID(Lcom/android/server/display/MiuiFoldPolicy;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 362
    return-void
.end method
