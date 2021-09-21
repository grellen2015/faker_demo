.class public interface abstract Lcom/vungle/warren/model/PlacementDBAdapter$PlacementColumns;
.super Ljava/lang/Object;
.source "PlacementDBAdapter.java"

# interfaces
.implements Lcom/vungle/warren/persistence/IdColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/PlacementDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlacementColumns"
.end annotation


# static fields
.field public static final COLUMN_AUTOCACHED:Ljava/lang/String; = "auto_cached"

.field public static final COLUMN_INCENTIVIZED:Ljava/lang/String; = "incentivized"

.field public static final COLUMN_IS_VALID:Ljava/lang/String; = "is_valid"

.field public static final COLUMN_WAKEUP_TIME:Ljava/lang/String; = "wakeup_time"

.field public static final TABLE_NAME:Ljava/lang/String; = "placement"
