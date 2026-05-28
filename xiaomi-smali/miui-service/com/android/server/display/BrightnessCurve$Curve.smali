# classes.dex

.class abstract Lcom/android/server/display/BrightnessCurve$Curve;
.super Ljava/lang/Object;
.source "BrightnessCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Curve"
.end annotation


# instance fields
.field public mPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessCurve;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/BrightnessCurve$Curve;->mPointList:Ljava/util/List;

    .line 294
    return-void
.end method


# virtual methods
.method public abstract connectLeft(Lcom/android/server/display/BrightnessCurve$Curve;)V
.end method

.method public abstract connectRight(Lcom/android/server/display/BrightnessCurve$Curve;)V
.end method

.method public abstract create(FF)V
.end method
