.class public Lcom/vungle/warren/model/Report;
.super Ljava/lang/Object;
.source "Report.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/model/Report$UserAction;,
        Lcom/vungle/warren/model/Report$Status;
    }
.end annotation


# static fields
.field public static final FAILED:I = 0x3

.field public static final NEW:I = 0x0

.field public static final READY:I = 0x1

.field public static final SENDING:I = 0x2


# instance fields
.field adDuration:J

.field adStartTime:J

.field adToken:Ljava/lang/String;

.field adType:Ljava/lang/String;

.field advertisementID:Ljava/lang/String;

.field appId:Ljava/lang/String;

.field campaign:Ljava/lang/String;

.field final clickedThrough:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final errors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field incentivized:Z

.field ordinal:I

.field placementId:Ljava/lang/String;

.field status:I

.field templateId:Ljava/lang/String;

.field ttDownload:I

.field url:Ljava/lang/String;

.field final userActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/vungle/warren/model/Report$UserAction;",
            ">;"
        }
    .end annotation
.end field

.field userID:Ljava/lang/String;

.field videoLength:J

.field videoViewed:I

.field volatile wasCTAClicked:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/vungle/warren/model/Report;->status:I

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->errors:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;J)V
    .locals 6
    .param p1    # Lcom/vungle/warren/model/Advertisement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/model/Placement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/model/Report;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;JLjava/lang/String;)V
    .locals 1
    .param p1    # Lcom/vungle/warren/model/Advertisement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/model/Placement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/vungle/warren/model/Report;->status:I

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->errors:Ljava/util/ArrayList;

    .line 173
    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAdToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->adToken:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->advertisementID:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->appId:Ljava/lang/String;

    .line 177
    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result p2

    iput-boolean p2, p0, Lcom/vungle/warren/model/Report;->incentivized:Z

    .line 178
    iput-wide p3, p0, Lcom/vungle/warren/model/Report;->adStartTime:J

    .line 179
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/warren/model/Report;->url:Ljava/lang/String;

    const/4 p2, -0x1

    .line 180
    iput p2, p0, Lcom/vungle/warren/model/Report;->ttDownload:I

    .line 181
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getCampaign()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/warren/model/Report;->campaign:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    .line 190
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown ad type, cannot process!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-string p2, "vungle_mraid"

    .line 187
    iput-object p2, p0, Lcom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string p2, "vungle_local"

    .line 184
    iput-object p2, p0, Lcom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    .line 192
    :goto_0
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getTemplateId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/warren/model/Report;->templateId:Ljava/lang/String;

    if-nez p5, :cond_0

    const-string p2, ""

    .line 194
    iput-object p2, p0, Lcom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    goto :goto_1

    .line 196
    :cond_0
    iput-object p5, p0, Lcom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    .line 198
    :goto_1
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/AdConfig;->getOrdinal()I

    move-result p1

    iput p1, p0, Lcom/vungle/warren/model/Report;->ordinal:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 439
    instance-of v0, p1, Lcom/vungle/warren/model/Report;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 440
    check-cast p1, Lcom/vungle/warren/model/Report;

    .line 441
    iget-object v0, p1, Lcom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 442
    :cond_0
    iget-object v0, p1, Lcom/vungle/warren/model/Report;->adToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Report;->adToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 443
    :cond_1
    iget-object v0, p1, Lcom/vungle/warren/model/Report;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Report;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 444
    :cond_2
    iget-boolean v0, p1, Lcom/vungle/warren/model/Report;->incentivized:Z

    iget-boolean v2, p0, Lcom/vungle/warren/model/Report;->incentivized:Z

    if-eq v0, v2, :cond_3

    return v1

    .line 445
    :cond_3
    iget-wide v2, p1, Lcom/vungle/warren/model/Report;->adStartTime:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->adStartTime:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    return v1

    .line 446
    :cond_4
    iget-object v0, p1, Lcom/vungle/warren/model/Report;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Report;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 447
    :cond_5
    iget-wide v2, p1, Lcom/vungle/warren/model/Report;->videoLength:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->videoLength:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    return v1

    .line 448
    :cond_6
    iget-wide v2, p1, Lcom/vungle/warren/model/Report;->adDuration:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->adDuration:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7

    return v1

    .line 449
    :cond_7
    iget v0, p1, Lcom/vungle/warren/model/Report;->ttDownload:I

    iget v2, p0, Lcom/vungle/warren/model/Report;->ttDownload:I

    if-eq v0, v2, :cond_8

    return v1

    .line 450
    :cond_8
    iget-object v0, p1, Lcom/vungle/warren/model/Report;->campaign:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Report;->campaign:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    .line 451
    :cond_9
    iget-object v0, p1, Lcom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    .line 452
    :cond_a
    iget-object v0, p1, Lcom/vungle/warren/model/Report;->templateId:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Report;->templateId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    .line 453
    :cond_b
    iget-boolean v0, p1, Lcom/vungle/warren/model/Report;->wasCTAClicked:Z

    iget-boolean v2, p0, Lcom/vungle/warren/model/Report;->wasCTAClicked:Z

    if-eq v0, v2, :cond_c

    return v1

    .line 454
    :cond_c
    iget-object v0, p1, Lcom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    .line 456
    :cond_d
    iget-object v0, p1, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_e

    return v1

    :cond_e
    const/4 v0, 0x0

    .line 457
    :goto_0
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_10

    .line 458
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    :cond_10
    iget-object v0, p1, Lcom/vungle/warren/model/Report;->errors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/vungle/warren/model/Report;->errors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_11

    return v1

    :cond_11
    const/4 v0, 0x0

    .line 464
    :goto_1
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->errors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_13

    .line 465
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->errors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->errors:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 470
    :cond_13
    iget-object v0, p1, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_14

    return v1

    :cond_14
    const/4 v0, 0x0

    .line 471
    :goto_2
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 472
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Report$UserAction;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Report$UserAction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    const/4 p1, 0x1

    return p1

    :cond_17
    return v1
