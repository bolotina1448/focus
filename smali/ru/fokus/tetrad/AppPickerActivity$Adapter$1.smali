.class Lru/fokus/tetrad/AppPickerActivity$Adapter$1;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/AppPickerActivity$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/AppPickerActivity$Adapter;

.field final synthetic val$a:Lru/fokus/tetrad/AppPickerActivity$App;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/AppPickerActivity$Adapter;Lru/fokus/tetrad/AppPickerActivity$App;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 173
    iput-object p1, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter$1;->this$1:Lru/fokus/tetrad/AppPickerActivity$Adapter;

    iput-object p2, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter$1;->val$a:Lru/fokus/tetrad/AppPickerActivity$App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter$1;->this$1:Lru/fokus/tetrad/AppPickerActivity$Adapter;

    iget-object v0, v0, Lru/fokus/tetrad/AppPickerActivity$Adapter;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/AppPickerActivity;->access$300(Lru/fokus/tetrad/AppPickerActivity;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter$1;->val$a:Lru/fokus/tetrad/AppPickerActivity$App;

    iget-object v1, v1, Lru/fokus/tetrad/AppPickerActivity$App;->pkg:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter$1;->this$1:Lru/fokus/tetrad/AppPickerActivity$Adapter;

    iget-object v0, v0, Lru/fokus/tetrad/AppPickerActivity$Adapter;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/AppPickerActivity;->access$300(Lru/fokus/tetrad/AppPickerActivity;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter$1;->val$a:Lru/fokus/tetrad/AppPickerActivity$App;

    iget-object v1, v1, Lru/fokus/tetrad/AppPickerActivity$App;->pkg:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 175
    :goto_0
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter$1;->this$1:Lru/fokus/tetrad/AppPickerActivity$Adapter;

    iget-object v0, v0, Lru/fokus/tetrad/AppPickerActivity$Adapter;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/AppPickerActivity;->access$600(Lru/fokus/tetrad/AppPickerActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter$1;->this$1:Lru/fokus/tetrad/AppPickerActivity$Adapter;

    iget-object v1, v1, Lru/fokus/tetrad/AppPickerActivity$Adapter;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-static {v1}, Lru/fokus/tetrad/AppPickerActivity;->access$300(Lru/fokus/tetrad/AppPickerActivity;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/Store;->setBlocked(Ljava/util/Set;)V

    .line 176
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter$1;->this$1:Lru/fokus/tetrad/AppPickerActivity$Adapter;

    invoke-virtual {v0}, Lru/fokus/tetrad/AppPickerActivity$Adapter;->notifyDataSetChanged()V

    .line 177
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter$1;->this$1:Lru/fokus/tetrad/AppPickerActivity$Adapter;

    iget-object v0, v0, Lru/fokus/tetrad/AppPickerActivity$Adapter;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/AppPickerActivity;->access$700(Lru/fokus/tetrad/AppPickerActivity;)V

    .line 178
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter$1;->this$1:Lru/fokus/tetrad/AppPickerActivity$Adapter;

    iget-object v0, v0, Lru/fokus/tetrad/AppPickerActivity$Adapter;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/AppPickerActivity;->access$300(Lru/fokus/tetrad/AppPickerActivity;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/AppPickerActivity$Adapter$1;->val$a:Lru/fokus/tetrad/AppPickerActivity$App;

    iget-object v1, v1, Lru/fokus/tetrad/AppPickerActivity$App;->pkg:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
