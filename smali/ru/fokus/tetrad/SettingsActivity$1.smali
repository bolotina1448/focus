.class Lru/fokus/tetrad/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/SettingsActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/SettingsActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/SettingsActivity;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lru/fokus/tetrad/SettingsActivity$1;->this$0:Lru/fokus/tetrad/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$1;->this$0:Lru/fokus/tetrad/SettingsActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$1;->this$0:Lru/fokus/tetrad/SettingsActivity;

    const-string v1, "\u041e\u0442\u043a\u0440\u043e\u0439 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0421\u043f\u0435\u0446. \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e\u0441\u0442\u0438 \u0432\u0440\u0443\u0447\u043d\u0443\u044e"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
