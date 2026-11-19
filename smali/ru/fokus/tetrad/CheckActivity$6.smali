.class Lru/fokus/tetrad/CheckActivity$6;
.super Ljava/lang/Object;
.source "CheckActivity.java"

# interfaces
.implements Lru/fokus/tetrad/Photos$Remove;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/CheckActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/CheckActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/CheckActivity;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lru/fokus/tetrad/CheckActivity$6;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$6;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v0}, Lru/fokus/tetrad/CheckActivity;->access$300(Lru/fokus/tetrad/CheckActivity;)Lru/fokus/tetrad/CheckState;

    move-result-object v0

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->condition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$6;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v0}, Lru/fokus/tetrad/CheckActivity;->access$200(Lru/fokus/tetrad/CheckActivity;)V

    .line 178
    return-void
.end method
