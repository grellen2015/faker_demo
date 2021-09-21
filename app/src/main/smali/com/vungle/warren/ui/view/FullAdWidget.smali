.class public Lcom/vungle/warren/ui/view/FullAdWidget;
.super Landroid/widget/RelativeLayout;
.source "FullAdWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/ui/view/FullAdWidget$ViewEvent;,
        Lcom/vungle/warren/ui/view/FullAdWidget$AudioContextWrapper;,
        Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;
    }
.end annotation


# static fields
.field protected static final NINE_BY_SIXTEEN_ASPECT_RATIO:D = 0.5625

.field private static final TAG:Ljava/lang/String; = "FullAdWidget"


# instance fields
.field private final closeButton:Landroid/widget/ImageView;

.field private final ctaOverlay:Landroid/widget/ImageView;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private final matchParentLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private final muteButton:Landroid/widget/ImageView;

.field private onClickProxy:Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final privacyOverlay:Landroid/widget/ImageView;

.field private final progressBar:Landroid/widget/ProgressBar;

.field private proxyClickListener:Landroid/view/View$OnClickListener;

.field private singleTapOnVideoListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private startPosition:I

.field public final videoView:Landroid/widget/VideoView;

.field private final videoViewContainer:Landroid/widget/RelativeLayout;

.field private viewToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final webView:Landroid/webkit/WebView;

