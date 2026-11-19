.class Lru/fokus/tetrad/SettingsActivity$20;
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

.field final synthetic val$m:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/SettingsActivity;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 253
    iput-object p1, p0, Lru/fokus/tetrad/SettingsActivity$20;->this$0:Lru/fokus/tetrad/SettingsActivity;

    iput-object p2, p0, Lru/fokus/tetrad/SettingsActivity$20;->val$m:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$20;->this$0:Lru/fokus/tetrad/SettingsActivity;

    invoke-static {v0}, Lru/fokus/tetrad/SettingsActivity;->access$100(Lru/fokus/tetrad/SettingsActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/SettingsActivity$20;->val$m:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/Store;->setGigaModel(Ljava/lang/String;)V

    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$20;->this$0:Lru/fokus/tetrad/SettingsActivity;

    invoke-static {v0}, Lru/fokus/tetrad/SettingsActivity;->access$000(Lru/fokus/tetrad/SettingsActivity;)V

    return-void
.end method
