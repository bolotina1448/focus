.class Lru/fokus/tetrad/SettingsActivity$25;
.super Lru/fokus/tetrad/SettingsActivity$Watch;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/SettingsActivity;->secretField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/fokus/tetrad/SettingsActivity$Save;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/SettingsActivity;

.field final synthetic val$save:Lru/fokus/tetrad/SettingsActivity$Save;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/SettingsActivity;Lru/fokus/tetrad/SettingsActivity$Save;)V
    .locals 1

    .prologue
    .line 314
    iput-object p1, p0, Lru/fokus/tetrad/SettingsActivity$25;->this$0:Lru/fokus/tetrad/SettingsActivity;

    iput-object p2, p0, Lru/fokus/tetrad/SettingsActivity$25;->val$save:Lru/fokus/tetrad/SettingsActivity$Save;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lru/fokus/tetrad/SettingsActivity$Watch;-><init>(Lru/fokus/tetrad/SettingsActivity$1;)V

    return-void
.end method


# virtual methods
.method on(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$25;->val$save:Lru/fokus/tetrad/SettingsActivity$Save;

    invoke-interface {v0, p1}, Lru/fokus/tetrad/SettingsActivity$Save;->on(Ljava/lang/String;)V

    return-void
.end method
