.class Lru/fokus/tetrad/SettingsActivity$7;
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
    .line 131
    iput-object p1, p0, Lru/fokus/tetrad/SettingsActivity$7;->this$0:Lru/fokus/tetrad/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$7;->this$0:Lru/fokus/tetrad/SettingsActivity;

    new-instance v1, Lru/fokus/tetrad/SettingsActivity$7$1;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/SettingsActivity$7$1;-><init>(Lru/fokus/tetrad/SettingsActivity$7;)V

    invoke-static {v0, v1}, Lru/fokus/tetrad/GroupPicker;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method
