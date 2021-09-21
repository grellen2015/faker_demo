.class final Lcom/vungle/warren/Vungle$10;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lcom/vungle/warren/persistence/Repository$LoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->updateConsentStatus(Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/persistence/Repository$LoadCallback<",
        "Lcom/vungle/warren/model/Cookie;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$consentMessageVersion:Ljava/lang/String;

.field final synthetic val$status:Lcom/vungle/warren/Vungle$Consent;


# direct methods
.method constructor <init>(Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V
    .locals 0

    .line 1243
    iput-object p1, p0, Lcom/vungle/warren/Vungle$10;->val$status:Lcom/vungle/warren/Vungle$Consent;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$10;->val$consentMessageVersion:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Lcom/vungle/warren/model/Cookie;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1248
    new-instance p1, Lcom/vungle/warren/model/Cookie;

    const-string v0, "consentIsImportantToVungle"

    invoke-direct {p1, v0}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    :cond_0
    const-string v0, "consent_status"

    .line 1250
    iget-object v1, p0, Lcom/vungle/warren/Vungle$10;->val$status:Lcom/vungle/warren/Vungle$Consent;

    sget-object v2, Lcom/vungle/warren/Vungle$Consent;->OPTED_IN:Lcom/vungle/warren/Vungle$Consent;

    if-ne v1, v2, :cond_1

    const-string v1, "opted_in"

    goto :goto_0

    :cond_1
    const-string v1, "opted_out"

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "timestamp"

    .line 1251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "consent_source"

    const-string v1, "publisher"

    .line 1252
    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "consent_message_version"

    .line 1253
    iget-object v1, p0, Lcom/vungle/warren/Vungle$10;->val$consentMessageVersion:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/vungle/warren/Vungle$10;->val$consentMessageVersion:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1254
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->repository:Lcom/vungle/warren/persistence/Repository;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    return-void
.end method

.method public bridge synthetic onLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 1243
    check-cast p1, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/Vungle$10;->onLoaded(Lcom/vungle/warren/model/Cookie;)V

    return-void
.end method
