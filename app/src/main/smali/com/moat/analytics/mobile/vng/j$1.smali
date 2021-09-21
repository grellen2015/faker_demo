.class Lcom/moat/analytics/mobile/vng/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/j;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/j;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/j;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eqz p1, :cond_3

    const-string v2, "null"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "false"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "true"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/j;->d(Lcom/moat/analytics/mobile/vng/j;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-static {p1, v0}, Lcom/moat/analytics/mobile/vng/j;->b(Lcom/moat/analytics/mobile/vng/j;Z)Z

    const-string p1, "JavaScriptBridge"

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    const-string v2, "Javascript has found ad"

    invoke-static {v1, p1, v0, v2}, Lcom/moat/analytics/mobile/vng/o;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/vng/j;->a()V

    :cond_1
    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/moat/analytics/mobile/vng/j;->a(Lcom/moat/analytics/mobile/vng/j;I)I

    goto/16 :goto_2

    :cond_2
    const-string v0, "JavaScriptBridge"

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received unusual value from Javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, v2, p1}, Lcom/moat/analytics/mobile/vng/o;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_0
    const-string v2, "JavaScriptBridge"

    iget-object v3, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received value is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4

    const-string v5, "null"

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(String)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/moat/analytics/mobile/vng/o;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-static {v2}, Lcom/moat/analytics/mobile/vng/j;->a(Lcom/moat/analytics/mobile/vng/j;)I

    move-result v2

    const/16 v3, 0x96

    if-lt v2, v3, :cond_5

    const-string v2, "JavaScriptBridge"

    iget-object v3, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    const-string v4, "Giving up on finding ad"

    invoke-static {v1, v2, v3, v4}, Lcom/moat/analytics/mobile/vng/o;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-virtual {v2}, Lcom/moat/analytics/mobile/vng/j;->b()V

    :cond_5
    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-static {v2}, Lcom/moat/analytics/mobile/vng/j;->b(Lcom/moat/analytics/mobile/vng/j;)I

    if-eqz p1, :cond_6

    const-string v2, "false"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/j;->c(Lcom/moat/analytics/mobile/vng/j;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-static {p1, v0}, Lcom/moat/analytics/mobile/vng/j;->a(Lcom/moat/analytics/mobile/vng/j;Z)Z

    const-string p1, "JavaScriptBridge"

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/j$1;->a:Lcom/moat/analytics/mobile/vng/j;

    const-string v2, "Bridge connection established"

    invoke-static {v1, p1, v0, v2}, Lcom/moat/analytics/mobile/vng/o;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/vng/j$1;->a(Ljava/lang/String;)V

    return-void
.end method
