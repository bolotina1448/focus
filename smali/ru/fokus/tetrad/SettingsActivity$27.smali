.class Lru/fokus/tetrad/SettingsActivity$27;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/SettingsActivity;->permRow(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/SettingsActivity;

.field final synthetic val$go:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/SettingsActivity;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 342
    iput-object p1, p0, Lru/fokus/tetrad/SettingsActivity$27;->this$0:Lru/fokus/tetrad/SettingsActivity;

    iput-object p2, p0, Lru/fokus/tetrad/SettingsActivity$27;->val$go:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$27;->val$go:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
