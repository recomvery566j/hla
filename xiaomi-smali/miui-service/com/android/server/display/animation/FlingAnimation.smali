# classes.dex

.class public final Lcom/android/server/display/animation/FlingAnimation;
.super Lcom/android/server/display/animation/DynamicAnimation;
.source "FlingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/animation/FlingAnimation$DragForce;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/display/animation/DynamicAnimation<",
        "Lcom/android/server/display/animation/FlingAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFlingForce:Lcom/android/server/display/animation/FlingAnimation$DragForce;


# direct methods
.method public constructor <init>(Lcom/android/server/display/animation/FloatValueHolder;)V
    .registers 4
    .param p1, "floatValueHolder"  # Lcom/android/server/display/animation/FloatValueHolder;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/display/animation/DynamicAnimation;-><init>(Lcom/android/server/display/animation/FloatValueHolder;)V

    .line 43
    new-instance v0, Lcom/android/server/display/animation/FlingAnimation$DragForce;

    invoke-direct {v0}, Lcom/android/server/display/animation/FlingAnimation$DragForce;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/animation/FlingAnimation;->mFlingForce:Lcom/android/server/display/animation/FlingAnimation$DragForce;

    .line 59
    iget-object v0, p0, Lcom/android/server/display/animation/FlingAnimation;->mFlingForce:Lcom/android/server/display/animation/FlingAnimation$DragForce;

    invoke-virtual {p0}, Lcom/android/server/display/animation/FlingAnimation;->getValueThreshold()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/display/animation/FloatPropertyCompat;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/android/server/display/animation/FloatPropertyCompat<",
            "TK;>;)V"
        }
    .end annotation

    .line 70
    .local p1, "object":Ljava/lang/Object;, "TK;"
    .local p2, "property":Lcom/android/server/display/animation/FloatPropertyCompat;, "Lcom/android/server/display/animation/FloatPropertyCompat<TK;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Lcom/android/server/display/animation/FloatPropertyCompat;)V

    .line 43
    new-instance v0, Lcom/android/server/display/animation/FlingAnimation$DragForce;

    invoke-direct {v0}, Lcom/android/server/display/animation/FlingAnimation$DragForce;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/animation/FlingAnimation;->mFlingForce:Lcom/android/server/display/animation/FlingAnimation$DragForce;

    .line 71
    iget-object v0, p0, Lcom/android/server/display/animation/FlingAnimation;->mFlingForce:Lcom/android/server/display/animation/FlingAnimation$DragForce;

    invoke-virtual {p0}, Lcom/android/server/display/animation/FlingAnimation;->getValueThreshold()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    .line 72
    return-void
.end method


# virtual methods
.method getAcceleration(FF)F
    .registers 4
    .param p1, "value"  # F
    .param p2, "velocity"  # F

    .line 179
    iget-object v0, p0, Lcom/android/server/display/animation/FlingAnimation;->mFlingForce:Lcom/android/server/display/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/animation/FlingAnimation$DragForce;->getAcceleration(FF)F

    move-result v0

    return v0
.end method

.method public getFriction()F
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/server/display/animation/FlingAnimation;->mFlingForce:Lcom/android/server/display/animation/FlingAnimation$DragForce;

    invoke-virtual {v0}, Lcom/android/server/display/animation/FlingAnimation$DragForce;->getFrictionScalar()F

    move-result v0

    return v0
.end method

.method isAtEquilibrium(FF)Z
    .registers 4
    .param p1, "value"  # F
    .param p2, "velocity"  # F

    .line 184
    iget v0, p0, Lcom/android/server/display/animation/FlingAnimation;->mMaxValue:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_17

    iget v0, p0, Lcom/android/server/display/animation/FlingAnimation;->mMinValue:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/display/animation/FlingAnimation;->mFlingForce:Lcom/android/server/display/animation/FlingAnimation$DragForce;

    .line 186
    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/animation/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 184
    :goto_18
    return v0
.end method

