.class public Lcom/vungle/warren/model/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "appId"

.field public static final CONFIG_COOKIE:Ljava/lang/String; = "configSettings"

.field public static final CONSENT_COOKIE:Ljava/lang/String; = "consentIsImportantToVungle"

.field public static final INCENTIVIZED_TEXT_COOKIE:Ljava/lang/String; = "incentivizedTextSetByPub"

.field public static final USER_AGENT_ID_COOKIE:Ljava/lang/String; = "userAgent"


# instance fields
.field booleans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field identifier:Ljava/lang/String;

.field integers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field longs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field strings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Cookie;->strings:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Cookie;->booleans:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Cookie;->integers:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Cookie;->longs:Ljava/util/Map;

    .line 64
    iput-object p1, p0, Lcom/vungle/warren/model/Cookie;->identifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_5

    .line 108
    :cond_1
    check-cast p1, Lcom/vungle/warren/model/Cookie;

    .line 110
    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->strings:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->strings:Ljava/util/Map;

    iget-object v3, p1, Lcom/vungle/warren/model/Cookie;->strings:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/vungle/warren/model/Cookie;->strings:Ljava/util/Map;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 112
    :cond_3
    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->booleans:Ljava/util/Map;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->booleans:Ljava/util/Map;

    iget-object v3, p1, Lcom/vungle/warren/model/Cookie;->booleans:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/vungle/warren/model/Cookie;->booleans:Ljava/util/Map;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 114
    :cond_5
    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->integers:Ljava/util/Map;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->integers:Ljava/util/Map;

    iget-object v3, p1, Lcom/vungle/warren/model/Cookie;->integers:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/vungle/warren/model/Cookie;->integers:Ljava/util/Map;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 116
    :cond_7
    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->longs:Ljava/util/Map;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->longs:Ljava/util/Map;

    iget-object v3, p1, Lcom/vungle/warren/model/Cookie;->longs:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Lcom/vungle/warren/model/Cookie;->longs:Ljava/util/Map;

    if-eqz v2, :cond_9

    :goto_3
    return v1

    .line 117
    :cond_9
    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->identifier:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->identifier:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/warren/model/Cookie;->identifier:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_a
    iget-object p1, p1, Lcom/vungle/warren/model/Cookie;->identifier:Ljava/lang/String;

    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_c
    :goto_5
    return v1
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->booleans:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->booleans:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->integers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->longs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->longs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->strings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->strings:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->strings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 123
    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->booleans:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->booleans:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 124
    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->integers:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->integers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 125
    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->longs:Ljava/util/Map;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->longs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 126
    iget-object v2, p0, Lcom/vungle/warren/model/Cookie;->identifier:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/vungle/warren/model/Cookie;->identifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 69
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->strings:Ljava/util/Map;

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->booleans:Ljava/util/Map;

    check-cast p2, Ljava/lang/Boolean;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->integers:Ljava/util/Map;

    check-cast p2, Ljava/lang/Integer;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    :cond_2
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/vungle/warren/model/Cookie;->longs:Ljava/util/Map;

    check-cast p2, Ljava/lang/Long;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 78
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Value type is not supported!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
