# classes.dex

.class Lcom/android/server/display/aiautobrt/AppClassifier$1;
.super Landroid/util/Singleton;
.source "AppClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/aiautobrt/AppClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/android/server/display/aiautobrt/AppClassifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/android/server/display/aiautobrt/AppClassifier;
    .registers 3

    .line 72
    new-instance v0, Lcom/android/server/display/aiautobrt/AppClassifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/aiautobrt/AppClassifier;-><init>(Lcom/android/server/display/aiautobrt/AppClassifier-IA;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 69
    invoke-virtual {p0}, Lcom/android/server/display/aiautobrt/AppClassifier$1;->create()Lcom/android/server/display/aiautobrt/AppClassifier;

    move-result-object v0

    return-object v0
.end method
