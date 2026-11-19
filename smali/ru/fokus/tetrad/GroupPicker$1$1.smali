.class Lru/fokus/tetrad/GroupPicker$1$1;
.super Ljava/lang/Object;
.source "GroupPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/GroupPicker$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/GroupPicker$1;

.field final synthetic val$e:Ljava/util/Map$Entry;

.field final synthetic val$single:Z

.field final synthetic val$t:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/GroupPicker$1;Ljava/lang/String;ZLjava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 117
    iput-object p1, p0, Lru/fokus/tetrad/GroupPicker$1$1;->this$0:Lru/fokus/tetrad/GroupPicker$1;

    iput-object p2, p0, Lru/fokus/tetrad/GroupPicker$1$1;->val$t:Ljava/lang/String;

    iput-boolean p3, p0, Lru/fokus/tetrad/GroupPicker$1$1;->val$single:Z

    iput-object p4, p0, Lru/fokus/tetrad/GroupPicker$1$1;->val$e:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lru/fokus/tetrad/GroupPicker$1$1;->this$0:Lru/fokus/tetrad/GroupPicker$1;

    iget-object v0, v0, Lru/fokus/tetrad/GroupPicker$1;->val$sel:Ljava/util/Set;

    iget-object v1, p0, Lru/fokus/tetrad/GroupPicker$1$1;->val$t:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/GroupPicker$1$1;->this$0:Lru/fokus/tetrad/GroupPicker$1;

    iget-object v0, v0, Lru/fokus/tetrad/GroupPicker$1;->val$sel:Ljava/util/Set;

    iget-object v1, p0, Lru/fokus/tetrad/GroupPicker$1$1;->val$t:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 120
    :goto_0
    iget-object v0, p0, Lru/fokus/tetrad/GroupPicker$1$1;->this$0:Lru/fokus/tetrad/GroupPicker$1;

    iget-object v0, v0, Lru/fokus/tetrad/GroupPicker$1;->val$draw:[Ljava/lang/Runnable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 121
    return-void

    .line 119
    :cond_0
    iget-boolean v0, p0, Lru/fokus/tetrad/GroupPicker$1$1;->val$single:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lru/fokus/tetrad/GroupPicker$1$1;->this$0:Lru/fokus/tetrad/GroupPicker$1;

    iget-object v1, v0, Lru/fokus/tetrad/GroupPicker$1;->val$sel:Ljava/util/Set;

    iget-object v0, p0, Lru/fokus/tetrad/GroupPicker$1$1;->val$e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lru/fokus/tetrad/GroupPicker$1$1;->this$0:Lru/fokus/tetrad/GroupPicker$1;

    iget-object v0, v0, Lru/fokus/tetrad/GroupPicker$1;->val$sel:Ljava/util/Set;

    iget-object v1, p0, Lru/fokus/tetrad/GroupPicker$1$1;->val$t:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
