.class Lru/fokus/tetrad/GroupPicker$2;
.super Ljava/lang/Object;
.source "GroupPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/GroupPicker;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$done:Ljava/lang/Runnable;

.field final synthetic val$sel:Ljava/util/Set;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/Set;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lru/fokus/tetrad/GroupPicker$2;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lru/fokus/tetrad/GroupPicker$2;->val$sel:Ljava/util/Set;

    iput-object p3, p0, Lru/fokus/tetrad/GroupPicker$2;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lru/fokus/tetrad/GroupPicker$2;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lru/fokus/tetrad/GroupPicker$2;->val$sel:Ljava/util/Set;

    invoke-static {v0, v1}, Lru/fokus/tetrad/GroupPicker;->save(Landroid/content/Context;Ljava/util/Set;)V

    .line 136
    iget-object v0, p0, Lru/fokus/tetrad/GroupPicker$2;->val$done:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/GroupPicker$2;->val$done:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 137
    :cond_0
    return-void
.end method
