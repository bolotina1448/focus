.class Lru/fokus/tetrad/MarksActivity$1;
.super Ljava/lang/Object;
.source "MarksActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MarksActivity;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MarksActivity;

.field final synthetic val$g:I

.field final synthetic val$r:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MarksActivity;[Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 94
    iput-object p1, p0, Lru/fokus/tetrad/MarksActivity$1;->this$0:Lru/fokus/tetrad/MarksActivity;

    iput-object p2, p0, Lru/fokus/tetrad/MarksActivity$1;->val$r:[Ljava/lang/String;

    iput p3, p0, Lru/fokus/tetrad/MarksActivity$1;->val$g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 95
    .line 97
    :try_start_0
    iget-object v0, p0, Lru/fokus/tetrad/MarksActivity$1;->this$0:Lru/fokus/tetrad/MarksActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/MarksActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lru/fokus/tetrad/MarksActivity$1;->val$r:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lru/fokus/tetrad/MarksActivity$1;->val$r:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v0, v2, v3}, Lru/fokus/tetrad/Mesh;->marks(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v1

    .line 99
    :goto_0
    iget-object v1, p0, Lru/fokus/tetrad/MarksActivity$1;->this$0:Lru/fokus/tetrad/MarksActivity;

    new-instance v3, Lru/fokus/tetrad/MarksActivity$1$1;

    invoke-direct {v3, p0, v0, v2}, Lru/fokus/tetrad/MarksActivity$1$1;-><init>(Lru/fokus/tetrad/MarksActivity$1;Ljava/lang/Exception;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lru/fokus/tetrad/MarksActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 113
    return-void

    .line 97
    :catch_0
    move-exception v0

    move-object v2, v1

    goto :goto_0
.end method