.method public setFriction(F)Lcom/android/server/display/animation/FlingAnimation;
    .registers 4
    .param p1, "friction"  # F

    .line 84
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_b

    .line 87
    iget-object v0, p0, Lcom/android/server/display/animation/FlingAnimation;->mFlingForce:Lcom/android/server/display/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Lcom/android/server/display/animation/FlingAnimation$DragForce;->setFrictionScalar(F)V

    .line 88
    return-object p0

    .line 85
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Friction must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setMaxValue(F)Lcom/android/server/display/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/display/animation/FlingAnimation;->setMaxValue(F)Lcom/android/server/display/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setMaxValue(F)Lcom/android/server/display/animation/FlingAnimation;
    .registers 2
    .param p1, "maxValue"  # F

    .line 123
    invoke-super {p0, p1}, Lcom/android/server/display/animation/DynamicAnimation;->setMaxValue(F)Lcom/android/server/display/animation/DynamicAnimation;

    .line 124
    return-object p0
.end method

.method public bridge synthetic setMinValue(F)Lcom/android/server/display/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/display/animation/FlingAnimation;->setMinValue(F)Lcom/android/server/display/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setMinValue(F)Lcom/android/server/display/animation/FlingAnimation;
    .registers 2
    .param p1, "minValue"  # F

    .line 110
    invoke-super {p0, p1}, Lcom/android/server/display/animation/DynamicAnimation;->setMinValue(F)Lcom/android/server/display/animation/DynamicAnimation;

    .line 111
    return-object p0
.end method

.method public bridge synthetic setStartVelocity(F)Lcom/android/server/display/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/display/animation/FlingAnimation;->setStartVelocity(F)Lcom/android/server/display/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setStartVelocity(F)Lcom/android/server/display/animation/FlingAnimation;
    .registers 2
    .param p1, "startVelocity"  # F

    .line 150
    invoke-super {p0, p1}, Lcom/android/server/display/animation/DynamicAnimation;->setStartVelocity(F)Lcom/android/server/display/animation/DynamicAnimation;

    .line 151
    return-object p0
.end method

.method setValueThreshold(F)V
    .registers 3
    .param p1, "threshold"  # F

    .line 191
    iget-object v0, p0, Lcom/android/server/display/animation/FlingAnimation;->mFlingForce:Lcom/android/server/display/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Lcom/android/server/display/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    .line 192
    return-void
.end method

.method updateValueAndVelocity(J)Z
    .registers 7
    .param p1, "deltaT"  # J

    .line 157
    iget-object v0, p0, Lcom/android/server/display/animation/FlingAnimation;->mFlingForce:Lcom/android/server/display/animation/FlingAnimation$DragForce;

    iget v1, p0, Lcom/android/server/display/animation/FlingAnimation;->mValue:F

    iget v2, p0, Lcom/android/server/display/animation/FlingAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/display/animation/FlingAnimation$DragForce;->updateValueAndVelocity(FFJ)Lcom/android/server/display/animation/DynamicAnimation$MassState;

    move-result-object v0

    .line 158
    .local v0, "state":Lcom/android/server/display/animation/DynamicAnimation$MassState;
    iget v1, v0, Lcom/android/server/display/animation/DynamicAnimation$MassState;->mValue:F

    iput v1, p0, Lcom/android/server/display/animation/FlingAnimation;->mValue:F

    .line 159
    iget v1, v0, Lcom/android/server/display/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v1, p0, Lcom/android/server/display/animation/FlingAnimation;->mVelocity:F

    .line 162
    iget v1, p0, Lcom/android/server/display/animation/FlingAnimation;->mValue:F

    iget v2, p0, Lcom/android/server/display/animation/FlingAnimation;->mMinValue:F

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-gez v1, :cond_20

    .line 163
    iget v1, p0, Lcom/android/server/display/animation/FlingAnimation;->mMinValue:F

    iput v1, p0, Lcom/android/server/display/animation/FlingAnimation;->mValue:F

    .line 164
    return v2

    .line 166
    :cond_20
    iget v1, p0, Lcom/android/server/display/animation/FlingAnimation;->mValue:F

    iget v3, p0, Lcom/android/server/display/animation/FlingAnimation;->mMaxValue:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2d

    .line 167
    iget v1, p0, Lcom/android/server/display/animation/FlingAnimation;->mMaxValue:F

    iput v1, p0, Lcom/android/server/display/animation/FlingAnimation;->mValue:F

    .line 168
    return v2

    .line 171
    :cond_2d
    iget v1, p0, Lcom/android/server/display/animation/FlingAnimation;->mValue:F

    iget v3, p0, Lcom/android/server/display/animation/FlingAnimation;->mVelocity:F

    invoke-virtual {p0, v1, v3}, Lcom/android/server/display/animation/FlingAnimation;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 172
    return v2

    .line 174
    :cond_38
    const/4 v1, 0x0

    return v1
.end method
