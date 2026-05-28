# classes.dex

.class public Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;
.super Ljava/lang/Object;
.source "LuxTemperaturePair.java"


# instance fields
.field private maxExclusive:Ljava/lang/Float;

.field private minInclusive:Ljava/lang/Float;

.field private temperatureBrightnessPair:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;
    .registers 8
    .param p0, "_parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;

    invoke-direct {v0}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;-><init>()V

    .line 53
    .local v0, "_instance":Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;
    const/4 v1, 0x0

    .line 54
    .local v1, "_raw":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 56
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

    .line 58
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1d

    goto :goto_a

    .line 59
    :cond_1d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "_tagName":Ljava/lang/String;
    const-string/jumbo v5, "min-inclusive"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 61
    invoke-static {p0}, Lcom/android/server/display/thermalbrightnesscondition/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 63
    .local v5, "_value":F
    invoke-virtual {v0, v5}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->setMinInclusive(F)V

    .line 64
    .end local v5  # "_value":F
    goto :goto_63

    :cond_36
    const-string/jumbo v5, "max-exclusive"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 65
    invoke-static {p0}, Lcom/android/server/display/thermalbrightnesscondition/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 67
    .restart local v5  # "_value":F
    invoke-virtual {v0, v5}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->setMaxExclusive(F)V

    .line 68
    .end local v5  # "_value":F
    goto :goto_63

    :cond_4b
    const-string/jumbo v5, "temperature-brightness-pair"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 69
    invoke-static {p0}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;

    move-result-object v5

    .line 70
    .local v5, "_value":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    invoke-virtual {v0}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->getTemperatureBrightnessPair()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v5  # "_value":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    goto :goto_63

    .line 72
    :cond_60
    invoke-static {p0}, Lcom/android/server/display/thermalbrightnesscondition/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 74
    .end local v3  # "_tagName":Ljava/lang/String;
    :goto_63
    goto :goto_a

    .line 75
    :cond_64
    if-ne v4, v6, :cond_67

    .line 78
    return-object v0

    .line 76
    :cond_67
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "LuxTemperaturePair is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getMaxExclusive()F
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->maxExclusive:Ljava/lang/Float;

    if-nez v0, :cond_6

    .line 28
    const/4 v0, 0x0

    return v0

    .line 30
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->maxExclusive:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMinInclusive()F
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->minInclusive:Ljava/lang/Float;

    if-nez v0, :cond_6

    .line 10
    const/4 v0, 0x0

    return v0

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->minInclusive:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getTemperatureBrightnessPair()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->temperatureBrightnessPair:Ljava/util/List;

    if-nez v0, :cond_b

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->temperatureBrightnessPair:Ljava/util/List;

    .line 48
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->temperatureBrightnessPair:Ljava/util/List;

    return-object v0
.end method

.method hasMaxExclusive()Z
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->maxExclusive:Ljava/lang/Float;

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
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->minInclusive:Ljava/lang/Float;

    if-nez v0, :cond_6

    .line 17
    const/4 v0, 0x0

    return v0

    .line 19
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

    iput-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->maxExclusive:Ljava/lang/Float;

    .line 42
    return-void
.end method

.method public setMinInclusive(F)V
    .registers 3
    .param p1, "minInclusive"  # F

    .line 23
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->minInclusive:Ljava/lang/Float;

    .line 24
    return-void
.end method
