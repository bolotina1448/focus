.class Lru/fokus/tetrad/SettingsActivity$7$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/SettingsActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/SettingsActivity$7;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/SettingsActivity$7;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lru/fokus/tetrad/SettingsActivity$7$1;->this$1:Lru/fokus/tetrad/SettingsActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$7$1;->this$1:Lru/fokus/tetrad/SettingsActivity$7;

    iget-object v0, v0, Lru/fokus/tetrad/SettingsActivity$7;->this$0:Lru/fokus/tetrad/SettingsActivity;

    invoke-static {v0}, Lru/fokus/tetrad/SettingsActivity;->access$000(Lru/fokus/tetrad/SettingsActivity;)V

    return-void
.end method
