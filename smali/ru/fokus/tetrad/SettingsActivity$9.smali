.class Lru/fokus/tetrad/SettingsActivity$9;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 170
    iput-object p1, p0, Lru/fokus/tetrad/SettingsActivity$9;->this$0:Lru/fokus/tetrad/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$9;->this$0:Lru/fokus/tetrad/SettingsActivity;

    new-instance v1, Lru/fokus/tetrad/SettingsActivity$9$1;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/SettingsActivity$9$1;-><init>(Lru/fokus/tetrad/SettingsActivity$9;)V

    invoke-static {v0, v1}, Lru/fokus/tetrad/Pin;->set(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
