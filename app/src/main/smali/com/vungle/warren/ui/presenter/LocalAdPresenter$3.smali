.class Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->showGDPR(Lcom/vungle/warren/model/Cookie;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

.field final synthetic val$finalGdpr:Lcom/vungle/warren/model/Cookie;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;Lcom/vungle/warren/model/Cookie;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    iput-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;->val$finalGdpr:Lcom/vungle/warren/model/Cookie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string p1, "opted_out_by_timeout"

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "opted_in"

    goto :goto_0

    :pswitch_1
    const-string p1, "opted_out"

    .line 390
    :goto_0
    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;->val$finalGdpr:Lcom/vungle/warren/model/Cookie;

    const-string v0, "consent_status"

    invoke-virtual {p2, v0, p1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;->val$finalGdpr:Lcom/vungle/warren/model/Cookie;

    const-string p2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;->val$finalGdpr:Lcom/vungle/warren/model/Cookie;

    const-string p2, "consent_source"

    const-string v0, "vungle_modal"

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 393
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->access$800(Lcom/vungle/warren/ui/presenter/LocalAdPresenter;)Lcom/vungle/warren/persistence/Repository;

    move-result-object p1

    iget-object p2, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;->val$finalGdpr:Lcom/vungle/warren/model/Cookie;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 395
    iget-object p1, p0, Lcom/vungle/warren/ui/presenter/LocalAdPresenter$3;->this$0:Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-virtual {p1}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;->start()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
