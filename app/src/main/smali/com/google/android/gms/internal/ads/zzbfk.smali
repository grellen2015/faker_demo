.class final Lcom/google/android/gms/internal/ads/zzbfk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzrv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzare;
.end annotation


# instance fields
.field private uri:Landroid/net/Uri;

.field private final zzegi:J

.field private zzegk:J

.field private final zzeho:Lcom/google/android/gms/internal/ads/zzrv;

.field private final zzehp:Lcom/google/android/gms/internal/ads/zzrv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzrv;ILcom/google/android/gms/internal/ads/zzrv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzeho:Lcom/google/android/gms/internal/ads/zzrv;

    int-to-long p1, p2

    .line 3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzegi:J

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzehp:Lcom/google/android/gms/internal/ads/zzrv;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzeho:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrv;->close()V

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzehp:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrv;->close()V

    return-void
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfk;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzegk:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzegi:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    int-to-long v0, p3

    .line 37
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzegi:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzegk:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzeho:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzrv;->read([BII)I

    move-result v0

    .line 39
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzegk:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzegk:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzegk:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzegi:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    sub-int/2addr p3, v0

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzehp:Lcom/google/android/gms/internal/ads/zzrv;

    add-int/2addr p2, v0

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzrv;->read([BII)I

    move-result p1

    add-int/2addr v0, p1

    .line 44
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzegk:J

    int-to-long v1, p1

    add-long/2addr p2, v1

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzbfk;->zzegk:J

    :cond_1
    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzry;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzry;->uri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzbfk;->uri:Landroid/net/Uri;

    .line 8
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzry;->zzahv:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzegi:J

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    if-ltz v2, :cond_0

    move-object v2, v3

    goto :goto_2

    .line 10
    :cond_0
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzry;->zzahv:J

    .line 11
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzry;->zzcd:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    .line 12
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzry;->zzcd:J

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzegi:J

    sub-long/2addr v10, v8

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :goto_0
    move-wide v10, v6

    goto :goto_1

    .line 13
    :cond_1
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzegi:J

    sub-long/2addr v6, v8

    goto :goto_0

    .line 14
    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzry;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzry;->uri:Landroid/net/Uri;

    const/4 v12, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzry;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 17
    :goto_2
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzry;->zzcd:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_2

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzry;->zzahv:J

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzry;->zzcd:J

    add-long/2addr v6, v8

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzegi:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    goto :goto_4

    .line 19
    :cond_2
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzegi:J

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzry;->zzahv:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 20
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzry;->zzcd:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_3

    .line 21
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzry;->zzcd:J

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzry;->zzahv:J

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzry;->zzcd:J

    add-long/2addr v8, v10

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzegi:J

    sub-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-wide v14, v6

    goto :goto_3

    :cond_3
    move-wide v14, v4

    .line 23
    :goto_3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzry;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzry;->uri:Landroid/net/Uri;

    const/16 v16, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzry;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    :goto_4
    const-wide/16 v6, 0x0

    if-eqz v2, :cond_4

    .line 28
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzeho:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-interface {v8, v2}, Lcom/google/android/gms/internal/ads/zzrv;->zza(Lcom/google/android/gms/internal/ads/zzry;)J

    move-result-wide v8

    goto :goto_5

    :cond_4
    move-wide v8, v6

    :goto_5
    if-eqz v3, :cond_5

    .line 30
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzehp:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzrv;->zza(Lcom/google/android/gms/internal/ads/zzry;)J

    move-result-wide v6

    .line 31
    :cond_5
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzry;->zzahv:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzegk:J

    cmp-long v1, v8, v4

    if-eqz v1, :cond_7

    cmp-long v1, v6, v4

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    add-long/2addr v8, v6

    return-wide v8

    :cond_7
    :goto_6
    return-wide v4
.end method
