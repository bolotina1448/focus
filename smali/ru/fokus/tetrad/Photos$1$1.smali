.class Lru/fokus/tetrad/Photos$1$1;
.super Ljava/lang/Object;
.source "Photos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/Photos$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/Photos$1;

.field final synthetic val$err:Ljava/lang/String;

.field final synthetic val$ready:Ljava/util/List;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/Photos$1;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lru/fokus/tetrad/Photos$1$1;->this$0:Lru/fokus/tetrad/Photos$1;

    iput-object p2, p0, Lru/fokus/tetrad/Photos$1$1;->val$ready:Ljava/util/List;

    iput-object p3, p0, Lru/fokus/tetrad/Photos$1$1;->val$err:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lru/fokus/tetrad/Photos$1$1;->this$0:Lru/fokus/tetrad/Photos$1;

    iget-object v0, v0, Lru/fokus/tetrad/Photos$1;->val$done:Lru/fokus/tetrad/Photos$Done;

    iget-object v1, p0, Lru/fokus/tetrad/Photos$1$1;->val$ready:Ljava/util/List;

    iget-object v2, p0, Lru/fokus/tetrad/Photos$1$1;->val$err:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lru/fokus/tetrad/Photos$Done;->on(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
