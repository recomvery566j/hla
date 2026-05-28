# classes.dex

.class Lcom/android/server/display/AutomaticBrightnessControllerImpl$2;
.super Landroid/util/SparseArray;
.source "AutomaticBrightnessControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/AutomaticBrightnessControllerImpl;->fillInLuxFromDaemonSensor()Landroid/util/SparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessControllerImpl;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/display/AutomaticBrightnessControllerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 703
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 705
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerStub;->HANDLE_MAIN_LUX_EVENT:I

    const/high16 v1, 0x7fc00000  # Float.NaN

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl$2;->put(ILjava/lang/Object;)V

    .line 706
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerStub;->HANDLE_ASSIST_LUX_EVENT:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessControllerImpl$2;->put(ILjava/lang/Object;)V

    .line 707
    return-void
.end method