.end method

.method public getAdStartTime()J
    .locals 2

    .line 393
    iget-wide v0, p0, Lcom/vungle/warren/model/Report;->adStartTime:J

    return-wide v0
.end method

.method public getAdvertisementID()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/vungle/warren/model/Report;->advertisementID:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vungle/warren/model/Report;->adStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1
    .annotation build Lcom/vungle/warren/model/Report$Status;
    .end annotation

    .line 488
    iget v0, p0, Lcom/vungle/warren/model/Report;->status:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 484
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCTAClicked()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/vungle/warren/model/Report;->wasCTAClicked:Z

    return v0
.end method

.method public declared-synchronized recordAction(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/ArrayList;

    new-instance v1, Lcom/vungle/warren/model/Report$UserAction;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/vungle/warren/model/Report$UserAction;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object p2, p0, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "download"

    .line 210
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 211
    iput-boolean p1, p0, Lcom/vungle/warren/model/Report;->wasCTAClicked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 207
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordError(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/model/Report;->errors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 219
    monitor-exit p0

    throw p1
.end method

.method public recordProgress(I)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/vungle/warren/model/Report;->videoViewed:I

    return-void
.end method

.method public setAdDuration(I)V
    .locals 2

    int-to-long v0, p1

    .line 245
    iput-wide v0, p0, Lcom/vungle/warren/model/Report;->adDuration:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/vungle/warren/model/Report$Status;
        .end annotation
    .end param

    .line 492
    iput p1, p0, Lcom/vungle/warren/model/Report;->status:I

    return-void
.end method

.method public setVideoLength(J)V
    .locals 0

    .line 237
    iput-wide p1, p0, Lcom/vungle/warren/model/Report;->videoLength:J

    return-void
.end method

.method public toReportBody()Lcom/google/gson/JsonObject;
    .locals 7

    .line 319
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "placement_reference_id"

    .line 321
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ad_token"

    .line 322
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->adToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_id"

    .line 323
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "incentivized"

    .line 324
    iget-boolean v2, p0, Lcom/vungle/warren/model/Report;->incentivized:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "adStartTime"

    .line 325
    iget-wide v2, p0, Lcom/vungle/warren/model/Report;->adStartTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 330
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "url"

    .line 331
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "adDuration"

    .line 334
    iget-wide v2, p0, Lcom/vungle/warren/model/Report;->adDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "ttDownload"

    .line 335
    iget v2, p0, Lcom/vungle/warren/model/Report;->ttDownload:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "campaign"

    .line 336
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->campaign:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "adType"

    .line 337
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "templateId"

    .line 338
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->templateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 343
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v3, "startTime"

    .line 344
    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->adStartTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 345
    iget v3, p0, Lcom/vungle/warren/model/Report;->videoViewed:I

    if-lez v3, :cond_1

    const-string v3, "videoViewed"

    .line 346
    iget v4, p0, Lcom/vungle/warren/model/Report;->videoViewed:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 348
    :cond_1
    iget-wide v3, p0, Lcom/vungle/warren/model/Report;->videoLength:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    const-string v3, "videoLength"

    .line 349
    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->videoLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 351
    :cond_2
    new-instance v3, Lcom/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    .line 352
    iget-object v4, p0, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/warren/model/Report$UserAction;

    .line 353
    invoke-virtual {v5}, Lcom/vungle/warren/model/Report$UserAction;->toJson()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_3
    const-string v4, "userActions"

    .line 355
    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 356
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const-string v2, "plays"

    .line 357
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 360
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 361
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->errors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 362
    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "errors"

    .line 364
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 367
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 368
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 369
    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v2, "clickedThrough"

    .line 371
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 374
    iget-boolean v1, p0, Lcom/vungle/warren/model/Report;->incentivized:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "user"

    .line 375
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_6
    iget v1, p0, Lcom/vungle/warren/model/Report;->ordinal:I

    if-lez v1, :cond_7

    const-string v1, "ordinal_view"

    .line 380
    iget v2, p0, Lcom/vungle/warren/model/Report;->ordinal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_7
    return-object v0
.end method
