.class Lcom/vungle/warren/Vungle$4;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->configure(Lcom/vungle/warren/InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/Vungle;


# direct methods
.method constructor <init>(Lcom/vungle/warren/Vungle;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/vungle/warren/Vungle$4;->this$0:Lcom/vungle/warren/Vungle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .line 428
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 430
    iget-object p1, p0, Lcom/vungle/warren/Vungle$4;->this$0:Lcom/vungle/warren/Vungle;

    invoke-static {p1}, Lcom/vungle/warren/Vungle;->access$600(Lcom/vungle/warren/Vungle;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "com.vungle.sdk"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "reported"

    const/4 v0, 0x1

    .line 431
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 432
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 433
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1800()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Saving reported state to shared preferences"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