.field private final window:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->viewToId:Ljava/util/Map;

    .line 180
    new-instance v0, Lcom/vungle/warren/ui/view/FullAdWidget$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/view/FullAdWidget$1;-><init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->singleTapOnVideoListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 369
    new-instance v0, Lcom/vungle/warren/ui/view/FullAdWidget$6;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/view/FullAdWidget$6;-><init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->proxyClickListener:Landroid/view/View$OnClickListener;

    .line 76
    iput-object p2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->window:Landroid/view/Window;

    .line 78
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/FullAdWidget;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 79
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->matchParentLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 83
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->matchParentLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v0, Landroid/widget/VideoView;

    new-instance v2, Lcom/vungle/warren/ui/view/FullAdWidget$AudioContextWrapper;

    invoke-direct {v2, p1}, Lcom/vungle/warren/ui/view/FullAdWidget$AudioContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    .line 86
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 89
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 90
    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Landroid/widget/RelativeLayout;

    .line 93
    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Landroid/widget/RelativeLayout;

    const-string v3, "videoViewContainer"

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 94
    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->matchParentLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->matchParentLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v2}, Lcom/vungle/warren/ui/view/FullAdWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->singleTapOnVideoListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->gestureDetector:Landroid/view/GestureDetector;

    .line 100
    invoke-static {p1}, Lcom/vungle/warren/utility/ViewUtility;->getWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    .line 101
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->matchParentLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    const-string v2, "webView"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->matchParentLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v2}, Lcom/vungle/warren/ui/view/FullAdWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, p1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->progressBar:Landroid/widget/ProgressBar;

    .line 110
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v2, 0x1

    const/high16 v3, 0x40800000    # 4.0f

    .line 107
    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 111
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 114
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 115
    iget-object v1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->progressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 117
    iget-object v1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 118
    iget-object v1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/vungle/warren/ui/view/FullAdWidget;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v3, 0x41c00000    # 24.0f

    .line 121
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 125
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 131
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v4, 0x41400000    # 12.0f

    .line 128
    invoke-static {v2, v4, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 132
    invoke-virtual {v3, p2, p2, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 133
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->muteButton:Landroid/widget/ImageView;

    .line 134
    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->muteButton:Landroid/widget/ImageView;

    sget-object v4, Lcom/vungle/warren/utility/ViewUtility$Asset;->unMute:Lcom/vungle/warren/utility/ViewUtility$Asset;

    invoke-static {v4, p1}, Lcom/vungle/warren/utility/ViewUtility;->getBitmap(Lcom/vungle/warren/utility/ViewUtility$Asset;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->muteButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->muteButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->muteButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/vungle/warren/ui/view/FullAdWidget;->addView(Landroid/view/View;)V

    .line 139
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 142
    invoke-virtual {v2, p2, p2, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 143
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->closeButton:Landroid/widget/ImageView;

    .line 144
    iget-object v4, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->closeButton:Landroid/widget/ImageView;

    const-string v5, "closeButton"

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 145
    iget-object v4, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->closeButton:Landroid/widget/ImageView;

    sget-object v5, Lcom/vungle/warren/utility/ViewUtility$Asset;->close:Lcom/vungle/warren/utility/ViewUtility$Asset;

    invoke-static {v5, p1}, Lcom/vungle/warren/utility/ViewUtility;->getBitmap(Lcom/vungle/warren/utility/ViewUtility$Asset;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v4, 0xb

    .line 146
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    iget-object v5, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/vungle/warren/ui/view/FullAdWidget;->addView(Landroid/view/View;)V

    .line 151
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 154
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 155
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 156
    invoke-virtual {v2, p2, p2, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 157
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->ctaOverlay:Landroid/widget/ImageView;

    .line 158
    iget-object v4, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->ctaOverlay:Landroid/widget/ImageView;

    const-string v5, "ctaOverlay"

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 159
    iget-object v4, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->ctaOverlay:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->ctaOverlay:Landroid/widget/ImageView;

    sget-object v4, Lcom/vungle/warren/utility/ViewUtility$Asset;->cta:Lcom/vungle/warren/utility/ViewUtility$Asset;

    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/FullAdWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vungle/warren/utility/ViewUtility;->getBitmap(Lcom/vungle/warren/utility/ViewUtility$Asset;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->ctaOverlay:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->ctaOverlay:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/vungle/warren/ui/view/FullAdWidget;->addView(Landroid/view/View;)V

    .line 164
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 167
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0x9

    .line 168
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 169
    invoke-virtual {v2, p2, p2, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 170
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->privacyOverlay:Landroid/widget/ImageView;

    .line 171
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->privacyOverlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->privacyOverlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->privacyOverlay:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/FullAdWidget;->addView(Landroid/view/View;)V

    .line 175
    invoke-direct {p0}, Lcom/vungle/warren/ui/view/FullAdWidget;->bindListeners()V

    .line 176
    invoke-direct {p0}, Lcom/vungle/warren/ui/view/FullAdWidget;->prepare()V

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->proxyClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/view/GestureDetector;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->gestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$300(Lcom/vungle/warren/ui/view/FullAdWidget;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->startPosition:I

    return p0
.end method

.method static synthetic access$400(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/widget/ImageView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->muteButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/vungle/warren/ui/view/FullAdWidget;)Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->onClickProxy:Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/vungle/warren/ui/view/FullAdWidget;Landroid/view/View;)I
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/view/FullAdWidget;->matchView(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private bindListener(Landroid/view/View;I)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->viewToId:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object p2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->proxyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private bindListeners()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->closeButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/vungle/warren/ui/view/FullAdWidget;->bindListener(Landroid/view/View;I)V

    .line 192
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->ctaOverlay:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/vungle/warren/ui/view/FullAdWidget;->bindListener(Landroid/view/View;I)V

    .line 193
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->muteButton:Landroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/vungle/warren/ui/view/FullAdWidget;->bindListener(Landroid/view/View;I)V

    .line 194
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->privacyOverlay:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/vungle/warren/ui/view/FullAdWidget;->bindListener(Landroid/view/View;I)V

    .line 196
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->viewToId:Ljava/util/Map;

    iget-object v1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/vungle/warren/ui/view/FullAdWidget$2;

    invoke-direct {v1, p0}, Lcom/vungle/warren/ui/view/FullAdWidget$2;-><init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/vungle/warren/ui/view/FullAdWidget$3;

    invoke-direct {v1, p0}, Lcom/vungle/warren/ui/view/FullAdWidget$3;-><init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 223
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/vungle/warren/ui/view/FullAdWidget$4;

    invoke-direct {v1, p0}, Lcom/vungle/warren/ui/view/FullAdWidget$4;-><init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 233
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/vungle/warren/ui/view/FullAdWidget$5;

    invoke-direct {v1, p0}, Lcom/vungle/warren/ui/view/FullAdWidget$5;-><init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method private matchView(Landroid/view/View;)I
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->viewToId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 384
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method private prepare()V
    .locals 2

    .line 251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getCurrentVideoPosition()I
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoDuration()I
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public isVideoPlaying()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public linkWebView(Landroid/webkit/WebViewClient;Lcom/vungle/warren/ui/JavascriptBridge;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/WebSettingsUtils;->applyDefault(Landroid/webkit/WebView;)V

    .line 263
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 264
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    const-string v0, "Android"

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public pausePlayback()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method public pauseWeb()V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method public playVideo(Landroid/net/Uri;I)V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 399
    sget-object p1, Lcom/vungle/warren/utility/ViewUtility$Asset;->privacy:Lcom/vungle/warren/utility/ViewUtility$Asset;

    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/FullAdWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vungle/warren/utility/ViewUtility;->getBitmap(Lcom/vungle/warren/utility/ViewUtility$Asset;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 401
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->privacyOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 402
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->privacyOverlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 405
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->progressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 407
    invoke-virtual {p0, p2}, Lcom/vungle/warren/ui/view/FullAdWidget;->startPlayback(I)Z

    return-void
.end method

.method public release()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->removeView(Landroid/view/View;)V

    .line 428
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 430
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 431
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 432
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 433
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 434
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    return-void
.end method

.method public resumeWeb()V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    return-void
.end method

.method public setCtaEnabled(Z)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->ctaOverlay:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setImmersiveMode()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public setMuted(Z)V
    .locals 3

    .line 388
    sget-object v0, Lcom/vungle/warren/utility/ViewUtility$Asset;->mute:Lcom/vungle/warren/utility/ViewUtility$Asset;

    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/FullAdWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/warren/utility/ViewUtility;->getBitmap(Lcom/vungle/warren/utility/ViewUtility$Asset;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 389
    sget-object v1, Lcom/vungle/warren/utility/ViewUtility$Asset;->unMute:Lcom/vungle/warren/utility/ViewUtility$Asset;

    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/FullAdWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/warren/utility/ViewUtility;->getBitmap(Lcom/vungle/warren/utility/ViewUtility$Asset;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 391
    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->muteButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->onClickProxy:Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setProgress(IF)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->progressBar:Landroid/widget/ProgressBar;

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 455
    iget-object p2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public showCloseButton(Z)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->closeButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showWebsite(Ljava/lang/String;)V
    .locals 3

    .line 268
    sget-object v0, Lcom/vungle/warren/ui/view/FullAdWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadJs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 270
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 271
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 272
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 274
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->muteButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->ctaOverlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->privacyOverlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startPlayback(I)Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 300
    iput p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->startPosition:I

    .line 301
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_0

    .line 302
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    iget v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->startPosition:I

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 304
    :cond_0
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 307
    :cond_1
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    return p1
.end method

.method public stopPlayback()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    return-void
.end method

.method public updateWindow(Z)V
    .locals 6

    if-eqz p1, :cond_2

    .line 326
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 327
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 328
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 329
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 331
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/FullAdWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/high16 v4, 0x3fe2000000000000L    # 0.5625

    if-ne v1, v3, :cond_0

    .line 337
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->window:Landroid/view/Window;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 338
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->window:Landroid/view/Window;

    int-to-double v1, p1

    mul-double v1, v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, p1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 340
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    double-to-int v1, v1

    invoke-direct {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne v1, p1, :cond_1

    .line 342
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->window:Landroid/view/Window;

    int-to-double v1, v0

    mul-double v1, v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p1, v3, v0}, Landroid/view/Window;->setLayout(II)V

    .line 343
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->window:Landroid/view/Window;

    const/16 v3, 0x55

    invoke-virtual {p1, v3}, Landroid/view/Window;->setGravity(I)V

    .line 344
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    const/4 v1, -0x1

    .line 345
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_1
    move-object p1, v2

    .line 348
    :goto_0
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->window:Landroid/view/Window;

    const/16 v0, 0x120

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 355
    :cond_2
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->window:Landroid/view/Window;

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 357
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->window:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    return-void
.end method
