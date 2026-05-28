# classes.dex

.class Lcom/android/server/display/BlackLinearGradientView$BlackLinearGradient;
.super Landroid/graphics/LinearGradient;
.source "BlackLinearGradientView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BlackLinearGradientView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlackLinearGradient"
.end annotation


# instance fields
.field endX:F

.field endY:F

.field startX:F

.field startY:F


# direct methods
.method public constructor <init>(Lcom/android/server/display/BlackLinearGradientView;FFFFIILandroid/graphics/Shader$TileMode;)V
    .registers 9
    .param p2, "x0"  # F
    .param p3, "y0"  # F
    .param p4, "x1"  # F
    .param p5, "y1"  # F
    .param p6, "color0"  # I
    .param p7, "color1"  # I
    .param p8, "tile"  # Landroid/graphics/Shader$TileMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 105
    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/BlackLinearGradientView;FFFF[I[FLandroid/graphics/Shader$TileMode;)V
    .registers 9
    .param p2, "x0"  # F
    .param p3, "y0"  # F
    .param p4, "x1"  # F
    .param p5, "y1"  # F
    .param p6, "colors"  # [I
    .param p7, "positions"  # [F
    .param p8, "tile"  # Landroid/graphics/Shader$TileMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 100
    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 101
    return-void
.end method


# virtual methods
.method public getEndX()F
    .registers 2

    .line 125
    iget v0, p0, Lcom/android/server/display/BlackLinearGradientView$BlackLinearGradient;->endX:F

    return v0
.end method

.method public getEndY()F
    .registers 2

    .line 133
    iget v0, p0, Lcom/android/server/display/BlackLinearGradientView$BlackLinearGradient;->endY:F

    return v0
.end method

.method public getStartX()F
    .registers 2

    .line 109
    iget v0, p0, Lcom/android/server/display/BlackLinearGradientView$BlackLinearGradient;->startX:F

    return v0
.end method

.method public getStartY()F
    .registers 2

    .line 117
    iget v0, p0, Lcom/android/server/display/BlackLinearGradientView$BlackLinearGradient;->startY:F

    return v0
.end method

.method public setEndX(F)V
    .registers 2
    .param p1, "endX"  # F

    .line 129
    iput p1, p0, Lcom/android/server/display/BlackLinearGradientView$BlackLinearGradient;->endX:F

    .line 130
    return-void
.end method

.method public setEndY(F)V
    .registers 2
    .param p1, "endY"  # F

    .line 137
    iput p1, p0, Lcom/android/server/display/BlackLinearGradientView$BlackLinearGradient;->endY:F

    .line 138
    return-void
.end method

.method public setStartX(F)V
    .registers 2
    .param p1, "startX"  # F

    .line 113
    iput p1, p0, Lcom/android/server/display/BlackLinearGradientView$BlackLinearGradient;->startX:F

    .line 114
    return-void
.end method

.method public setStartY(F)V
    .registers 2
    .param p1, "startY"  # F

    .line 121
    iput p1, p0, Lcom/android/server/display/BlackLinearGradientView$BlackLinearGradient;->startY:F

    .line 122
    return-void
.end method
