.class Lru/fokus/tetrad/CheckActivity$12;
.super Ljava/lang/Object;
.source "CheckActivity.java"

# interfaces
.implements Lru/fokus/tetrad/Photos$Done;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/CheckActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/CheckActivity;

.field final synthetic val$target:Ljava/util/List;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/CheckActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 262
    iput-object p1, p0, Lru/fokus/tetrad/CheckActivity$12;->this$0:Lru/fokus/tetrad/CheckActivity;

    iput-object p2, p0, Lru/fokus/tetrad/CheckActivity$12;->val$target:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$12;->val$target:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$12;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v0}, Lru/fokus/tetrad/CheckActivity;->access$300(Lru/fokus/tetrad/CheckActivity;)Lru/fokus/tetrad/CheckState;

    move-result-object v1

    if-nez p2, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, v1, Lru/fokus/tetrad/CheckState;->status:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$12;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v0}, Lru/fokus/tetrad/CheckActivity;->access$300(Lru/fokus/tetrad/CheckActivity;)Lru/fokus/tetrad/CheckState;

    move-result-object v1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lru/fokus/tetrad/CheckState;->statusError:Z

    .line 266
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$12;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v0}, Lru/fokus/tetrad/CheckActivity;->access$200(Lru/fokus/tetrad/CheckActivity;)V

    .line 267
    return-void

    :cond_0
    move-object v0, p2

    .line 264
    goto :goto_0

    .line 265
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
