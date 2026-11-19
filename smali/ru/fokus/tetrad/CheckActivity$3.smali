.class Lru/fokus/tetrad/CheckActivity$3;
.super Ljava/lang/Object;
.source "CheckActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$it:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/CheckActivity;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 146
    iput-object p1, p0, Lru/fokus/tetrad/CheckActivity$3;->this$0:Lru/fokus/tetrad/CheckActivity;

    iput-object p2, p0, Lru/fokus/tetrad/CheckActivity$3;->val$it:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$3;->this$0:Lru/fokus/tetrad/CheckActivity;

    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity$3;->this$0:Lru/fokus/tetrad/CheckActivity;

    iget-object v2, p0, Lru/fokus/tetrad/CheckActivity$3;->val$it:Lorg/json/JSONObject;

    invoke-static {v1, v2}, Lru/fokus/tetrad/QuizActivity;->intent(Landroid/app/Activity;Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/CheckActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
