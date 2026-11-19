.class Lru/fokus/tetrad/MainActivity$20;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MainActivity;->tryStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MainActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MainActivity;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lru/fokus/tetrad/MainActivity$20;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$20;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MainActivity;->access$400(Lru/fokus/tetrad/MainActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "skipExternalOnce"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 421
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$20;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MainActivity;->access$600(Lru/fokus/tetrad/MainActivity;)V

    .line 422
    return-void
.end method
