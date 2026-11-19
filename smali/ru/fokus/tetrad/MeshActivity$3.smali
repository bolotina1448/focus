.class Lru/fokus/tetrad/MeshActivity$3;
.super Landroid/webkit/WebViewClient;
.source "MeshActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MeshActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MeshActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MeshActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lru/fokus/tetrad/MeshActivity$3;->this$0:Lru/fokus/tetrad/MeshActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 108
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$3;->this$0:Lru/fokus/tetrad/MeshActivity;

    invoke-static {v0, p2}, Lru/fokus/tetrad/MeshActivity;->access$100(Lru/fokus/tetrad/MeshActivity;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$3;->this$0:Lru/fokus/tetrad/MeshActivity;

    invoke-static {v0, p2}, Lru/fokus/tetrad/MeshActivity;->access$100(Lru/fokus/tetrad/MeshActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 112
    iget-object v0, p0, Lru/fokus/tetrad/MeshActivity$3;->this$0:Lru/fokus/tetrad/MeshActivity;

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u0441\u0435\u0440\u0442\u0438\u0444\u0438\u043a\u0430\u0442 \u0441\u0430\u0439\u0442\u0430. \u041f\u0440\u043e\u0432\u0435\u0440\u044c \u0434\u0430\u0442\u0443 \u0438 \u0432\u0440\u0435\u043c\u044f \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0435."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .prologue
    .line 97
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 103
    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
