# classes.dex

.class Lcom/android/server/display/animation/DynamicAnimation$14;
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

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/animation/DynamicAnimation$ViewProperty;-><init>(Ljava/lang/String;Lcom/android/server/display/animation/DynamicAnimation-IA;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .registers 3
    .param p1, "view"  # Landroid/view/View;

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

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

    .line 251
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/server/display/animation/DynamicAnimation$14;->getValue(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"  # Landroid/view/View;
    .param p2, "value"  # F

    .line 254
    float-to-int v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setScrollY(I)V

    .line 255
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

    .line 251
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/animation/DynamicAnimation$14;->setValue(Landroid/view/View;F)V

    return-void
.end method
