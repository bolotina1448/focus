.class Lru/fokus/tetrad/SettingsActivity$14;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lru/fokus/tetrad/SettingsActivity$14;->this$0:Lru/fokus/tetrad/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$14;->this$0:Lru/fokus/tetrad/SettingsActivity;

    invoke-static {v0}, Lru/fokus/tetrad/SettingsActivity;->access$100(Lru/fokus/tetrad/SettingsActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    const-string v1, "openai"

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/Store;->setProvider(Ljava/lang/String;)V

    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$14;->this$0:Lru/fokus/tetrad/SettingsActivity;

    invoke-static {v0}, Lru/fokus/tetrad/SettingsActivity;->access$000(Lru/fokus/tetrad/SettingsActivity;)V

    return-void
.end method
