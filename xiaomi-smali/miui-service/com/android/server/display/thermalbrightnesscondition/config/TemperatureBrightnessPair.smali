# classes.dex

.class public Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
.super Ljava/lang/Object;
.source "TemperatureBrightnessPair.java"


# instance fields
.field private maxExclusive:Ljava/lang/Float;

.field private minInclusive:Ljava/lang/Float;

.field private nit:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    .registers 8
    .param p0, "_parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;

    invoke-direct {v0}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;-><init>()V

    .line 64
    .local v0, "_instance":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    const/4 v1, 0x0

    .line 65
    .local v1, "_raw":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 67
    .local v2, "outerDepth":I
    :goto_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_64

    if-eq v4, v6, :cond_64

    .line 69
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1d

    goto :goto_a

    .line 70
    :cond_1d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "_tagName":Ljava/lang/String;
    const-string/jumbo v5, "min-inclusive"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 72
    invoke-static {p0}, Lcom/android/server/display/thermalbrightnesscondition/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 74
    .local v5, "_value":F
    invoke-virtual {v0, v5}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->setMinInclusive(F)V

    .line 75
    .end local v5  # "_value":F
    goto :goto_63

    :cond_36
    const-string/jumbo v5, "max-exclusive"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 76
    invoke-static {p0}, Lcom/android/server/display/thermalbrightnesscondition/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 78
    .restart local v5  # "_value":F
    invoke-virtual {v0, v5}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->setMaxExclusive(F)V

    .line 79
    .end local v5  # "_value":F
    goto :goto_63

    :cond_4b
    const-string/jumbo v5, "nit"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 80
    invoke-static {p0}, Lcom/android/server/display/thermalbrightnesscondition/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 82
    .restart local v5  # "_value":F
    invoke-virtual {v0, v5}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->setNit(F)V

    .line 83
    .end local v5  # "_value":F
    goto :goto_63

    .line 84
    :cond_60
    invoke-static {p0}, Lcom/android/server/display/thermalbrightnesscondition/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 86
    .end local v3  # "_tagName":Ljava/lang/String;
    :goto_63
    goto :goto_a

    .line 87
    :cond_64
    if-ne v4, v6, :cond_67

    .line 90
    return-object v0

    .line 88
    :cond_67
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "TemperatureBrightnessPair is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getMaxExclusive()F
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->maxExclusive:Ljava/lang/Float;

    if-nez v0, :cond_6

    .line 28
    const/4 v0, 0x0

    return v0

    .line 30
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->maxExclusive:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMinInclusive()F
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->minInclusive:Ljava/lang/Float;

    if-nez v0, :cond_6

    .line 10
    const/4 v0, 0x0

    return v0

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->minInclusive:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getNit()F
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->nit:Ljava/lang/Float;

    if-nez v0, :cond_6

    .line 46
    const/4 v0, 0x0

    return v0

    .line 48
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->nit:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method hasMaxExclusive()Z
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->maxExclusive:Ljava/lang/Float;

    if-nez v0, :cond_6

    .line 35
    const/4 v0, 0x0

    return v0

    .line 37
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasMinInclusive()Z
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->minInclusive:Ljava/lang/Float;

    if-nez v0, :cond_6

    .line 17
    const/4 v0, 0x0

    return v0

    .line 19
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasNit()Z
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->nit:Ljava/lang/Float;

    if-nez v0, :cond_6

    .line 53
    const/4 v0, 0x0

    return v0

    .line 55
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setMaxExclusive(F)V
    .registers 3
    .param p1, "maxExclusive"  # F

    .line 41
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->maxExclusive:Ljava/lang/Float;

    .line 42
    return-void
.end method

.method public setMinInclusive(F)V
    .registers 3
    .param p1, "minInclusive"  # F

    .line 23
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->minInclusive:Ljava/lang/Float;

    .line 24
    return-void
.end method

.method public setNit(F)V
    .registers 3
    .param p1, "nit"  # F

    .line 59
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->nit:Ljava/lang/Float;

    .line 60
    return-void
.end method
