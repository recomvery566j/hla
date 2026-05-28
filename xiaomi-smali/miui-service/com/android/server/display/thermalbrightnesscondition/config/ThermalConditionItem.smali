# classes.dex

.class public Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;
.super Ljava/lang/Object;
.source "ThermalConditionItem.java"


# instance fields
.field private description:Ljava/lang/String;

.field private identifier:Ljava/lang/Integer;

.field private luxTemperaturePair:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;",
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

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;
    .registers 8
    .param p0, "_parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    invoke-direct {v0}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;-><init>()V

    .line 50
    .local v0, "_instance":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;
    const/4 v1, 0x0

    .line 51
    .local v1, "_raw":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 53
    .local v2, "outerDepth":I
    :goto_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_60

    if-eq v4, v6, :cond_60

    .line 55
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1d

    goto :goto_a

    .line 56
    :cond_1d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "_tagName":Ljava/lang/String;
    const-string/jumbo v5, "identifier"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 58
    invoke-static {p0}, Lcom/android/server/display/thermalbrightnesscondition/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 60
    .local v5, "_value":I
    invoke-virtual {v0, v5}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->setIdentifier(I)V

    .line 61
    .end local v5  # "_value":I
    goto :goto_5f

    :cond_36
    const-string v5, "description"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 62
    invoke-static {p0}, Lcom/android/server/display/thermalbrightnesscondition/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 63
    move-object v5, v1

    .line 64
    .local v5, "_value":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->setDescription(Ljava/lang/String;)V

    .line 65
    .end local v5  # "_value":Ljava/lang/String;
    goto :goto_5f

    :cond_47
    const-string/jumbo v5, "lux-temperature-pair"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 66
    invoke-static {p0}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;

    move-result-object v5

    .line 67
    .local v5, "_value":Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;
    invoke-virtual {v0}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getLuxTemperaturePair()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v5  # "_value":Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;
    goto :goto_5f

    .line 69
    :cond_5c
    invoke-static {p0}, Lcom/android/server/display/thermalbrightnesscondition/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 71
    .end local v3  # "_tagName":Ljava/lang/String;
    :goto_5f
    goto :goto_a

    .line 72
    :cond_60
    if-ne v4, v6, :cond_63

    .line 75
    return-object v0

    .line 73
    :cond_63
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "ThermalConditionItem is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()I
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->identifier:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 10
    const/4 v0, 0x0

    return v0

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->identifier:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLuxTemperaturePair()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->luxTemperaturePair:Ljava/util/List;

    if-nez v0, :cond_b

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->luxTemperaturePair:Ljava/util/List;

    .line 45
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->luxTemperaturePair:Ljava/util/List;

    return-object v0
.end method

.method hasDescription()Z
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->description:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 32
    const/4 v0, 0x0

    return v0

    .line 34
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasIdentifier()Z
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->identifier:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 17
    const/4 v0, 0x0

    return v0

    .line 19
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"  # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->description:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setIdentifier(I)V
    .registers 3
    .param p1, "identifier"  # I

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->identifier:Ljava/lang/Integer;

    .line 24
    return-void
.end method
