.class Lru/fokus/tetrad/MarksActivity$5;
.super Ljava/lang/Object;
.source "MarksActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MarksActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MarksActivity;

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MarksActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 190
    iput-object p1, p0, Lru/fokus/tetrad/MarksActivity$5;->this$0:Lru/fokus/tetrad/MarksActivity;

    iput p2, p0, Lru/fokus/tetrad/MarksActivity$5;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$5;->this$0:Lru/fokus/tetrad/MarksActivity;

    iget v1, p0, Lru/fokus/tetrad/MarksActivity$5;->val$idx:I

    invoke-static {v0, v1}, Lru/fokus/tetrad/MarksActivity;->access$1202(Lru/fokus/tetrad/MarksActivity;I)I

    .line 192
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$5;->this$0:Lru/fokus/tetrad/MarksActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MarksActivity;->access$1000(Lru/fokus/tetrad/MarksActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "marksView"

    iget v2, p0, Lru/fokus/tetrad/MarksActivity$5;->val$idx:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 193
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$5;->this$0:Lru/fokus/tetrad/MarksActivity;

    invoke-static {v0}, Lru/fokus/tetrad/MarksActivity;->access$800(Lru/fokus/tetrad/MarksActivity;)V

    .line 194
    return-void
.end method
