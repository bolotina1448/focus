.class Lru/fokus/tetrad/SettingsActivity$23;
.super Lru/fokus/tetrad/SettingsActivity$Watch;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/SettingsActivity;->aiCard()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/SettingsActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/SettingsActivity;)V
    .locals 1

    .prologue
    .line 271
    iput-object p1, p0, Lru/fokus/tetrad/SettingsActivity$23;->this$0:Lru/fokus/tetrad/SettingsActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lru/fokus/tetrad/SettingsActivity$Watch;-><init>(Lru/fokus/tetrad/SettingsActivity$1;)V

    return-void
.end method


# virtual methods
.method on(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$23;->this$0:Lru/fokus/tetrad/SettingsActivity;

    invoke-static {v0}, Lru/fokus/tetrad/SettingsActivity;->access$100(Lru/fokus/tetrad/SettingsActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/fokus/tetrad/Store;->setOaModel(Ljava/lang/String;)V

    return-void
.end method
