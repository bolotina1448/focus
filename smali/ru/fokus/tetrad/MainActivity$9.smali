.class Lru/fokus/tetrad/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MainActivity;->openSettings()V
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
    .line 179
    iput-object p1, p0, Lru/fokus/tetrad/MainActivity$9;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$9;->this$0:Lru/fokus/tetrad/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lru/fokus/tetrad/MainActivity$9;->this$0:Lru/fokus/tetrad/MainActivity;

    const-class v3, Lru/fokus/tetrad/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 181
    return-void
.end method
