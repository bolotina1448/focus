.class Lru/fokus/tetrad/AppPickerActivity$5;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/AppPickerActivity;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/AppPickerActivity;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/AppPickerActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 120
    iput-object p1, p0, Lru/fokus/tetrad/AppPickerActivity$5;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    iput-object p2, p0, Lru/fokus/tetrad/AppPickerActivity$5;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity$5;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/AppPickerActivity;->access$400(Lru/fokus/tetrad/AppPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity$5;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/AppPickerActivity;->access$400(Lru/fokus/tetrad/AppPickerActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/AppPickerActivity$5;->val$list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity$5;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/AppPickerActivity;->access$100(Lru/fokus/tetrad/AppPickerActivity;)V

    .line 124
    return-void
.end method
