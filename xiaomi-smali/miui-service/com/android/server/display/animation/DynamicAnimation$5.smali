# classes.dex

.class Lcom/android/server/display/animation/DynamicAnimation$5;
.super Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/animation/DynamicAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;-><init>(Ljava/lang/String;Lcom/android/server/display/animation/DynamicAnimation-IA;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .registers 3
    .param p1, "view"  # Landroid/view/View;

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 115
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/server/display/animation/DynamicAnimation$5;->getValue(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"  # Landroid/view/View;
    .param p2, "value"  # F

    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 119
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 115
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/animation/DynamicAnimation$5;->setValue(Landroid/view/View;F)V

    return-void
.end method
